package main.login;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.scene.control.Button;
import javafx.scene.Node;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class ManHinh implements Initializable {
    @FXML
    private Button trangChu;
    @FXML
    private Button nhanKhau;
    @FXML
    private Button hoKhau;
    @FXML
    private Button phanThuong1;
    @FXML
    private Button phanThuong;
    @FXML
    private Button thongKe;
    @FXML
    private Button logOut;
    @FXML
    private Button themNhanKhau;
    @FXML
    private Button tachHo;
    @FXML
    private Button tamTru;
    @FXML
    private Button thayHoKhau;
    @FXML
    private Button dipDacBiet;
    @FXML
    private Button cuoiNamHoc;
    @FXML
    private AnchorPane nhanKhauButtons;
    @FXML
    private AnchorPane hoKhauButtons;
    @FXML
    public  void nhanKhauEntered(MouseEvent event) throws IOException{
        for (Node but : nhanKhauButtons.getChildren()){
            but.setVisible(true);
        }
        nhanKhauButtons.setVisible(true);
        for (Node but : hoKhauButtons.getChildren()){
            but.setVisible(false);
        }
        cuoiNamHoc.setVisible(false);
        phanThuong1.setVisible(false);
    }
    @FXML
    public  void hoKhauEntered(MouseEvent event) throws IOException{
        for (Node but : nhanKhauButtons.getChildren()){
            but.setVisible(false);
        }
        for (Node but : hoKhauButtons.getChildren()){
            but.setVisible(true);
        }
        hoKhauButtons.setVisible(true);
        cuoiNamHoc.setVisible(false);
        phanThuong1.setVisible(false);
    }
    @FXML
    public  void phanThuongEntered(MouseEvent event) throws IOException{
        for (Node but : nhanKhauButtons.getChildren()){
            but.setVisible(false);
        }
        for (Node but : hoKhauButtons.getChildren()){
            but.setVisible(false);
        }
        cuoiNamHoc.setVisible(true);
        phanThuong1.setVisible(false);
    }
    @FXML
    public  void thongKeEntered(MouseEvent event) throws IOException{
        for (Node but : nhanKhauButtons.getChildren()){
            but.setVisible(false);
        }
        for (Node but : hoKhauButtons.getChildren()){
            but.setVisible(false);
        }
        cuoiNamHoc.setVisible(false);
        phanThuong1.setVisible(true);
    }
    @FXML
    public void trangChuEntered(MouseEvent event) throws IOException{

    }
    public void logOutClicked(MouseEvent event) throws IOException{

    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
    public void themNhanKhauEntered(MouseEvent event) throws IOException{
        Node node = (Node) event.getSource();
        Stage stage = new Stage();
        //stage.setMaximized(true)
        stage.setTitle("Thêm nhân khẩu");
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("themNhanKhau.fxml")));
        stage.setScene(scene);
        stage.show();
    }
}
