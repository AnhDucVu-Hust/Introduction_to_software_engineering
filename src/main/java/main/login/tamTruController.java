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

public class tamTruController implements Initializable {
    public void setNk(NhanKhau nk) {
        this.nk = nk;
    }

    private NhanKhau nk;

    public Integer getIdNhanKhauLogin() {
        return idNhanKhauLogin;
    }

    public void setIdNhanKhauLogin(Integer idNhanKhauLogin) {
        this.idNhanKhauLogin = idNhanKhauLogin;
    }

    public String getQuyen() {
        return quyen;
    }

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private Integer idNhanKhauLogin;
    private String quyen;
    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TextField id;

    @FXML
    private TextField liDo;

    @FXML
    private DatePicker ngayDen;

    @FXML
    private DatePicker ngayDi;

    @FXML
    private TextField noiTamTru;

    @FXML
    private TextField noiThuongTru;

    @FXML
    private TextField ten;

    @FXML
    void guiThongTinClicked(MouseEvent event) {
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Khai báo tạm vắng");
            alert.setHeaderText("Bạn chắc chắn khai báo tạm vắng cho nhân khẩu này?");
            Optional<ButtonType> option = alert.showAndWait();
            Integer idNguoiKhaiInt = Integer.parseInt(id.getText());
            if(ngayDen.getValue()==null || ngayDi.getValue()==null){
                alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Bạn hãy điền đầy đủ thông tin!");
                alert.showAndWait();
                return;
            }
            Date ngayDenDate=Date.valueOf(ngayDen.getValue());
            Date ngayDiDate=Date.valueOf(ngayDi.getValue());
            String noiTamTrustr=noiTamTru.getText().toString();
            String lidoStr=liDo.getText().toString();
            Integer idHoKhauInt= Services.queryIdHoKhauCuaNhanKhau(nk.getId());
            String noiThuongTruStr=noiThuongTru.getText().toString();


            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                Connection conn = MyConnection.conDB();
                String query = "UPDATE `nhankhau` \n" +
                        "SET trangThai='Tạm trú_Chờ duyệt' \n" +
                        "WHERE idNhanKhau = ?; \n";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setInt(1, nk.getId());
                pstmt.execute();
                String query1="INSERT INTO `nhankhautamtru` (idNhanKhau, noiThuongTru, noiTamTru,tuNgay, denNgay, lyDo, trangThai)\n" +
                        "VALUES (?,?,?,?,?,?,?) ;";
                pstmt=conn.prepareStatement(query1);
                pstmt.setInt(1,nk.getId());
                pstmt.setString(2,noiThuongTruStr);
                pstmt.setString(3, noiTamTrustr);
                pstmt.setDate(4,ngayDenDate);
                pstmt.setDate(5,ngayDiDate);
                pstmt.setString(6,lidoStr);
                pstmt.setString(7,"Chờ duyệt");
                pstmt.execute();
                Node node = (Node) event.getSource();
                Stage stage = (Stage) node.getScene().getWindow();
                stage.close();;
            } else if (option.get() == ButtonType.CANCEL) {

            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
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
        Platform.runLater(()->{
            id.setText(nk.getId().toString());
            ten.setText(nk.getHoTen());
            id.setEditable(false);
            ten.setEditable(false);
        });
    }
}
