package main.login;

import Entity.NhanKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Optional;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class chuyenDiController implements Initializable {
    public void setNhanKhau(NhanKhau nk) {
        this.nhanKhau = nk;
    }

    private NhanKhau nhanKhau;

    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TextField id;

    @FXML
    private TextField liDo;

    @FXML
    private DatePicker ngayChuyen;

    @FXML
    private TextField noiChuyen;

    @FXML
    private TextField ten;
    @FXML
    private TextField ghiChu;
    @FXML
    void guiThongTinClicked(MouseEvent event) {
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Chuyển nhân khẩu");
            alert.setHeaderText("Bạn chắc chắn khai báo chuyển đoi cho nhân khẩu này?");
            Optional<ButtonType> option = alert.showAndWait();
            Integer idNguoiKhaiInt = Integer.parseInt(id.getText());
            if(ngayChuyen.getValue()==null){
                alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Bạn hãy điền đầy đủ thông tin!");
                alert.showAndWait();
                return;
            }
            Date ngayChuyenDate=Date.valueOf(ngayChuyen.getValue());
            String noiChuyenStr=noiChuyen.getText().toString();
//            String ghiChuStr=ghiChu.getText().toString();
            Integer idHoKhauInt= Services.queryIdHoKhauCuaNhanKhau(nhanKhau.getId());
            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                Connection conn = MyConnection.conDB();
                String query = "UPDATE `nhankhau` \n" +
                        "SET trangThai='Chuyển đi_Chờ duyệt' \n" +
                        "WHERE idNhanKhau = ?; \n";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setInt(1, nhanKhau.getId());
                pstmt.execute();
                String query1="INSERT INTO nhankhauchuyen (idNhanKhau,ngayChuyen, noiChuyenDen,ghiChu,trangThai)\n" +
                        "VALUES (?,?,?,?,?) ;";
                pstmt=conn.prepareStatement(query1);
                pstmt.setInt(1,nhanKhau.getId());
                pstmt.setDate(2,ngayChuyenDate);
                pstmt.setString(3, noiChuyenStr);
                pstmt.setString(4,"");
                pstmt.setString(5,"Chờ duyệt");
                pstmt.execute();
                Alert alert1 = new Alert(Alert.AlertType.INFORMATION);
                alert1.setContentText("Đã khai báo chuyển nhân khẩu thành công");
                alert1.showAndWait();
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();;
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
        stage.close();;
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() -> {
            id.setText(nhanKhau.getId().toString());
            ten.setText(nhanKhau.getHoTen());
            id.setEditable(false);
            ten.setEditable(false);
        });
    }
}
