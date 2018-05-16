package myProject;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("username");
        String pass = request.getParameter("userpass");
        String email = request.getParameter("email");
        try{

            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection  con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/jcg?" + "user=root&password=reece818");

            PreparedStatement ps=con.prepareStatement
                    ("insert into user (uname, upass, email)values(?, ?, ?)");

            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, email);

            int i=ps.executeUpdate();

            if(i>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                rd.include(request,response);
            }

        }
        catch(Exception se)
        {
            se.printStackTrace();
        }

    }
}