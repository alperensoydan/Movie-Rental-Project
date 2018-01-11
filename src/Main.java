
/**
 * Created by Alperen on 4.05.2017.
 */

import javafx.application.Application;
import javafx.scene.layout.Border;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.fxml.FXMLLoader;

import java.sql.Connection;

public class Main extends Application {
    @Override
    public void start(Stage primaryStage) {
        try {
            BorderPane root =(BorderPane)FXMLLoader.load(getClass().getResource("Login.fxml"));
            Scene scene = new Scene(root, 1000, 600);
            primaryStage.setScene(scene);
            primaryStage.show();
            primaryStage.setResizable(false);
            primaryStage.setTitle("Movie Rental Database System");
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public static void main(String[] args) {

    launch(args);
    }
}