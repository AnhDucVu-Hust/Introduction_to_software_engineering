package main.login;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.Node;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.fxml.FXMLLoader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginController {
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
                Stage stage = (Stage) node.getScene().getWindow();
                //stage.setMaximized(true);
                stage.close();
                stage.setTitle("Danh sách tài khoản");
                Scene scene = new Scene(FXMLLoader.load(getClass().getResource("Main.fxml")));
                stage.setScene(scene);
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
            iblError.setText("Empty credentials");
            status="Error";
        }
        else if (password.length() < 8){
            status="Error";
            iblError.setText("Enter correct username/password");
        }
        else {
            String sql = "SELECT * FROM taikhoan WHERE taiKhoan = ? and matKhau = ?";
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
                    System.out.println("Login Success!");
                }
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
                status = "Exception";
            }
        }
        return status;
    }

}