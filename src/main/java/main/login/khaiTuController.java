package main.login;

import Entity.NhanKhau;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class khaiTuController implements Initializable{
    public void setNhanKhau(NhanKhau nhanKhau) {
        this.nhanKhau = nhanKhau;
    }

    private NhanKhau nhanKhau;

    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TextField idNguoiKhai;

    @FXML
    private TextField idNguoiMat;

    @FXML
    private DatePicker ngayBaoTu;

    @FXML
    private TextField tenNguoiMat;
    @FXML
    private TextField ghiChu;
    @FXML
    void guiThongTinClicked(MouseEvent event) {
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Khai tử");
            alert.setHeaderText("Bạn chắc chắn khai tử cho nhân khẩu này?");
            Optional<ButtonType> option = alert.showAndWait();
            Integer idNguoiKhaiInt = Integer.parseInt(idNguoiKhai.getText());
            LocalDate ngayBaoTuDate = ngayBaoTu.getValue();
            String ghiChuStr=ghiChu.getText().toString();
            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                Connection conn = MyConnection.conDB();
                String query = "UPDATE `nhankhau` SET trangThai='Qua doi' WHERE idNhanKhau = ?;\n" +
                        "INSERT INTO `nhankhauquadoi`\n" +
                        "VALUES (?,?,?,?,?,?) ";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setInt(1, nhanKhau.getId());
                pstmt.setInt(2,nhanKhau.getId());
                pstmt.setInt(3,idNguoiKhaiInt);
                pstmt.setDate(4, Date.valueOf(LocalDate.now()));
                pstmt.setDate(5,Date.valueOf(ngayBaoTuDate));
                pstmt.setString(6,ghiChuStr);
                pstmt.setString(7,"Qua doi");
                pstmt.execute();
            } else if (option.get() == ButtonType.CANCEL) {

            }
        } catch (SQLException ex) {
            Logger.getLogger(themNhanKhauController.class.getName()).log(Level.SEVERE,null,ex);
        }
    }

    @FXML
    void huyClicked(MouseEvent event) {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        idNguoiMat.setText(nhanKhau.getId().toString());
        tenNguoiMat.setText(nhanKhau.getHoTen());
        idNguoiMat.setEditable(false);
        tenNguoiMat.setEditable(false);

    }
}
