package main.login;
import Entity.HoKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseButton;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import Entity.NhanKhau;
import javafx.fxml.FXML;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;

import javax.security.auth.callback.Callback;
import java.sql.SQLException;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Optional;

public class mainNhanKhauController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private String quyen;

    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }
    private int idNhanKhau;
    private int idHoKhau=Services.queryIdHoKhauCuaNhanKhau(idNhanKhau);
    @FXML
    private HBox barNK;

    @FXML
    private Button btnKhaiTu;

    @FXML
    private Button btnDuyet;

    @FXML
    private Button btnTamTru;

    @FXML
    private Button btnThemNK;

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
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;

    @FXML
    private TableView<NhanKhau> tbNhanKhau;
    @FXML
    private TableColumn<NhanKhau,Integer> tbID;
    @FXML
    private TableColumn<NhanKhau,String> tbTen;
    @FXML
    private TableColumn<NhanKhau,String> tbCCCD;
    @FXML
    private TableColumn<NhanKhau,String> tbTrangThai;

    @FXML
    private Button thongKe;

    @FXML
    private Label title;

    @FXML
    private StackPane tuongTacChinhNK;

    @FXML
    void dangXuatClicked(MouseEvent event) throws  IOException {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("????ng xu???t");
        alert.setHeaderText("B???n c?? th???c s??? mu???n ????ng xu???t?");
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
    void hoKhauClicked(MouseEvent event) throws IOException {
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
    void khaiTuClicked(MouseEvent event) throws IOException {
        NhanKhau nk=tbNhanKhau.getSelectionModel().getSelectedItem();
        if (nk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/khaiTu.fxml"));
            Parent khaiTu = loader.load();
            khaiTuController controller = loader.getController();
            controller.setNhanKhau(nk);
            controller.setIdNhanKhauLogin(idNhanKhau);
            Stage stage = new Stage();
            stage.setScene(new Scene(khaiTu));
            stage.show();
        }
        else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Ch??a nh??n kh???u n??o ???????c ch???n ????? khai t???!");
            alert.showAndWait();
        }
    }

    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException{
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
    void phanThuongClicked(MouseEvent event) throws IOException {
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
    void themNhanKhauClicked(MouseEvent event) throws  IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/themNhanKhau.fxml"));
        Parent themNK = null;
        try {
            themNK = loader.load();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
        themNhanKhauController controller = loader.getController();
        controller.setQuyen(quyen);
        controller.setIdNhanKhau(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(themNK));
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
    void xoaClicked(MouseEvent event) throws IOException{
        try {
            NhanKhau nk = tbNhanKhau.getSelectionModel().getSelectedItem();
            if(nk!=null){
                Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                alert.setTitle("X??a nh??n kh???u");
                alert.setHeaderText("B???n c?? th???c s??? mu???n x??a nh??n kh???u n??y ?");
                alert.setContentText("Vi???c x??a nh??n kh???u s??? l??m m???t t???t c??? c??c d??? li???u li??n quan ?????n nh??n kh???u.");
                Optional<ButtonType> option = alert.showAndWait();

                if (option.get() == null) {

                } else if (option.get() == ButtonType.OK) {
                    Connection conn = MyConnection.conDB();
                    String query = "DELETE from nhankhau WHERE idNhanKhau=" + nk.getId();
                    PreparedStatement preparedStatement = conn.prepareStatement(query);
                    preparedStatement.execute();
                    refreshTable();
                    tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
                    tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
//                    tbCCCD.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
                    tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
                } else if (option.get() == ButtonType.CANCEL) {

                }
            }else {
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Ch??a nh??n kh???u n??o ???????c ch???n ????? x??a!");
                alert.showAndWait();
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            Logger.getLogger(themNhanKhauController.class.getName()).log(Level.SEVERE,null,ex);
        }


    }
    @FXML
    void tamTruClicked(MouseEvent event) throws IOException{
        NhanKhau nk=tbNhanKhau.getSelectionModel().getSelectedItem();
        if(nk==null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Ch??a nh??n kh???u n??o ???????c ch???n ????? khai b??o t???m tr??");
            alert.showAndWait();
        } else if(nk.getTrangThai().contains("Qua ?????i")){
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Nh??n kh???u ???? qua ?????i, kh??ng th??? khai b??o t???m v???ng/t???m tr??!");
            alert.showAndWait();
        } else {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/tamTru.fxml"));
            Parent tamTru = loader.load();
            tamTruController controller = loader.getController();
            controller.setNk(nk);
            Stage stage = new Stage();
            stage.setScene(new Scene(tamTru));
            stage.show();
        }
    }
    @FXML
    void chuyenDiClicked(MouseEvent event) throws  IOException{
        NhanKhau nk=tbNhanKhau.getSelectionModel().getSelectedItem();
        if (nk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/chuyenDi.fxml"));
            Parent chuyenDi = loader.load();
            chuyenDiController controller = loader.getController();
            controller.setNhanKhau(nk);
            Stage stage = new Stage();
            stage.setScene(new Scene(chuyenDi));
            stage.show();
        }
        else {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Ch??a nh??n kh???u n??o ???????c ch???n ????? khai b??o chuy???n ??i!");
            alert.showAndWait();
        }
    }
    @FXML
    void tamVangClicked(MouseEvent event) throws IOException{
        NhanKhau nk=tbNhanKhau.getSelectionModel().getSelectedItem();
        if(nk==null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Ch??a nh??n kh???u n??o ???????c ch???n ????? khai b??o t???m v???ng");
            alert.showAndWait();
        } else if(nk.getTrangThai().contains("Qua ?????i")){
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Nh??n kh???u ???? qua ?????i, kh??ng th??? khai b??o t???m v???ng/t???m tr??!");
            alert.showAndWait();
        } else if (nk!=null) {
            Node node = (Node) event.getSource();
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(getClass().getResource("/main/login/tamVang.fxml"));
            Parent tamVang = loader.load();
            tamVangController controller = loader.getController();
            controller.setNhanKhau(nk);
            Stage stage = new Stage();
            stage.setScene(new Scene(tamVang));
            stage.show();
        }
    }
    @FXML
    private void refreshTable() {
        Connection conn = MyConnection.conDB();
        String query;
        if (quyen.equals("T??? tr?????ng"))  query = "SELECT * from `nhankhau`";
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
//                System.out.println(resultSet.getString("hoTen"));
                tbNhanKhau.setItems(nhanKhaus);
            }
            pstmt.close();
            resultSet.close();
        } catch (SQLException ex) {
        }
    }
    @FXML
    private TableColumn<NhanKhau, Date> tbNgaySinh;
    @FXML
    private TableColumn<NhanKhau,String> tbGioiTinh;
    @FXML
    private Text loginID;
    @FXML
    private Text loginTen;
    @FXML
    private Text loginQuyen;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle){
        Platform.runLater(() -> {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
            refreshTable();
            System.out.println(quyen);
            if(!quyen.equals("T??? tr?????ng")){
                btnDuyet.setVisible(false);
            } else
                btnDuyet.setVisible(true);
            tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
            tbNgaySinh.setCellValueFactory(new PropertyValueFactory<>("ngaySinh"));
            tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
            tbGioiTinh.setCellValueFactory(new PropertyValueFactory<>("gioiTinh"));
            loginID.setText("ID: "+idNhanKhau);
            loginTen.setText("T??n: "+Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
            loginQuyen.setText("Quy???n: "+quyen);
            }
        );
    }
    @FXML
    TextField search;
    @FXML
    public void timKiem(KeyEvent e) {
        search.setOnAction(actionEvent -> {
            try {
                if (e.getCode().equals(KeyCode.ENTER)) {
                    String tuKhoa = search.getText().toString();
                    System.out.println(tuKhoa);
                    Connection conn = MyConnection.conDB();
                    String query ;
                    if (quyen.equals("T??? tr?????ng")) query="SELECT * FROM NhanKhau\n" +
                            "WHERE trangThai like N'%" + tuKhoa + "%' \n" +
                            "OR hoTen like N'%" + tuKhoa + "%'\n" +
                            "OR gioiTinh = N'" + tuKhoa + "'\n" +
                            "OR ngaySinh like N'%" + tuKhoa +"%'";
                    else query="SELECT * FROM NhanKhau\n" +
                            "WHERE trangThai like N'%" + tuKhoa + "%' \n" +
                            "and idHoKhau="+ idHoKhau + "\n" +
                            "OR hoTen like N'%" + tuKhoa + "%'\n" +
                            "OR gioiTinh = N'" + tuKhoa + "'\n" +
                            "OR ngaySinh like N'%" + tuKhoa +"%'";
                    System.out.println(query);
                    PreparedStatement preparedStatement = conn.prepareStatement(query);
                    ResultSet resultSet = preparedStatement.executeQuery();
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
                    }
                    tbNhanKhau.setItems(nhanKhaus);
                    tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
                    tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
//                    tbCCCD.setCellValueFactory(new PropertyValueFactory<>("cmnd_cccd"));
                    tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        });
    }
    void moThongTinNhanKhau(){

    }
    @FXML
    void xemChiTiet() throws  IOException{
        tbNhanKhau.setOnMousePressed((MouseEvent e) -> {

          if (e.getClickCount()==2 && e.getButton()== MouseButton.PRIMARY){
              NhanKhau selectedNK=tbNhanKhau.getSelectionModel().getSelectedItem();
              Node node = (Node) e.getSource();
              FXMLLoader loader = new FXMLLoader();
              loader.setLocation(getClass().getResource("/main/login/xemChiTietNhanKhau.fxml"));

              Parent xemNK = null;
              try {
                  xemNK = loader.load();
              } catch (IOException ex) {
                  throw new RuntimeException(ex);
              }
              xemChiTietNhanKhauController controller = loader.getController();
              controller.setNk(selectedNK);
              System.out.println(selectedNK.getHoTen());
              Stage stage = new Stage();
              stage.setScene(new Scene(xemNK));
              stage.show();
          }
        });
    }
    @FXML
    void duyetClicked(MouseEvent e){
        NhanKhau nk = tbNhanKhau.getSelectionModel().getSelectedItem();
        if(nk==null){
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("B???n ch??a ch???n ng?????i ????? duy???t!");
            alert.showAndWait();
        } else if(nk.getTrangThai().contains("_Duy???t")){
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Nh??n kh???u n??y ???? ???????c duy???t");
            alert.showAndWait();
        } else {
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("B???n c?? ch???c mu???n duy???t cho ng?????i n??y?");
            alert.showAndWait();
            Services.duyet(nk);
            refreshTable();
            tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
            tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
            tbNgaySinh.setCellValueFactory(new PropertyValueFactory<>("ngaySinh"));
            tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
            tbGioiTinh.setCellValueFactory(new PropertyValueFactory<>("gioiTinh"));
            alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Duy???t th??nh c??ng!");
            alert.showAndWait();
        }
    }
    @FXML
    void lamMoiClicked(MouseEvent e){
        refreshTable();
        tbID.setCellValueFactory(new PropertyValueFactory<>("id"));
        tbTen.setCellValueFactory(new PropertyValueFactory<>("hoTen"));
        tbNgaySinh.setCellValueFactory(new PropertyValueFactory<>("ngaySinh"));
        tbTrangThai.setCellValueFactory(new PropertyValueFactory<>("trangThai"));
        tbGioiTinh.setCellValueFactory(new PropertyValueFactory<>("gioiTinh"));

    }

}
