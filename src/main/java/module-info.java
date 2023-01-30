module main.login {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens main.login to javafx.fxml,javafx.base;
    opens Entity to javafx.fxml;
    exports main.login;
    exports Entity;
}