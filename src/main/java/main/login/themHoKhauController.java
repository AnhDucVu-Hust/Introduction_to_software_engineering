package main.login;

import Service.Services;
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

public class themHoKhauController implements Initializable {
    public void setIdNhanKhauAccount(int idNhanKhauAccount) {
        this.idNhanKhauAccount = idNhanKhauAccount;
    }
    private String quyen;
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private int idNhanKhauAccount;

    private int idNhanKhau;
    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    @FXML
    private Text loginID;
    @FXML
    private Text loginTen;
    @FXML
    private Text loginQuyen;

    @FXML
    private Text idhktxt;

    @FXML
    private HBox barHK;

    @FXML
    private Button btnSuaHK;

    @FXML
    private Button btnThemHK;

    @FXML
    private Button btnXoaHK;

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
    private DatePicker ngaySinh;
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
    void guiThongTinClicked(MouseEvent event) {
        System.out.println("Clicked");
        boolean success=false;
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Th??m h??? kh???u");
            alert.setHeaderText("B???n mu???n th??m h??? kh???u n??y?");
            Optional<ButtonType> option = alert.showAndWait();

            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                Connection conn = MyConnection.conDB();
                String query = "INSERT INTO hokhau(idChuHo,tinhThanhPho,quanHuyen,phuongXa,diaChi,ngayCap,trangThai)\n" +
                        "\tVALUES\t(?,?,?,?,?,?,N'B??nh th?????ng');\n";
                PreparedStatement pstmt = conn.prepareStatement(query);

//                String idHoKhauStr = idHoKhau.getText().toString();
                String idChuHoStr = idChuHo.getText().toString();
                String tinhThanhPhoStr = tinhThanhPho.getText().toString();
                String quanHuyenStr = quanHuyen.getText().toString();
                String phuongXaStr = phuongXa.getText().toString();
                String diaChiStr = diaChi.getText().toString();
                LocalDate ngayCapDate = ngayCap.getValue();

                if(idChuHoStr.equals("")||tinhThanhPhoStr.equals("")||quanHuyenStr.equals("")
                    ||phuongXaStr.equals("")||diaChiStr.equals("")||ngayCap.getValue().equals("")){
                    throw new Exception();
                }

//                pstmt.setString(1, idHoKhauStr);
                pstmt.setString(1, idChuHoStr);
                pstmt.setString(2, tinhThanhPhoStr);
                pstmt.setString(3, quanHuyenStr);
                pstmt.setString(4, phuongXaStr);
                pstmt.setString(5, diaChiStr);
                pstmt.setDate(6, Date.valueOf(ngayCapDate));
                pstmt.execute();
                System.out.println("them thanh cong!");
                Alert alert1 = new Alert(Alert.AlertType.INFORMATION);
                alert1.setHeaderText(null);
                alert1.setContentText("Th??m th??nh c??ng!");
                alert1.showAndWait();

            }
        } catch(Exception e){
                System.err.println(e.getMessage());
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("H??y ??i???n ?????y ????? th??ng tin ho???c h??? kh???u ???? b??? nh???p sai");
                alert.showAndWait();
        }
        }

    @FXML
    void hoKhauClicked(MouseEvent event) throws IOException {
        quayLaiThemNKClicked(event);
    }

    @FXML
    void khaiTuClicked(MouseEvent event) {

    }

    @FXML
    void nhanKhauClicked(MouseEvent event) throws IOException {
        Node node = (Node) event.getSource();
        FXMLLoader loader = new FXMLLoader();
        loader.setLocation(getClass().getResource("/main/login/mainNhanKhau.fxml"));
        Parent mainNK = loader.load();
        mainNhanKhauController controller = loader.getController();
        controller.setIdNhanKhau(idNhanKhau);
        controller.setQuyen(quyen);
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainNK));
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
    void themHoKhauClicked(MouseEvent event) {

    }
    @FXML
    void quayLaiThemNKClicked(MouseEvent event) throws IOException{
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
        Platform.runLater(()->{
            idHoKhau.setVisible(false);
            idhktxt.setVisible(false);
            loginID.setText("ID: "+idNhanKhau);
            loginTen.setText("T??n: "+ Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
            loginQuyen.setText("Quy???n: "+quyen);
        });
    }
}
