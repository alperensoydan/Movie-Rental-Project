/**
 * Created by Alperen on 4.05.2017.
 */




import java.net.URL;
import java.sql.Connection;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class DatabaseLoginController implements Initializable{

    @FXML
    private BorderPane pane;

    public static Connection connection;

    @FXML
    private Label connect;

    @FXML
    private void dbLoginAction() {
        Connection connection;
        connection = Connector.getConnection();
        if (connection != null) {
            try {
                Stage stage = (Stage) pane.getScene().getWindow();
                BorderPane root = (BorderPane) FXMLLoader.load(getClass().getResource("Login.fxml"));
                Scene scene = new Scene(root, 1000, 600);
                stage.setScene(scene);
                connect.setText("Database Connected");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        else{
            connect.setText("Database disconnected");

        }
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        dbLoginAction();
    }
}

