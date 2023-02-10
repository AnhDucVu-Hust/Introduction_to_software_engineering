package main.login;

import Entity.HoKhau;
import Entity.HoKhauNhanKhau;
import Entity.NhanKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;
import java.util.ResourceBundle;

public class xemChiTietHoKhauController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    public void setIdNhanKhauAccount(int idNhanKhauAccount) {
        this.idNhanKhauAccount = idNhanKhauAccount;
    }

    private String quyen;
    private int idNhanKhauAccount;

    private HoKhau hokhau;
    public void set_hk(HoKhau hk){
        this.hokhau=hk;
    }
    @FXML
    private HBox barHK;

    @FXML
    private Button btnChiTiet;

    @FXML
    private Button btnSua;

    @FXML
    private Button btnThem;

    @FXML
    private Button btnXoa;

    @FXML
    private Button dangXuat;

    @FXML
    private Label diaChi;

    @FXML
    private Button hoKhau;

    @FXML
    private Label hoTenChuHo;

    @FXML
    private Label idHoKhau;

    @FXML
    private DatePicker ngayCap;

    @FXML
    private Button nhanKhau;

    @FXML
    private Button phanThuong;

    @FXML
    private TableColumn<HoKhauNhanKhau, String> tbCccd;

    @FXML
    private TableColumn<HoKhauNhanKhau, String> tbQuanHeChuHo;

    @FXML
    private TableView<HoKhauNhanKhau> tbHoKhau;

    @FXML
    private TableColumn<HoKhauNhanKhau, String> tbHoTen;
    @FXML
    private TableColumn<HoKhauNhanKhau, String> tbID;
    @FXML
    private Button thongKe;
    @FXML
    private Button btnTachKhau;
    @FXML
    private Button btnChuyenKhau;
    @FXML
    private Button btnQuayLai;

    @FXML
    void dangXuatClicked(MouseEvent event) {

    }


    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainNhanKhau.fxml"));
        Parent mainNK = null;
        try {
            mainNK = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainNhanKhauController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhauAccount);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainNK));
        stage.show();
    }
    @FXML
    void hoKhauClicked(MouseEvent event) throws  IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainHoKhau.fxml"));
        Parent mainHK = null;
        try {
            mainHK = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainHoKhauController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhauAccount);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
    }
    @FXML
    void phanThuongClicked(MouseEvent event) {

    }
    @FXML
    void thongKeClicked(MouseEvent event) {

    }
    @FXML
    void suaClicked(MouseEvent event) {

    }

    @FXML
    void themHoKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/themHoKhau.fxml"));
        Parent themHoKhau = loader.load();
        themHoKhauController controller = loader.getController();
        controller.setIdNhanKhauAccount(idNhanKhauAccount);
        controller.setQuyen(quyen);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(themHoKhau));
        stage.show();
    }

    @FXML
    void xemChiTietClicked(MouseEvent event) {

    }

    @FXML
    void xoaClicked(MouseEvent event) {

    }
    @FXML
    void tachKhauClicked(MouseEvent event){
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Tách khẩu");
            alert.setHeaderText("Bạn có thực sự muốn tách khẩu ?");
            Optional<ButtonType> option = alert.showAndWait();

            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                HoKhauNhanKhau nk = tbHoKhau.getSelectionModel().getSelectedItem();
                Connection conn = MyConnection.conDB();
                String query = "DELETE from `nhankhau_hokhau` WHERE idHoKhau=" + nk.getIdHoKhau() + "AND idNhanKhau="+ nk.getIdNhanKhau();
                PreparedStatement preparedStatement = conn.prepareStatement(query);
                preparedStatement.execute();
                refreshTable();
                tbID.setCellValueFactory(new PropertyValueFactory<>("idNhanKhau"));
                tbHoTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
                tbCccd.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
                tbQuanHeChuHo.setCellValueFactory(new PropertyValueFactory<>("quanHeChuHo"));
            } else if (option.get() == ButtonType.CANCEL) {

            }
        } catch (SQLException ex) {
            //Logger.getLogger(themNhanKhauController.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    @FXML
    void chuyenKhauClicked(MouseEvent event){

    }
    @FXML
    void quayLaiClicked(MouseEvent event) throws  IOException{
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("mainHoKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }
    public void refreshTable(){
        Connection conn = MyConnection.conDB();
        String query = "SELECT idNhanKhau, hoTen,cmnd_cccd,quanHeChuHo\n" +
                "FROM `nhankhau_hokhau` nkhk, `nhankhau` nk\n" +
                "where nkhk.idNhanKhau=nk.idNhanKhau \n" +
                "and nkhk.idHoKhau="+hokhau.getIdHoKhau();
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<HoKhauNhanKhau> chitietHK = FXCollections.observableArrayList();
            while (resultSet.next()) {
                chitietHK.add(new HoKhauNhanKhau(hokhau.getIdHoKhau(),
                        resultSet.getInt("idNhanKhau"),
                        resultSet.getString("hoTen"),
                        resultSet.getString("cmnd_cccd"),
                        resultSet.getString("quanHeChuHo")
                ));

                tbHoKhau.setItems(chitietHK);
            }
            pstmt.close();
            resultSet.close();
        } catch (SQLException ex){

        }
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()-> {
            refreshTable();
            tbID.setCellValueFactory(new PropertyValueFactory<>("idNhanKhau"));
            tbHoTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
            tbCccd.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
            tbQuanHeChuHo.setCellValueFactory(new PropertyValueFactory<>("quanHeChuHo"));
        });
        }

}

