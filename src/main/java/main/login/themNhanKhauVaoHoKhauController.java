package main.login;

import Entity.HoKhau;
import Entity.HoKhauNhanKhau;
import Entity.NhanKhau;
import Service.Services;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class themNhanKhauVaoHoKhauController implements Initializable {
    public void setHk(HoKhau hk) {
        this.hk = hk;
    }

    public void setIdNhanKhau(Integer idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private Integer idNhanKhau;
    private String quyen;
    private HoKhau hk;
    @FXML
    private Button btnGuiThongTin;

    @FXML
    private Button btnHuy;

    @FXML
    private TextField idHoKhau;


    @FXML
    private TextField quanHe;

    @FXML
    private TableView<NhanKhau>  tbNhanKhau;
    @FXML
    private TableColumn<NhanKhau,Integer> tbID;
    @FXML
    private TableColumn<NhanKhau,String> tbTen;
    @FXML
    private TableColumn<NhanKhau,Integer> tbCMND;

    @FXML
    void guiThongTinClicked(MouseEvent event) {
        NhanKhau nk = tbNhanKhau.getSelectionModel().getSelectedItem();
        if (nk!=null){
            String quanHeVoiChuHo=quanHe.getText();
            HoKhauNhanKhau hknk = new HoKhauNhanKhau(hk.getIdHoKhau(),nk.getId(), nk.getHoTen(), nk.getCmnd_cccd(),quanHeVoiChuHo);
            Services.themVaoBangNhanKhauHoKhau(hknk);

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
        idHoKhau.setText(hk.getIdHoKhau().toString());
        Connection conn = MyConnection.conDB();
        String query;
        if (quyen.equals("Tổ trưởng"))  query = "SELECT * from `nhankhau`";
        else {
            query = "select * from nhankhau,nhankhau_hokhau\n" +
                    "WHERE idHoKhau="+Services.queryIdHoKhauCuaNhanKhau(idNhanKhau)+ " and nhankhau.idNhanKhau=nhankhau_hokhau.idNhanKhau";
        }
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<NhanKhau> nhanKhaus = FXCollections.observableArrayList();
            while (resultSet.next()) {
                nhanKhaus.add(new NhanKhau(resultSet.getInt("idNhanKhau"),
                        resultSet.getString("hoTen"),
                        resultSet.getDate("ngaySinh"),
                        resultSet.getString("biDanh"),
                        resultSet.getString("noiSinh"),
                        resultSet.getString("gioiTinh"),
                        resultSet.getString("nguyenQuan"),
                        resultSet.getString("danToc"),
                        resultSet.getString("tonGiao"),
                        resultSet.getString("quocTich"),
                        resultSet.getString("ngheNghiep"),
                        resultSet.getString("noiLamViec"),
                        resultSet.getString("cmnd_cccd"),
                        resultSet.getDate("chuyenDenNgay"),
                        resultSet.getString("noiThuongTruTruoc"),
                        resultSet.getString("trangThai")
                ));
                tbNhanKhau.setItems(nhanKhaus);
            }
            pstmt.close();
            resultSet.close();
            tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
            tbCMND.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
        } catch (SQLException ex) {
        }

    }
}
