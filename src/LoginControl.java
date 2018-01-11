/**
 * Created by Alperen on 3.05.2017.
 */

import java.io.IOException;
import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.BorderPane;
import javafx.scene.text.Text;
import javafx.stage.Stage;

    public class LoginControl implements Initializable{

        @FXML
        private BorderPane pane;

        @FXML
        private Text title;


        @FXML
        private TextField usernameField;

        @FXML
        private PasswordField passwordField;

        @FXML
        private Label connect;

        private Connection connection;




       @FXML
        public void loginAction() throws SQLException, IOException {

           String query = "Select * from admin where username=? AND pass =?";
           PreparedStatement statement = connection.prepareStatement(query);

           statement.setString(1, usernameField.getText());
           statement.setString(2, passwordField.getText());

           ResultSet rs = statement.executeQuery();

           if (rs.next()) {
               try {
                   Stage stage = (Stage) pane.getScene().getWindow();
                   BorderPane root = (BorderPane) FXMLLoader.load(getClass().getResource("MainPage.fxml"));
                   Scene scene = new Scene(root, 1200, 800);
                   stage.setScene(scene);

               } catch (Exception e2){
                   e2.printStackTrace();

               }


           }
       }

        @FXML
        private void dbLoginAction() {

            connection = Connector.getConnection();
            if (connection != null) {

                connect.setText("Database Connected");
            }else{
                connect.setText("Database disconnected");
            }



        }

        @Override
        public void initialize(URL location, ResourceBundle resources) {
            dbLoginAction();
        }
    }
