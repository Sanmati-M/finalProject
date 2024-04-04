
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
 
public class EditCrop1 extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
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
            
            String query = "update cropdetails set cropprice = ?, availquant = ? where farmerusername = ? && cropname = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString(1, cropprice);
      preparedStmt.setString(2, availquant);
      preparedStmt.setString(3, farmerusername);
      preparedStmt.setString(4, cropname);
      
     

      // execute the java preparedstatement
      preparedStmt.executeUpdate();
            
            rd=req.getRequestDispatcher("farmereditsuccess.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
            // rd=req.getRequestDispatcher("failure.jsp");
            System.out.println(e2);
        }
    }
}