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

public class CustomerRegister extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
            String fullname= req.getParameter("fullname");
            String username= req.getParameter("username");
            String password= req.getParameter("password");
            String address= req.getParameter("address");
            String mobileno= req.getParameter("mobileno");
             String email= req.getParameter("email");
              String latitude= req.getParameter("lat");
               String longitude= req.getParameter("long");
       
        	RequestDispatcher rd;

	try {
		
	    Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
           
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into customerdetails values('"+fullname+"','"+username+"','"+password+"','"+address+"','"+mobileno+"','"+email+"','"+latitude+"','"+longitude+"')");
            
            
                        
            rd=req.getRequestDispatcher("regsuccess.jsp");
            rd.forward(req,res);
              
        } catch(Exception e2) {
             
        }
    }
}