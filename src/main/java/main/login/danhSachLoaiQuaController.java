package main.login;

import Entity.NopMinhChung;
import Entity.PhanThuong;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.ObservableList;
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
import java.util.ResourceBundle;

public class danhSachLoaiQuaController implements Initializable {
    public void setNmc(NopMinhChung nmc) {
        this.nmc = nmc;
    }

    private NopMinhChung nmc;

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private String quyen;

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
        if (quyen.equals("Tổ trưởng")){
        PhanThuong loaiqua=tbQua.getSelectionModel().getSelectedItem();
        if (loaiqua==null){
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Bạn chưa chọn phần thưởng");
            alert.showAndWait();
        }
        else{
            Services.chonPhanThuong(nmc,loaiqua.getId());
            }
        }
        else {
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Bạn không đủ thẩm quyền");
            alert.showAndWait();
        }
    }


    @FXML
    void huyClicked(MouseEvent event){
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()->{
            tbQua.getSelectionModel().setSelectionMode(
                    SelectionMode.MULTIPLE
            );
            ObservableList<PhanThuong> phanThuongs = Services.queryTatcaPhanThuong();
            tbQua.setItems(phanThuongs);
            tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("ten"));
            tbGiaTri.setCellValueFactory(new PropertyValueFactory<>("giaTri"));
            tbGhiChu.setCellValueFactory(new PropertyValueFactory<>("ghiChu"));
        });

    }
}
