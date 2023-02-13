package main.login;

import Entity.DipTraoThuong;
import Entity.NopMinhChung;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class themNguoiNhanThuongController implements Initializable {
    public themNguoiNhanThuongController() {
    }

    public void setIdDipTraoThuong(Integer idDipTraoThuong) {
        this.idDipTraoThuong = idDipTraoThuong;
    }

    private Integer idDipTraoThuong;

    public void setTenDipTraoThuong(String tenDipTraoThuong) {
        this.tenDipTraoThuong = tenDipTraoThuong;
    }

    private String tenDipTraoThuong;
    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private String quyen;

    private Integer idNhanKhau;
    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TextField id;

    @FXML
    private TextField minhChung;
    @FXML
    private ChoiceBox<String> nguoiNhan;

    @FXML
    private TextField thanhTich;

    @FXML
    private TextField ten;

    @FXML
    void guiThongTinClicked(MouseEvent event) {
        if(nguoiNhan.getValue().equals("")){
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle(null);
            alert.setHeaderText("Hãy điền đầy đủ thông tin!");
            return;
        }
        Integer idNguoiNhan= Integer.parseInt(nguoiNhan.getValue().split("_")[0]);
        Integer idNguoiNop = idNhanKhau;
        String linkMinhChungStr= minhChung.getText();
        String thanhTichStr= thanhTich.getText();
        NopMinhChung nmc = new NopMinhChung(idNguoiNop,idDipTraoThuong,idNguoiNhan,linkMinhChungStr, Date.valueOf(LocalDate.now()),"Chờ duyệt",null,thanhTichStr);
        Services.themVaoBangNguoiNopMinhChung(nmc);
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
            id.setText(idDipTraoThuong.toString());
            ten.setText(tenDipTraoThuong);
            id.setEditable(false);
            ten.setEditable(false);
            ObservableList<String> danhSach = Services.queryTatCaNhanKhauDeNopMinhChung(quyen,idNhanKhau);
            nguoiNhan.setItems(danhSach);
        });
    }
}
