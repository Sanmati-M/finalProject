/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

public class AdminAddPrice extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
            String cropname= req.getParameter("cropname");
            
            String cropprice= req.getParameter("cropprice");
                   
        	RequestDispatcher rd;

	try {
		
	    Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
           
            st = con.createStatement();
            rs = st.executeQuery("select * from adminprice where cropname='"+cropname+"'");
            
            if(rs.next()) {
            
            String query = "update adminprice set cropprice = ? where cropname = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString(1, cropprice);
      preparedStmt.setString(2, cropname);
      
              // execute the java preparedstatement
      preparedStmt.executeUpdate();
            }
      else {
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into adminprice values('"+cropname+"','"+cropprice+"')");
            
            
              }   
            rd=req.getRequestDispatcher("addpricesuccess.jsp");
            rd.forward(req,res);
              
        } catch(Exception e2) {
              System.out.println("Exception : "+e2.toString());
        }
    }
}