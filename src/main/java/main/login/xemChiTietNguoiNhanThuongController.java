package main.login;

import Entity.NopMinhChung;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class xemChiTietNguoiNhanThuongController implements Initializable {
    public void setNmc(NopMinhChung nmc) {
        this.nmc = nmc;
    }

    private NopMinhChung nmc;

    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TextField id;

    @FXML
    private TextField linkMinhChung;

    @FXML
    private DatePicker ngayDangKy;

    @FXML
    private TextField phanThuong;

    @FXML
    private TextField thanhTich;

    @FXML
    private TextField trangThai;


    @FXML
    void huyClicked(MouseEvent event) {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        stage.close();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()->{
            id.setText(nmc.getIdNguoiNhan().toString());
            ngayDangKy.setValue(nmc.getNgayDangKy().toLocalDate());
            linkMinhChung.setText(nmc.getLinkMinhChung());
            thanhTich.setText(nmc.getThanhTich());
            phanThuong.setText(nmc.getPhanThuong());
            trangThai.setText(nmc.getTrangThai());
            id.setEditable(false);
            ngayDangKy.setEditable(false);
            linkMinhChung.setEditable(false);
            trangThai.setEditable(false);
            thanhTich.setEditable(false);
            phanThuong.setEditable(false);
        });

    }
}
