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
import javafx.scene.text.Text;
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

    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }
    private int idNhanKhau;
    @FXML
    private javafx.scene.text.Text loginID;
    @FXML
    private javafx.scene.text.Text loginTen;
    @FXML
    private Text loginQuyen;
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
    private Button btnThemNK;

    @FXML
    private Button btnXoa;

    @FXML
    private Button dangXuat;

    @FXML
    private TextField diaChi;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField hoTenChuHo;

    @FXML
    private TextField idHoKhau;

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
    void dangXuatClicked(MouseEvent event) throws  IOException {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Đăng xuất");
        alert.setHeaderText("Bạn có thực sự muốn đăng xuất?");
        Optional<ButtonType> option = alert.showAndWait();

        if (option.get() == null) {

        } else if (option.get() == ButtonType.OK) {
            Node node = (Node) event.getSource();
            Stage stage = (Stage) node.getScene().getWindow();
            Scene scene = new Scene(FXMLLoader.load(getClass().getResource("login.fxml")));
            stage.setScene(scene);
            stage.show();
        }
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
        controller.setIdNhanKhau(idNhanKhau);
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
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
    }
    @FXML
    void phanThuongClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainPhanThuong.fxml"));
        Parent mainPT = loader.load();
        mainPhanThuongController controller = loader.getController();
        controller.setIdNhanKhau(idNhanKhau);
        controller.setQuyen(quyen);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
    }
    @FXML
    void thongKeClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainThongKe.fxml"));
        Parent mainPT = null;
        try {
            mainPT = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainThongKeController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
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
        controller.setIdNhanKhau(idNhanKhau);
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
            HoKhauNhanKhau nk = tbHoKhau.getSelectionModel().getSelectedItem();
            if(nk!=null){
                Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                alert.setTitle("Tách khẩu");
                alert.setHeaderText("Bạn có thực sự muốn tách khẩu ?");
                Optional<ButtonType> option = alert.showAndWait();

                if (option.get() == null) {

                } else if (option.get() == ButtonType.OK) {
                    Connection conn = MyConnection.conDB();
                    String query = "DELETE from `nhankhau_hokhau` WHERE idHoKhau=" + nk.getIdHoKhau() + " AND idNhanKhau="+ nk.getIdNhanKhau();
                    PreparedStatement preparedStatement = conn.prepareStatement(query);
                    preparedStatement.execute();
                    refreshTable();
                    tbID.setCellValueFactory(new PropertyValueFactory<>("idNhanKhau"));
                    tbHoTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
                    tbCccd.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
                    tbQuanHeChuHo.setCellValueFactory(new PropertyValueFactory<>("quanHeChuHo"));
                } else if (option.get() == ButtonType.CANCEL) {

                }
            } else{
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Tách khẩu");
                alert.setHeaderText("Chưa chọn nhân khẩu để tách!");
                alert.showAndWait();
            }
        } catch (SQLException ex) {
            //Logger.getLogger(themNhanKhauController.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    @FXML
    void chuyenKhauClicked(MouseEvent event) throws  IOException{
        HoKhauNhanKhau nk=tbHoKhau.getSelectionModel().getSelectedItem();
        if(nk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/chuyenKhau.fxml"));
            Parent mainHK = loader.load();
            chuyenKhauController controller = loader.getController();
            controller.setNk(nk);
            Stage stage = new Stage();
            stage.setScene(new Scene(mainHK));
            stage.show();
        } else{
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Tách khẩu");
            alert.setHeaderText("Chưa chọn nhân khẩu để chuyển!");
            alert.showAndWait();
        }
    }
    @FXML
    void quayLaiClicked(MouseEvent event) throws  IOException{
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainHoKhau.fxml"));
        Parent mainHK = loader.load();
        mainHoKhauController controller = loader.getController();
        controller.setIdNhanKhau(idNhanKhau);
        controller.setQuyen(quyen);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
    }
    public void refreshTable(){
        Connection conn = MyConnection.conDB();
        String query = "SELECT nk.idNhanKhau, hoTen,cmnd_cccd,quanHeChuHo\n" +
                "FROM nhankhau_hokhau nkhk, nhankhau nk\n" +
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
    @FXML
    void themNKClicked(MouseEvent e) throws IOException{
        try {
            Node node = (Node) e.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/themNhanKhauVaoHoKhau.fxml"));
            Parent mainHK = loader.load();
            themNhanKhauVaoHoKhauController controller = loader.getController();
            controller.setIdNhanKhau(idNhanKhau);
            controller.setQuyen(quyen);
            controller.setHk(hokhau);
            Stage stage = (Stage) node.getScene().getWindow();
            stage.setScene(new Scene(mainHK));
            stage.show();
        } catch(Exception ex){
            System.out.println(ex.getMessage());
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
            idHoKhau.setText(hokhau.getIdHoKhau().toString());
            ngayCap.setValue(hokhau.getNgayTao().toLocalDate());
            if (quyen.equals("Tổ trưởng")) btnThemNK.setVisible(true);
            else btnThemNK.setVisible(false);
            hoTenChuHo.setText(Services.queryNhanKhauTheoId(hokhau.getIdChuHo()).getHoTen());
            String diachi= hokhau.getTinhThanhPho()+"-"+hokhau.getQuanHuyen()+"-"+hokhau.getPhuongXa()+hokhau.getDiaChi();
            diaChi.setText(diachi);
            loginID.setText("ID: "+idNhanKhau);
            loginTen.setText("Tên: "+ Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
            loginQuyen.setText("Quyền: "+quyen);

        });
        }

}

