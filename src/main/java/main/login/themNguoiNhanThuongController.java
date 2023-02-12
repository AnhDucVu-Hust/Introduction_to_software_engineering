package main.login;

import Entity.DipTraoThuong;
import Entity.NopMinhChung;
import Service.Services;
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
import java.time.LocalDate;
import java.util.ResourceBundle;

public class themNguoiNhanThuongController implements Initializable {
    public void setDipTraoThuong(DipTraoThuong dipTraoThuong) {
        this.dipTraoThuong = dipTraoThuong;
    }

    private DipTraoThuong dipTraoThuong;

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
        Integer idNguoiNhan= Integer.parseInt(nguoiNhan.getValue().split("_")[0]);
        Integer idNguoiNop = idNhanKhau;
        Integer idDip = dipTraoThuong.getIdDip();
        String linkMinhChungStr= minhChung.getText();
        String thanhTichStr= thanhTich.getText();
        NopMinhChung nmc = new NopMinhChung(idNguoiNop,idDip,idNguoiNhan,linkMinhChungStr, Date.valueOf(LocalDate.now()),"Chờ duyệt",null,thanhTichStr);
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
        id.setText(dipTraoThuong.getIdDip().toString());
        ten.setText(dipTraoThuong.getTenDip());
        id.setEditable(false);
        ten.setEditable(false);
        ObservableList<String> danhSach = Services.queryTatCaNhanKhauDeNopMinhChung(quyen,idNhanKhau);
        nguoiNhan.setItems(danhSach);
    }
}
