/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java.2
 */

public class EditFarmer extends HttpServlet {
    String username="";
    String password="";
    String ipaddress=""; 
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        String username = req.getParameter("username");
       
	HttpSession sn = req.getSession(true);
    // sn.setAttribute("username",username);
  
		RequestDispatcher rd = null;
                
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from farmerdetails where username='"+username+"'");
            if(rs.next()) {
               
                 String s1 = rs.getString(1);
                 String s2 = rs.getString(2);
                 String s3 = rs.getString(3);
                 String s4 = rs.getString(4);
                 String s5 = rs.getString(5);
                 String s6 = rs.getString(6);
                 String s7 = rs.getString(7);
                 
                 									
                 sn.setAttribute("username",username);
                 
                 sn.setAttribute("s1",s1);
                 sn.setAttribute("s2",s2);
                 sn.setAttribute("s3",s3);
                 sn.setAttribute("s4",s4);
                 sn.setAttribute("s5",s5);
                 sn.setAttribute("s6",s6);
                 sn.setAttribute("s7",s7);
                 
                rd=req.getRequestDispatcher("admineditfarmerpage.jsp");
            }
            else
            {
                rd=req.getRequestDispatcher("adminfailure.jsp");    
            }
         
              rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}
