package main.login;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.Node;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.fxml.FXMLLoader;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class LoginController implements Initializable {
    private int idNhanKhau;
    private String quyen;
    @FXML
    private TextField txtUser;
    @FXML
    private Label iblError;
    @FXML
    private PasswordField txtPass;
    @FXML
    private Button btnLogin;
    @FXML
    protected void handleButtonAction(MouseEvent event) throws IOException {
        if (event.getSource() == btnLogin){
            if (logIN()=="Success") {
                Node node = (Node) event.getSource();
                FXMLLoader loader = new FXMLLoader();
                loader.setLocation(getClass().getResource("/main/login/mainNhanKhau.fxml"));
                Parent mainNK = null;
                try {
                    mainNK = loader.load();
                } catch (IOException ex) {
                    throw new RuntimeException(ex);
                }
                mainNhanKhauController controller = loader.getController();
                controller.setQuyen(quyen);
                controller.setIdNhanKhau(idNhanKhau);
                Stage stage = (Stage) node.getScene().getWindow();
                stage.setScene(new Scene(mainNK));
                stage.show();
            }
        }
    }
    private String logIN(){
        String status;
        String email=txtUser.getText().toString();
        String password=txtPass.getText().toString();
        Connection conn = MyConnection.conDB();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        if (email.isEmpty() || password.isEmpty()) {
            iblError.setText("Bạn chưa nhập đầy đủ thông tin!");
            status="Error";
        }
        else if (password.length() < 8){
            status="Error";
            iblError.setText("Sai tên đăng nhập hoặc mật khẩu!");
        }
        else {
            String sql = "SELECT * FROM taiKhoan WHERE taiKhoan = ? and matKhau = ?";
            status = "Success";
            try {
                preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);
                resultSet = preparedStatement.executeQuery();
                if (!resultSet.next()) {
                    System.out.println("Login Fail!");
                    status = "Error";
                } else {
                    quyen=resultSet.getString("quyen");
                    System.out.println("Login Success!");
                    idNhanKhau=resultSet.getInt("idNhanKhau");
                }
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
                status = "Exception";
                iblError.setText("Sai tên đăng nhập hoặc mật khẩu");
            }
        }
        return status;
    }

    @FXML
    public void dangNhapEntered(KeyEvent event){
        if(event.getCode().equals(KeyCode.ENTER)){
            if (logIN()=="Success") {
                Node node = (Node) event.getSource();
                FXMLLoader loader = new FXMLLoader();
                loader.setLocation(getClass().getResource("/main/login/mainNhanKhau.fxml"));
                Parent mainNK = null;
                try {
                    mainNK = loader.load();
                } catch (IOException ex) {
                    throw new RuntimeException(ex);
                }
                mainNhanKhauController controller = loader.getController();
                controller.setQuyen(quyen);
                controller.setIdNhanKhau(idNhanKhau);
                Stage stage = (Stage) node.getScene().getWindow();
                stage.setScene(new Scene(mainNK));
                stage.show();
            }
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}