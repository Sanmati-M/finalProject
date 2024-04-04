/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Admin
 */

   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
 
public class RemoveFarmer extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);

        	String username= req.getParameter("username");
               
                String type="";
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
            
            String query = "select * from farmerdetails where username='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            if (rs.next()) {
                                              String query1 = "delete from farmerdetails where username = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query1);
      preparedStmt.setString(1, username);

      // execute the preparedstatement
      preparedStmt.execute();
                                            }
            
            
            rd=req.getRequestDispatcher("adminremovesuccess.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
            // rd=req.getRequestDispatcher("failure.jsp");
            System.out.println(e2);
        }
    }
}
