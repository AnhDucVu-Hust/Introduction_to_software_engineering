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
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class tamVangController implements Initializable {
    public void setNhanKhau(NhanKhau nhanKhau) {
        this.nhanKhau = nhanKhau;
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
    private DatePicker ngayVe;

    @FXML
    private DatePicker ngayDi;

    @FXML
    private TextField noiTamTru;

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
            Date ngayVeDate=Date.valueOf(ngayVe.getValue());
            Date ngayDiDate=Date.valueOf(ngayDi.getValue());
            String noiTamTrustr=noiTamTru.getText().toString();
            String lidoStr=liDo.getText().toString();
            Integer idHoKhauInt= Services.queryIdHoKhauCuaNhanKhau(nhanKhau.getId());
            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                Connection conn = MyConnection.conDB();
                String query = "UPDATE `nhankhau` SET trangThai='Qua doi' WHERE idNhanKhau = ?;\n" +
                        "INSERT INTO `nhankhautamvang`\n" +
                        "VALUES (?,?,?,?,?,?,?) ; ";
                PreparedStatement pstmt = conn.prepareStatement(query);

                pstmt.setInt(1, nhanKhau.getId());
                pstmt.setInt(2,idHoKhauInt);
                pstmt.setInt(3,nhanKhau.getId());
                pstmt.setString(4, noiTamTrustr);
                pstmt.setDate(5,ngayDiDate);
                pstmt.setDate(6,ngayVeDate);
                pstmt.setString(7,lidoStr);
                pstmt.setString(8,"Tam vang");
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
        Platform.runLater(()->
        {
            id.setText(nhanKhau.getId().toString());
            ten.setText(nhanKhau.getHoTen());
            id.setEditable(false);
            ten.setEditable(false);
        });
    }
}
