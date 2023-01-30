package main.login;

import Entity.PhanThuong;
import Service.Services;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class danhSachLoaiQuaController implements Initializable {

    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TableColumn<PhanThuong, String> tbGhiChu;

    @FXML
    private TableColumn<PhanThuong,Integer> tbGiaTri;

    @FXML
    private TableColumn<PhanThuong, Integer> tbID;

    @FXML
    private TableView<PhanThuong> tbQua;

    @FXML
    private TableColumn<PhanThuong, String> tbTen;

    @FXML
    void guiThongTinClicked(MouseEvent event) {

    }
    @FXML
    void huyClicked(MouseEvent event){
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ObservableList<PhanThuong> phanThuongs = Services.queryTatcaPhanThuong();
        tbQua.setItems(phanThuongs);
        tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
        tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
        tbGiaTri.setCellValueFactory(new PropertyValueFactory<>("giaTri"));
        tbGhiChu.setCellValueFactory(new PropertyValueFactory<>("ghiChu"));
    }
}
