package main.login;

import Entity.HoKhauNhanKhau;
import Entity.NhanKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.beans.Observable;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Date;
import java.util.ResourceBundle;

public class chuyenKhauController implements Initializable {
    public void setNk(HoKhauNhanKhau nk) {
        this.nk = nk;
    }

    private HoKhauNhanKhau nk;
    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private ChoiceBox<String> hoKhauChuyen;

    @FXML
    private TextField id;

    @FXML
    private DatePicker ngayChuyen;

    @FXML
    private TextField ten;
    @FXML
    private TextField ghiChu;
    @FXML
    void guiThongTinClicked(MouseEvent event) {
        Integer idHoKhauCu=nk.getIdHoKhau();
        Integer idNhanKhau=nk.getIdNhanKhau();
        Integer idHoKhauMoi=Integer.parseInt(hoKhauChuyen.getValue().split("_")[0]);
        Date ngayChuyenDate= Date.valueOf(ngayChuyen.getValue());
        String ghiChuStr=ghiChu.getText();
        Services.chuyenKhau(idNhanKhau,idHoKhauCu,idHoKhauMoi,ngayChuyenDate,ghiChuStr);


        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }

    @FXML
    void huyClicked(MouseEvent event) {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() -> {
            id.setText(nk.getIdNhanKhau().toString());
            ten.setText(nk.getHoTen());
            id.setEditable(false);
            ten.setEditable(false);
            hoKhauChuyen.setItems(Services.queryfullHoKhau());
        });
    }
}
