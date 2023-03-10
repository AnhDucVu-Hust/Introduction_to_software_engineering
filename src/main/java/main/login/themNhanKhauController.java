package main.login;
import Entity.HoKhauNhanKhau;
import Service.Services;
import javafx.application.Platform;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import Entity.NhanKhau;
import javafx.fxml.FXML;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.time.LocalDate;
import java.util.Optional;
import java.util.ResourceBundle;

public class themNhanKhauController implements Initializable {
    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

    private String quyen;

    public void setIdNhanKhau(int idNhanKhau) {
        this.idNhanKhau = idNhanKhau;
    }

    @FXML
    private javafx.scene.text.Text loginID;
    @FXML
    private javafx.scene.text.Text loginTen;
    @FXML
    private Text loginQuyen;
    private int idNhanKhau;
    @FXML
    private HBox barNK;

    @FXML
    private TextField biDanh;

    @FXML
    private Button btnKhaiTu;

    @FXML
    private Button btnTamTru;

    @FXML
    private Button btnThemNK;

    @FXML
    private Button btnXoa;

    @FXML
    private TextField cmndCccd;

    @FXML
    private TextField danToc;

    @FXML
    private Button dangXuat;

    @FXML
    private ChoiceBox gioiTinh;

    @FXML
    private Button guiThongTin;

    @FXML
    private Button hoKhau;

    @FXML
    private TextField hoTen;

    @FXML
    private VBox menuPane;

    @FXML
    private DatePicker ngayChuyenDen;

    @FXML
    private DatePicker ngaySinh;

    @FXML
    private TextField ngheNghiep;

    @FXML
    private TextField nguyenQuan;

    @FXML
    private Button nhanKhau;

    @FXML
    private TextField noiLamViec;

    @FXML
    private TextField noiSinh;

    @FXML
    private TextField noiThuongTruTruoc;

    @FXML
    private Pane pgnBackground;

    @FXML
    private Button phanThuong;

    @FXML
    private Button quayLai;

    @FXML
    private TextField quocTich;

    @FXML
    private Pane themNhanKhau;

    @FXML
    private Button thongKe;

    @FXML
    private Label title;

