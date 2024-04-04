/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;
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

public class FarmerAddCrop extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     String farmerusername = sn.getAttribute("username").toString();
     
            String cropname= req.getParameter("cropname");
            
            String cropprice= req.getParameter("cropprice");
            
            String availquant= req.getParameter("availquant");
                   
        	RequestDispatcher rd;

	try {
		
	    Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
           
          
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into cropdetails values('"+cropname+"','"+cropprice+"','"+availquant+"','"+farmerusername+"')");
            
            
                        
            rd=req.getRequestDispatcher("cropaddsuccess.jsp");
            rd.forward(req,res);
              
        } catch(Exception e2) {
             System.out.println(e2);
        }
    }
}