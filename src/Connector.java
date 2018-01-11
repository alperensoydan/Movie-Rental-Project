/**
 * Created by Alperen on 4.05.2017.
 */

import javafx.scene.control.Alert;
import java.sql.Connection;
import java.sql.DriverManager;


public class Connector {
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"databasename","databaseusername","databasepassword");
            return connection;
        } catch (Exception e) {
            e.printStackTrace();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("ERROR!");
            alert.setHeaderText("Failed connect to database!");
            alert.setContentText("Please check informations and TRY AGAIN!");

            alert.showAndWait();
        }
        return null;
    }

}


