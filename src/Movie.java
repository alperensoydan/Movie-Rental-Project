/**
 * Created by Alperen on 4.05.2017.
 */


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;


public class Movie {

    @FXML
    private BorderPane pane;

    @FXML
    private TextField idField;

    @FXML
    private TextField nameField;

    @FXML
    private TextField yearField;

    @FXML
    private TextField lengthField;

    @FXML
    private TextField rental_durationField;

    @FXML
    private TextField IMDBField;

    @FXML
    private TextField studioField;

    @FXML
    private TextField writtenbyField;

    @FXML
    private TextField directedbyField;

    @FXML
    private TextField trailer_linkField;

    @FXML
    private TextField replacement_costField;


    @FXML
    private TextField stockField;


    @FXML
    private TableColumn<Movie, Integer> idColumn;
    @FXML
    private TableColumn<Movie, String> nameColumn;
    @FXML
    private TableColumn<Movie, Integer> yearColumn;
    @FXML
    private TableColumn<Movie, Integer> lengthColumn;
    @FXML
    private TableColumn<Movie, Integer> rental_durationColumn;
    @FXML
    private TableColumn<Movie, Double> IMDBColumn;
    @FXML
    private TableColumn<Movie, String> studioColumn;
    @FXML
    private TableColumn<Movie, String> writtenbyClolumn;
    @FXML
    private TableColumn<Movie, String> directedbyColumn;
    @FXML
    private TableColumn<Movie, String> trailer_linkColumn;
    @FXML
    private TableColumn<Movie, Integer> replacement_costColumn;
    @FXML
    private TableColumn<Movie, Integer> stockColumn;

    @FXML
    private TableView<Movie> table;
    ObservableList<Movie> data;
    ArrayList<Movie> dataList = new ArrayList<>();



    private Connection con = Connector.getConnection();

    @FXML
    public void add_movie() {
        try {
            String insertQuery = "INSERT INTO movie(name, year, length, rental_duration, IMDB, studio, written_by, directed_by, trailer_link, replacement_cost, stock) "
                    + "VALUES('" + nameField.getText() + "','" + yearField.getText() + "'," + "'" + lengthField.getText() + "','" + rental_durationField.getText() + "','" + IMDBField.getText() + "','" + studioField.getText() + "','" + writtenbyField.getText() + "','" + directedbyField.getText() + "','" + trailer_linkField.getText() + "','" + replacement_costField.getText() + "','" + stockField.getText() + "');";

            Statement statement = con.createStatement();
            statement.executeUpdate(insertQuery);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @FXML
    public void delete_movie() {
        try {
            String deleteQuery = "DELETE FROM movie WHERE ID = '" + idField.getText() + "'";
            Statement statement = con.createStatement();
            statement.executeUpdate(deleteQuery);

        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void search_movie() throws SQLException {
        try {

            String viewQuery = "SELECT * FROM movie WHERE name = '" + nameField.getText() + "'";

            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(viewQuery);

            while (resultSet.next()) {
                int ID = resultSet.getInt("ID");
                String name = resultSet.getString("name");
                int year = resultSet.getInt("year");
                int length = resultSet.getInt("length");
                int rental_duration = resultSet.getInt("Rental_duration");
                double IMDB = resultSet.getDouble("IMDB");
                String studio = resultSet.getString("studio");
                String writtenby = resultSet.getString("written_by");
                String directedby = resultSet.getString("directed_by");
                String trailer_link = resultSet.getString("trailer_link");
                int replacement_cost = resultSet.getInt("replacement_cost");
                int stock = resultSet.getInt("stock");



                idField.setText(String.valueOf(ID));
                nameField.setText(name);
                yearField.setText(String.valueOf(year));
                lengthField.setText(String.valueOf(length));
                rental_durationField.setText(String.valueOf(rental_duration));
                IMDBField.setText(String.valueOf(IMDB));
                studioField.setText(studio);
                writtenbyField.setText(writtenby);
                directedbyField.setText(directedby);
                trailer_linkField.setText(trailer_link);
                replacement_costField.setText(String.valueOf(replacement_cost));
                rental_durationField.setText(String.valueOf(rental_duration));
                stockField.setText(String.valueOf(stock));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void update_movie() {
        try {
            String updateQuery = "Update movie SET replacement_cost = ' "+ replacement_costField.getText()+"'";
            Statement statement = con.createStatement();
            int resultSet = statement.executeUpdate(updateQuery);




        } catch (Exception e5) {
            e5.printStackTrace();
        }


    }

public void refresh_movie(){
    idField.clear();
    nameField.clear();
    yearField.clear();
    lengthField.clear();
    rental_durationField.clear();
    IMDBField.clear();
    studioField.clear();
    writtenbyField.clear();
    directedbyField.clear();
    trailer_linkField.clear();
    replacement_costField.clear();
    rental_durationField.clear();
    stockField.clear();

}
}




