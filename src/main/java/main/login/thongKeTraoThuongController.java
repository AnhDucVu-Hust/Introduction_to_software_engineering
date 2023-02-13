package main.login;

import Entity.DipTraoThuong;
import Entity.PhanThuong;
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
import javafx.scene.input.MouseButton;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.VBox;
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

public class thongKeTraoThuongController implements Initializable {

    @FXML
    private AnchorPane thongKeTraoThuong;

    @FXML
    private VBox menuPane;

    @FXML
    private Button nhanKhau;

    @FXML
    private Button hoKhau;

    @FXML
    private Button phanThuong;

    @FXML
    private Button thongKe;

    @FXML
    private Button dangXuat;

    @FXML
    private Button thongKeNKHK;

    @FXML
    private Button thongKeDip;

    @FXML
    private Text n_qua;

    @FXML
    private Text n_tien;

    Integer nqua;

    Integer ntien;

    @FXML
    private TableColumn<?, ?> tenQua;

    @FXML
    private TableColumn<?, ?> giaTri;

    @FXML
    private TableColumn<?, ?> soLuong;

    @FXML
    private TableColumn<?, ?> maDip;

    @FXML
    private TableColumn<?, ?> ngayTraoQua;

    @FXML
    private TableColumn<?, ?> tenDip;

    @FXML
    private TableView<DipTraoThuong> bangDip;

    @FXML
    private TableView<PhanThuong> bangQua;

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private String quyen;

    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }
    private int idNhanKhau;
    private int idHoKhau= Services.queryIdHoKhauCuaNhanKhau(idNhanKhau);
    @FXML
    private Text loginID;
    @FXML
    private Text loginTen;
    @FXML
    private Text loginQuyen;


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
        System.out.println(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
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
        System.out.println(idNhanKhau);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainNK));
        stage.show();
    }

    @FXML
    void phanThuongClicked(MouseEvent event) throws IOException{
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
        System.out.println(idNhanKhau);
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
    void thongKeNKHKClicked(MouseEvent event) throws IOException {
        thongKeClicked(event);
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()-> {
            try {
                Connection conn = MyConnection.conDB();
                String query = "SELECT * FROM DipTraoThuong";
                PreparedStatement preparedStatement = conn.prepareStatement(query);
                ResultSet resultSet = preparedStatement.executeQuery();
                ObservableList<DipTraoThuong> dsDip = FXCollections.observableArrayList();
                while (resultSet.next()) {
                    dsDip.add(new DipTraoThuong(resultSet.getInt("idDip"),
                            resultSet.getString("loaiDip"),
                            resultSet.getString("tenDip"),
                            resultSet.getDate("ngayTraoThuong")
                    ));
                }
                bangDip.setItems(dsDip);
                maDip.setCellValueFactory(new PropertyValueFactory<>("idDip"));
                ngayTraoQua.setCellValueFactory(new PropertyValueFactory<>("ngayTraoThuong"));
                tenDip.setCellValueFactory(new PropertyValueFactory<>("tenDip"));

                loginID.setText("ID: " + this.idNhanKhau);
                loginTen.setText("Tên: " + Services.queryNhanKhauTheoId(this.idNhanKhau).getHoTen());
                loginQuyen.setText("Quyền: " + this.quyen);
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        });
    }


    @FXML
    void xemThongKeDip() {
        bangDip.setOnMousePressed((MouseEvent e) -> {
//            final TableRow<DipTraoThuong> row = new TableRow<>();
            if (e.getClickCount()==2 && e.getButton() == MouseButton.PRIMARY){
                DipTraoThuong selectedDip = bangDip.getSelectionModel().getSelectedItem();;

                Connection conn = MyConnection.conDB();
                String query = null;
                PreparedStatement pstmt = null;
                ResultSet resultSet = null;
                try {
                    // dem so phan qua duoc trao
                    query = "Select count(*) from NguoiNopMinhChung where idDip = ?\n" +
                            "and trangThai = N'Đã duyệt'";
                    pstmt = conn.prepareStatement(query);
                    pstmt.setInt(1, selectedDip.getIdDip());
                    resultSet = pstmt.executeQuery();
                    resultSet.next();
                    nqua = resultSet.getInt(1);
                    n_qua.setText(nqua + " phần quà");

                    // thong ke tong so tien
                    query = "Select sum(PhanThuong.giaTriPhanThuong) from NguoiNopMinhChung, PhanThuong\n" +
                            "where NguoiNopMinhChung.idDip = ?\n" +
                            "and NguoiNopMinhChung.idPhanThuong is not null\n" +
                            "and trangThai = N'Đã duyệt'\n" +
                            "and PhanThuong.id = NguoiNopMinhChung.idPhanThuong\n";
                    pstmt = conn.prepareStatement(query);
                    pstmt.setInt(1, selectedDip.getIdDip());
                    resultSet = pstmt.executeQuery();
                    resultSet.next();
                    ntien = resultSet.getInt(1);
                    n_tien.setText(ntien + " VNĐ");

                    // thong ke so luong cac phan thuong
                    query = "select PhanThuong.id, tenPhanThuong, giaTriPhanThuong, ghiChu,  count(*) as soLuong\n" +
                            "from PhanThuong, NguoiNopMinhChung\n" +
                            "where NguoiNopMinhChung.trangThai = N'Đã duyệt'\n" +
                            "and NguoiNopMinhChung.idDip = ?\n" +
                            "and NguoiNopMinhChung.idPhanThuong = PhanThuong.id\n" +
                            "group by PhanThuong.id, tenPhanThuong, giaTriPhanThuong, ghiChu";
                    pstmt = conn.prepareStatement(query);
                    pstmt.setInt(1, selectedDip.getIdDip());
                    resultSet = pstmt.executeQuery();
                    ObservableList<PhanThuong> dsQua = FXCollections.observableArrayList();

                    while (resultSet.next()) {
                        dsQua.add(new PhanThuong(resultSet.getInt("PhanThuong.id"),
                                resultSet.getString("tenPhanThuong"),
                                resultSet.getInt("giaTriPhanThuong"),
                                resultSet.getString("ghiChu"),
                                resultSet.getInt("soLuong")
                        ));
                    }
                    bangQua.setItems(dsQua);
                    tenQua.setCellValueFactory(new PropertyValueFactory<>("ten"));
                    giaTri.setCellValueFactory(new PropertyValueFactory<>("giaTri"));
                    soLuong.setCellValueFactory(new PropertyValueFactory<>("soLuong"));
                }
                catch(Exception ex){
                    System.out.println(ex.getMessage());
                }
            }
        });
    }
}