    @FXML
    private TextField tonGiao;

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
        try {
            Connection conn = MyConnection.conDB();
            String query = "INSERT INTO NhanKhau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd_cccd, chuyenDenNgay, noiThuongTruTruoc, trangThai)\n" +
                    "\tVALUES\t(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, N'Th?????ng tr??_Ch??? duy???t');\n ";
            PreparedStatement pstmt = conn.prepareStatement(query);

            String hoTenStr = hoTen.getText().toString();
            String biDanhStr = biDanh.getText().toString();
            LocalDate ngaySinhDate = ngaySinh.getValue();
            String noiSinhStr = noiSinh.getText().toString();
            String nguyenQuanStr = nguyenQuan.getText().toString();
            String danTocStr = danToc.getText().toString();
            String gioiTinhStr = gioiTinh.getValue().toString();
            String tonGiaoStr = tonGiao.getText().toString();
            String quocTichStr = quocTich.getText().toString();
            String cmndCccdStr = cmndCccd.getText().toString();
            String ngheNghiepStr = ngheNghiep.getText().toString();
            String noiLamViecStr = noiLamViec.getText().toString();
            LocalDate ngayChuyenDenDate = ngayChuyenDen.getValue();
            String noiThuongTruTruocStr = noiThuongTruTruoc.getText().toString();

            if(cmndCccdStr.length()!=0 && cmndCccdStr.length()!=9 && cmndCccdStr.length()!=12){
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("CMND/CCCD kh??ng ????ng ?????nh d???ng!");
                alert.showAndWait();
                return;
            }

            if(hoTenStr.length()==0){
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setHeaderText(null);
                alert.setContentText("Ch??a nh???p h??? t??n!");
                alert.showAndWait();
                return;
            }

            pstmt.setString(1, hoTenStr);
            if(biDanhStr != "")
                pstmt.setString(2, biDanhStr);
            else
                pstmt.setNull(2, Types.NULL);
            pstmt.setDate(3, Date.valueOf(ngaySinhDate));
            pstmt.setString(4, noiSinhStr);
            pstmt.setString(5, "Nam");
            pstmt.setString(6, nguyenQuanStr);
            pstmt.setString(7, danTocStr);
            pstmt.setString(8, tonGiaoStr);
            pstmt.setString(9, quocTichStr);
            if(ngheNghiepStr != "")
                pstmt.setString(10, ngheNghiepStr);
            else
                pstmt.setNull(10, Types.NULL);
            if(noiLamViecStr != "")
                pstmt.setString(11, noiLamViecStr);
            else
                pstmt.setNull(11, Types.NULL);
            if(cmndCccdStr != "")
                pstmt.setString(12, cmndCccdStr);
            else
                pstmt.setNull(12, Types.NULL);

            pstmt.setDate(13, Date.valueOf(ngayChuyenDenDate));
            pstmt.setString(14, noiThuongTruTruocStr);
            pstmt.execute();
            String query1="INSERT INTO nhankhauthem(idNhanKhau,ngayThem,ghiChu,trangThai) VALUES(?,?,?,'Ch??? duy???t') ";
            PreparedStatement pstmt1= conn.prepareStatement(query1);
            pstmt1.setInt(1,Services.queryNhanKhau(hoTenStr,Date.valueOf(ngaySinhDate),cmndCccdStr).intValue());
            pstmt1.setDate(2,Date.valueOf(LocalDate.now()));
            pstmt1.setString(3,"");
            pstmt1.execute();
            Integer idNhanKhau = Services.queryNhanKhau(hoTenStr,Date.valueOf(ngaySinhDate),cmndCccdStr);
            if (!quyen.equals("T??? tr?????ng")) {
                String quanHeVoiChuHoStr=quanHeVoiChuHo.getText();
                HoKhauNhanKhau hknk = new HoKhauNhanKhau(Services.queryIdHoKhauCuaNhanKhau(idNhanKhau), idNhanKhau, hoTenStr, cmndCccdStr,quanHeVoiChuHoStr );
                Services.themVaoBangNhanKhauHoKhau(hknk);
            }
            String query2 = "INSERT INTO taikhoan(idNhanKhau,taiKhoan,matKhau,quyen) VALUES (?,?,?,?)";
            PreparedStatement pstmt2=conn.prepareStatement(query2);
            pstmt2.setInt(1,idNhanKhau);
            String taiKhoanStr=Services.covertToString(hoTenStr)+idNhanKhau.toString();
            pstmt2.setString(2,taiKhoanStr.replaceAll("\\s+", ""));
            pstmt2.setString(3,cmndCccdStr);
            if (quyen.equals("T??? tr?????ng")) {
                Alert alert2 = new Alert(Alert.AlertType.CONFIRMATION);
                alert2.setTitle("C???p quy???n");
                alert2.setHeaderText("B???n mu???n c???p quy???n cho nh??n kh???u n??y l?? t??? tr?????ng ?");
                alert2.setContentText("N???u l?? t??? tr?????ng, t??i kho???n n??y s??? c?? quy???n ch???nh s???a th??ng tin");
                Optional<ButtonType> option = alert2.showAndWait();
                if (option.get() == ButtonType.OK) {
                    pstmt2.setString(4, "T??? tr?????ng");
                } else {
                    pstmt2.setString(4, "Ng?????i d??n");
                }
            }
            else pstmt2.setString(4,"Ng?????i d??n");
            pstmt2.execute();
            System.out.println("them thanh cong!");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText(null);
            alert.setContentText("Th??m th??nh c??ng");
            alert.showAndWait();
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
        } catch(Exception e){
            System.err.println(e.getMessage());
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setHeaderText(null);
            alert.setContentText("B???n h??y ??i???n ?????y ????? th??ng tin!");
            alert.showAndWait();
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
        Node node = (Node) event.getSource();
        Stage stage = (Stage) node.getScene().getWindow();
        Scene scene = new Scene(FXMLLoader.load(getClass().getResource("khaiTu.fxml")));
        stage.setScene(scene);
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
    void quayLai(MouseEvent event) throws IOException {
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
    void quayLaiThemNKClicked(MouseEvent event){

    }

    @FXML
    void themNhanKhauClicked(MouseEvent event) {

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
    private TextField quanHeVoiChuHo;
    @FXML
    private Text textQHVCH;
    public void initialize(URL url, ResourceBundle resourceBundle) {
        Platform.runLater(()->{
            gioiTinh.getItems().add("Nam");
            gioiTinh.getItems().add("N???");
            gioiTinh.setValue("Nam");
            loginID.setText("ID: "+idNhanKhau);
            loginTen.setText("T??n: "+ Services.queryNhanKhauTheoId(idNhanKhau).getHoTen());
            loginQuyen.setText("Quy???n: "+quyen);
            if (quyen.equals("T??? tr?????ng")){
//                quanHeVoiChuHo.setVisible(false);
//                textQHVCH.setVisible(false);
            }
        });
    }

}
