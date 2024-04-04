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

public class EditCrop extends HttpServlet {
    String username="";
    String password="";
    String ipaddress=""; 
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        String cropname = req.getParameter("cropname");
       
	HttpSession sn = req.getSession(true);
    //sn.setAttribute("farmerusername",farmerusername);
  String farmerusername = sn.getAttribute("username").toString();
		RequestDispatcher rd = null;
                
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from cropdetails where farmerusername='"+farmerusername+"' && cropname='"+cropname+"'");
            if(rs.next()) {
               
                 String s1 = rs.getString(1);
                 String s2 = rs.getString(2);
                 String s3 = rs.getString(3);
                 
                 
                 
                 									
                 sn.setAttribute("farmerusername",farmerusername);
                 
                 sn.setAttribute("s1",s1);
                 sn.setAttribute("s2",s2);
                 sn.setAttribute("s3",s3);
                 
                 
                 
                rd=req.getRequestDispatcher("farmereditcroppage.jsp");
            }
            else
            {
                rd=req.getRequestDispatcher("farmerfailure.jsp");    
            }
         
              rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}
