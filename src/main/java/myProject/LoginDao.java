package myProject;

import java.sql.*;

public class LoginDao {

    public static boolean validate(String uName,String uPass){
        boolean status=false;
        try
        {
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/jcg?" +
                    "user=root&password=reece818");

            PreparedStatement ps=conn.prepareStatement("SELECT * FROM jcg.user where uName=? and uPass=?");

            ps.setString(1,uName);
            ps.setString(2,uPass);

            ResultSet rs=ps.executeQuery();
            status=rs.next();

        }catch(SQLException ex)
        {System.out.println("SQLException: " + ex.getMessage());
        System.out.println("SQLState: " + ex.getSQLState());}

        return status;
    }
}
