package main.login;

import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public class doiMatKhauController {

    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private PasswordField matKhauCu;

    @FXML
    private PasswordField matKhauMoi;

    @FXML
    private TextField taiKhoan;

    @FXML
    private PasswordField xacNhan;

    @FXML
    void guiThongTinClicked(MouseEvent event) {
        String taiKhoanStr = taiKhoan.getText();
        String matKhauCuStr = matKhauCu.getText();
        String matKhauMoiStr = matKhauMoi.getText();
        String xacMinh = xacNhan.getText();
        String sql = "SELECT * FROM taiKhoan WHERE taiKhoan = ? and matKhau = ?";
        Connection conn = MyConnection.conDB();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Đổi mật khẩu");
        try {
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, taiKhoanStr);
            preparedStatement.setString(2, matKhauCuStr);
            resultSet = preparedStatement.executeQuery();
            if (!resultSet.next()) {
                alert.setHeaderText("Sai tên đăng nhập hoặc mật khẩu");
                alert.showAndWait();
            } else if (matKhauMoiStr.length() < 8) {
                alert.setHeaderText("Mật khẩu phải có ít nhất 8 kí tự");
                alert.showAndWait();
            }
            else if (!matKhauMoiStr.equals(xacMinh)) {
                alert.setHeaderText("Xác nhận mật khẩu thất bại");
                alert.showAndWait();
            }
            else {
                Alert alert1 = new Alert(Alert.AlertType.CONFIRMATION);
                alert1.setTitle("Đổi mật khẩu");
                alert1.setHeaderText("Bạn có thực sự muốn đổi mật khẩu?");
                Optional<ButtonType> option = alert1.showAndWait();

                if (option.get() == null) {

                } else if (option.get() == ButtonType.OK) {
                    sql = "UPDATE taikhoan SET matKhau=? WHERE taiKhoan=?";
                    preparedStatement = conn.prepareStatement(sql);
                    preparedStatement.setString(1, matKhauMoiStr);
                    preparedStatement.setString(2, taiKhoanStr);
                    preparedStatement.execute();
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }

    @FXML
    void huyClicked(MouseEvent event) {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }

}
