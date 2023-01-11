package main.login;

import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class KhaiBaoThuongTru {
    @FXML
    public TextField txtContactNo;
    @FXML
    public TextField txtNationalID;
    @FXML
    public TextField txtJob;
    @FXML
    public TextArea txtReason;
    @FXML
    public Button btnCancel;
    @FXML
    public Button btnComplete;
    @FXML
    public TextField txtAdd;
    @FXML
    public TextField txtName;
    public RadioButton khaiHo;
    public RadioButton chinhChu;
    public DatePicker start;
    public DatePicker end;
    public DatePicker dob;
    public ChoiceBox gender;
    public TextField txtTamtru;

    public void handleCancelButton(MouseEvent mouseEvent) throws SQLException {
        String name= txtName.getText();
        String contactno= txtContactNo.getText();
        String nationalid= txtNationalID.getText();
        String job= txtJob.getText();
        String reason=txtReason.getText().toString();
        String address=txtAdd.getText().toString();
        String birth = dob.getValue().toString();
        String startdate= start.getValue().toString();
        String enddate=end.getValue().toString();
        String sex=gender.getValue().toString();
        String tamtru=txtTamtru.getText().toString();
        Connection conn = MyConnection.conDB();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql="INSERT INTO NhanKhau(hoTen,ngaySinh,ngheNghiep,cmnd_cccd,chuyenDenNgay,trangThai) VALUES(?,?,?,?,?,?)";
        preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setString(1,name);
        preparedStatement.setString(2,birth);
        preparedStatement.setString(3,job);
        preparedStatement.setString(4,nationalid);
        preparedStatement.setString(5,startdate);
        preparedStatement.setString(6,"Khong xac dinh");
        resultSet= preparedStatement.executeQuery();
        Dialog<String> dialog = new Dialog<String>();
        //Setting the title
        dialog.setTitle("Dialog");
        ButtonType type = new ButtonType("Ok", ButtonBar.ButtonData.OK_DONE);
        //Setting the content of the dialog
        dialog.setContentText("Khai báo thành công. Hồ sơ đang được duyệt");
        dialog.getDialogPane().getButtonTypes().add(type);
        dialog.showAndWait();
    }

    public void handleCompleteButton(MouseEvent mouseEvent) {

    }
}
