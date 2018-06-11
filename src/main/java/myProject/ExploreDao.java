package myProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ExploreDao {
    String databaseURL = "jdbc:mysql://localhost:3306/jcg?";
    String user = "root";
    String password = "reece818";

    public List<States> list() throws SQLException {
        ArrayList<States> statesList = new ArrayList<States>();

        try (Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
            String sql = "SELECT sName FROM jcg.states";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);

            while (result.next()) {
                String sName = result.getString("sName");
                States states = new States(sName);
                statesList.add(states);
            }
            System.out.println("The size is: " + statesList.size());

        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }
        return statesList;
    }
}