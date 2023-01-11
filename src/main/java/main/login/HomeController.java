package main.login;

import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableView;
import javafx.scene.control.TableColumn;
import java.io.IOException;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import main.login.MyConnection;
import javafx.scene.paint.Color;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.Node;
import javafx.stage.Stage;
import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class HomeController implements Initializable {
    @FXML
    private TableView<UserInfo> table;

    @FXML
    private TableColumn<UserInfo, Integer> columnID;

    @FXML
    private TableColumn<UserInfo, String> columnFirstName;

    @FXML
    private TableColumn<UserInfo, String> columnLastName;

    @FXML
    private TableColumn<UserInfo, Integer> columnAge;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        columnID.setCellValueFactory(new PropertyValueFactory<UserInfo, Integer>("id"));
        columnFirstName.setCellValueFactory(new PropertyValueFactory<UserInfo, String>("firstname"));
        columnLastName.setCellValueFactory(new PropertyValueFactory<UserInfo, String>("lastname"));
        columnAge.setCellValueFactory(new PropertyValueFactory<UserInfo, Integer>("age"));

        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ObservableList<UserInfo> users = table.getItems();

        conn = MyConnection.conDB();
        String sql = "SELECT ID, FirstName, LastName, Age FROM userinfo";
        try {
            preparedStatement = conn.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                UserInfo user = new UserInfo(resultSet.getInt("ID"),
                                             resultSet.getString("FirstName"),
                                             resultSet.getString("LastName"),
                                             resultSet.getDate("Age"));
                System.out.println(resultSet.getInt("Age"));
                users.add(user);
                table.setItems(users);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }
}
