package main.login;
import Service.Services;
import Entity.HoKhau;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;

public class suaHoKhauController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    public void setIdNhanKhauAccount(int idNhanKhauAccount) {
        this.idNhanKhauAccount = idNhanKhauAccount;
    }

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
    private String quyen;
    @FXML
    private HBox barHK;

    @FXML
    private Button btnSua;

    @FXML
    private Button btnThemHK;

    @FXML
    private Button btnThemHK2;

    @FXML
    private Button dangXuat;

    @FXML
    private TextField diaChi;

    @FXML
    private Button guiThongTin;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField hoTen;

    @FXML
    private TextField idChuHo;

    @FXML
    private TextField idHoKhau;

    @FXML
    private VBox menuPane;

    @FXML
    private DatePicker ngayCap;

    @FXML
    private Button nhanKhau;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;

    @FXML
    private TextField phuongXa;

    @FXML
    private TextField quanHuyen;

    @FXML
    private Button quayLai;

    @FXML
    private Pane themNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    private TextField tinhThanhPho;

    @FXML
    private Label title;
    private HoKhau hokhau;
    @FXML
    private StackPane tuongTacChinhNK;

    public void set_hokhau(HoKhau hk) {
        this.hokhau = hk;
    }

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
    void guiThongTinClicked(MouseEvent event) throws  IOException {
        Integer idHoKhauStr = Integer.parseInt(idHoKhau.getText());
        Integer idChuHoStr = Integer.parseInt(idChuHo.getText());
        String tinhThanhPhoStr = tinhThanhPho.getText().toString();
        String quanHuyenStr = quanHuyen.getText().toString();
        String phuongXaStr = phuongXa.getText().toString();
        String diaChiStr = diaChi.getText().toString();
        Date ngayCapDate = Date.valueOf(ngayCap.getValue());
        HoKhau hk = new HoKhau(idHoKhauStr,idChuHoStr,tinhThanhPhoStr,quanHuyenStr,phuongXaStr,diaChiStr,ngayCapDate,"Binh thuong");
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("S???a h??? kh???u");
        alert.setHeaderText("B???n mu???n s???a h??? kh???u n??y?");
        alert.setContentText("N???u b???n s???a, t???t c??? th??ng tin c?? c???a h??? kh???u s??? m???t");
        Optional<ButtonType> option = alert.showAndWait();

        if (option.get() == null) {

        } else if (option.get() == ButtonType.OK){
            Services.suaHoKhau(hk);
            quayLaiClicked(event);
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

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(() -> {
            try {
                Connection conn = MyConnection.conDB();
                String query = "SELECT hoTen FROM nhankhau WHERE idNhanKhau =" + hokhau.getIdChuHo();
                PreparedStatement pstmt = conn.prepareStatement(query);
                ResultSet resultSet = pstmt.executeQuery();
                if (resultSet!= null) {
                    String hoten = "";
                    if (resultSet.next()) {
                        hoten = resultSet.getString("hoTen");
                    }
                    hoTen.setText(hoten);
                    ngayCap.setValue(hokhau.getNgayTao().toLocalDate());
                    idChuHo.setText(hokhau.getIdChuHo().toString());
                    idHoKhau.setText(hokhau.getIdHoKhau().toString());
                    hoTen.setEditable(false);
                    idHoKhau.setEditable(false);
                    idChuHo.setEditable(false);
                    tinhThanhPho.setText(hokhau.getTinhThanhPho());
                    quanHuyen.setText(hokhau.getQuanHuyen());
                    phuongXa.setText(hokhau.getPhuongXa());
                    diaChi.setText(hokhau.getDiaChi());

                    loginID.setText("ID: "+idNhanKhau);
                    loginTen.setText("T??n: "+ Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
                    loginQuyen.setText("Quy???n: "+quyen);
                }
                else {
                    Alert alert = new Alert(Alert.AlertType.WARNING);
                    alert.setHeaderText(null);
                    alert.setContentText("H??y ch???n h??? kh???u mu???n ch???nh s???a");
                    alert.showAndWait();
                }
            } catch (SQLException ex) {
            }
        });


    }
}