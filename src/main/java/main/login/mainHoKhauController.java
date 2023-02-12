package main.login;

import Entity.HoKhau;
import Entity.NhanKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.Parent;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.security.Key;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;
import java.util.ResourceBundle;

public class mainHoKhauController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }
    private int idNhanKhau;
    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    private String quyen;



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
    private Button hoKhau;

    @FXML
    private VBox menuPane;

    @FXML
    private Button nhanKhau;


    @FXML
    private Button phanThuong;


    @FXML
    private Button thongKe;
    @FXML
    private TableColumn<HoKhau, String> tbNgayTao;

    @FXML
    private TableColumn<HoKhau, String> tbDiaChi;

    @FXML
    private TableView<HoKhau> tbHoKhau;

    @FXML
    private TableColumn<HoKhau, Integer> tbIDChuHo;

    @FXML
    private TableColumn<HoKhau,Integer> tbIDHoKhau;
    @FXML
    void dangXuatClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("login.fxml")));
        stage.setScene(scene);
        stage.show();
    }

    @FXML
    void hoKhauClicked(MouseEvent event) {

    }

    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException {
        System.out.println("Ho khau"+ quyen);
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
        System.out.println(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainNK));
        stage.show();
    }

    @FXML
    void phanThuongClicked(MouseEvent event) throws  IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainPhanThuong.fxml"));
        Parent mainPT = null;
        try {
            mainPT = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        mainPhanThuongController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainPT));
        stage.show();
    }

    @FXML
    void suaClicked(MouseEvent event) throws IOException{
        HoKhau hk=tbHoKhau.getSelectionModel().getSelectedItem();
        if (hk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/suaHoKhau.fxml"));
            Parent suaHoKhau = loader.load();
            suaHoKhauController controller = loader.getController();
            controller.set_hokhau(hk);
            controller.setIdNhanKhauAccount(idNhanKhau);
            controller.setQuyen(quyen);
            Stage stage = (Stage) node.getScene().getWindow();
            stage.setScene(new Scene(suaHoKhau));
            stage.show();
        }
        else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Chưa hộ khẩu nào được chọn để sửa");
            alert.showAndWait();
        }
    }

    @FXML
    void themHoKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/themHoKhau.fxml"));
        Parent themHoKhau = loader.load();
        themHoKhauController controller = loader.getController();
        controller.setIdNhanKhauAccount(idNhanKhau);
        controller.setQuyen(quyen);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(themHoKhau));
        stage.show();
    }

    @FXML
    void thongKeClicked(MouseEvent event) {

    }
    @FXML
    private TextField search;
    @FXML
    void timKiem(KeyEvent e){
        search.setOnAction(actionEvent -> {
            try {
                if (e.getCode().equals(KeyCode.ENTER)) {
                    String tuKhoa = search.getText().toString();
                    System.out.println(tuKhoa);
                    Connection conn = MyConnection.conDB();
                    String query = "SELECT * FROM `hokhau`\n" +
                            "WHERE idHoKhau=" + tuKhoa + "\n" +
                            "OR idChuHo=" + tuKhoa + "\n" +
                            "OR ngayTao=" + tuKhoa;
                    if (quyen=="To truong") query="SELECT * FROM `hokhau`\n" +
                            "WHERE idHoKhau=" + tuKhoa + "\n" +
                            "OR idChuHo=" + tuKhoa + "\n" +
                            "OR ngayTao=" + tuKhoa;
                    PreparedStatement preparedStatement = conn.prepareStatement(query);
                    ResultSet resultSet = preparedStatement.executeQuery();
                    ObservableList<HoKhau> hoKhaus = FXCollections.observableArrayList();
                    while (resultSet.next()) {
                        String diachi = resultSet.getString("diaChi") + "-" + resultSet.getString("phuongXa") + "-" + resultSet.getString("quanHuyen") + "-" + resultSet.getString("tinhThanhPho");
                        hoKhaus.add(new HoKhau(resultSet.getInt("idHoKhau"),
                                resultSet.getInt("idChuHo"),
                                resultSet.getString("tinhThanhPho"),
                                resultSet.getString("quanHuyen"),
                                resultSet.getString("phuongXa"),
                                diachi,
                                resultSet.getDate("ngayCap"),
                                resultSet.getString("trangThai")
                        ));
                    }
                    tbHoKhau.setItems(hoKhaus);
                    tbIDHoKhau.setCellValueFactory(new PropertyValueFactory<>("idHoKhau"));
                    tbIDChuHo.setCellValueFactory(new PropertyValueFactory<>("idChuHo"));
                    tbDiaChi.setCellValueFactory(new PropertyValueFactory<>("diaChi"));
                    tbNgayTao.setCellValueFactory(new PropertyValueFactory<>("ngayTao"));
                }
            } catch (SQLException ex) {

        }
        });
    }
    @FXML
    void xemChiTietClicked(MouseEvent event) throws IOException {
        HoKhau hk=tbHoKhau.getSelectionModel().getSelectedItem();
        if (hk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/xemChiTietHoKhau.fxml"));
            Parent xemChiTiet = loader.load();
            xemChiTietHoKhauController controller = loader.getController();
            controller.set_hk(hk);
            controller.setQuyen(quyen);
            controller.setIdNhanKhauAccount(idNhanKhau);
            Stage stage = (Stage) node.getScene().getWindow();
            stage.setScene(new Scene(xemChiTiet));
            stage.show();
        }
        else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Chưa hộ khẩu nào được chọn để xem");
            alert.showAndWait();
        }

    }

    @FXML
    void xoaClicked(MouseEvent event) {
        try {
            HoKhau hk = tbHoKhau.getSelectionModel().getSelectedItem();
            if(hk!=null) {
                Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                alert.setTitle("Xóa hộ khẩu");
                alert.setHeaderText("Bạn có thực sự muốn xóa hộ khẩu này ?");
                alert.setContentText("Việc xóa hộ khẩu sẽ làm mất tất cả các dữ liệu liên quan đến hộ khẩu.");
                Optional<ButtonType> option = alert.showAndWait();

                if (option.get() == null) {

                } else if (option.get() == ButtonType.OK) {
                    Connection conn = MyConnection.conDB();
                    String query = "DELETE from `hokhau` WHERE idHoKhau=" + hk.getIdHoKhau();
                    PreparedStatement preparedStatement = conn.prepareStatement(query);
                    preparedStatement.execute();
                    refreshTable();
                    tbIDHoKhau.setCellValueFactory(new PropertyValueFactory<>("idHoKhau"));
                    tbIDChuHo.setCellValueFactory(new PropertyValueFactory<>("idChuHo"));
                    tbNgayTao.setCellValueFactory(new PropertyValueFactory<>("ngayCap"));
                    tbDiaChi.setCellValueFactory(new PropertyValueFactory<>("diaChi"));
                } else if (option.get() == ButtonType.CANCEL) {

                }
            } else{
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Chưa hộ khẩu nào được chọn để xóa!");
                alert.showAndWait();
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            //Logger.getLogger(themNhanKhauController.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    private void refreshTable() {
        Connection conn = MyConnection.conDB();
        String query;
        if(quyen.equals("Tổ trưởng"))  query = "SELECT * from `hoKhau`";
        else {
            query="SELECT * FROM hokhau where idHoKhau=" +Services.queryIdHoKhauCuaNhanKhau(idNhanKhau);;
        }

        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet resultSet = pstmt.executeQuery();
            ObservableList<HoKhau> hoKhaus = FXCollections.observableArrayList();
            while (resultSet.next()) {
                String diachi=resultSet.getString("diaChi")+"-"+resultSet.getString("phuongXa")+"-"+resultSet.getString("quanHuyen")+"-"+resultSet.getString("tinhThanhPho");
                hoKhaus.add(new HoKhau(resultSet.getInt("idHoKhau"),
                        resultSet.getInt("idChuHo"),
                        resultSet.getString("tinhThanhPho"),
                        resultSet.getString("quanHuyen"),
                        resultSet.getString("phuongXa"),
                        diachi,
                        resultSet.getDate("ngayCap"),
                        resultSet.getString("trangThai")
                                ));
                tbHoKhau.setItems(hoKhaus);
            }
            pstmt.close();
            resultSet.close();
        } catch (SQLException ex) {
        }
    }
    @FXML
    private Text loginID;
    @FXML
    private Text loginTen;
    @FXML
    private Text loginQuyen;
    public void initialize(URL url, ResourceBundle resourceBundle){
        Platform.runLater(()->{
            refreshTable();
            tbIDHoKhau.setCellValueFactory(new PropertyValueFactory<>("idHoKhau"));
            tbIDChuHo.setCellValueFactory(new PropertyValueFactory<>("idChuHo"));
            tbDiaChi.setCellValueFactory(new PropertyValueFactory<>("diaChi"));
            tbNgayTao.setCellValueFactory(new PropertyValueFactory<>("ngayTao"));
            loginID.setText("ID: "+idNhanKhau);
            loginTen.setText("Tên: "+Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
            loginQuyen.setText("Quyền: "+quyen);
        });
    }

}
