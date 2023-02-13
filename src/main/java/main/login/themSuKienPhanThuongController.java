package main.login;

import Service.Services;
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
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;

public class themSuKienPhanThuongController implements Initializable {

    @FXML
    private HBox barNK;

    @FXML
    private Button btnSua;

    @FXML
    private Button btnThem;

    @FXML
    private Button dangXuat;

    @FXML
    private Button guiThongTin;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField iD;

    @FXML
    private ChoiceBox loaiDip;

    @FXML
    private VBox menuPane;

    @FXML
    private DatePicker ngayTraoQua;

    @FXML
    private Button nhanKhau;

    @FXML
    private Button phanThuong;

    @FXML
    private Button quayLai;

    @FXML
    private TextField tenDip;

    @FXML
    private Pane themNhanKhau;

    @FXML
    private Button thongKe;


    @FXML
    void guiThongTinClicked(MouseEvent event) {
        System.out.println("Clicked");
        boolean success=false;
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Thêm sự kiện");
            alert.setHeaderText("Bạn muốn thêm sự kiện này?");
            Optional<ButtonType> option = alert.showAndWait();

            if (option.get() == null) {

            } else if (option.get() == ButtonType.OK) {
                Connection conn = MyConnection.conDB();
                String query = "INSERT INTO `diptraothuong`(loaiDip,tenDip,ngayTraoThuong)\n" +
                        "\tVALUES\t(?,?,?);\n";
                PreparedStatement pstmt = conn.prepareStatement(query);

                if(tenDip.getText().equals("")){
                    alert = new Alert(Alert.AlertType.WARNING);
                    alert.setHeaderText(null);
                    alert.setContentText("Hãy điền đầy đủ thông tin hoặc thông tin bị nhập sai");
                    alert.showAndWait();
                    return;
                }
                String idDipStr=iD.getText().toString();
                String loaiDipStr= loaiDip.getValue().toString();
                String tenDipStr=tenDip.getText().toString();
                LocalDate ngayTraoThuongDate=ngayTraoQua.getValue();
//                pstmt.setString(1, idDipStr);
                pstmt.setString(1,loaiDipStr);
                pstmt.setString(2,tenDipStr);
                pstmt.setDate(3,Date.valueOf(ngayTraoThuongDate));

                pstmt.execute();
                System.out.println("them thanh cong!");
                quayLaiClicked(event);
            }
        } catch(Exception e){
            System.err.println(e.getMessage());
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("Hãy điền đầy đủ thông tin hoặc thông tin bị nhập sai");
            alert.showAndWait();
        }
    }

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
        Stage stage = (Stage) node.getScene().getWindow();
        stage.setScene(new Scene(mainHK));
        stage.show();
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
    void quayLaiClicked(MouseEvent event) throws  IOException{
        phanThuongClicked(event);
    }

    @FXML
    private Text idtxt;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        iD.setVisible(false);
        idtxt.setVisible(false);
        loaiDip.getItems().add("Cuối năm học");
        loaiDip.setValue("Dịp đặc biệt");
        loaiDip.getItems().add("Dịp đặc biệt");
    }
}
