
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
 
public class EditFarmer1 extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
	   String username= req.getParameter("username");
          
            String fullname= req.getParameter("fullname");
                 String mobileno= req.getParameter("mobileno");
                 String address= req.getParameter("address");
		String farmlocation= req.getParameter("farmlocation");
                String farmsize= req.getParameter("farmsize");
                String latitude= req.getParameter("lat");
               String longitude= req.getParameter("long");
               
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
            
            String query = "update farmerdetails set fullname = ?,mobileno = ?,address = ?,farmlocation = ?,farmsize =?,latitude = ?,longitude = ? where username = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString(1, fullname);
      preparedStmt.setString(2, mobileno);
      preparedStmt.setString(3, address);
      preparedStmt.setString(4, farmlocation);
      preparedStmt.setString(5, farmsize);
      preparedStmt.setString(6, latitude);
      preparedStmt.setString(7, longitude);
      preparedStmt.setString(8, username);
     

      // execute the java preparedstatement
      preparedStmt.executeUpdate();
            
            rd=req.getRequestDispatcher("admineditsuccess.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
            // rd=req.getRequestDispatcher("failure.jsp");
            System.out.println(e2);
        }
    }
}