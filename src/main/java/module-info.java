module main.login {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens main.login to javafx.fxml;
    exports main.login;
}