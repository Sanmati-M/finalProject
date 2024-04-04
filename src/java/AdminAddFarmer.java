
   import java.io.*;

   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;

import java.util.Random;
   
   import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.Security;

 
public class AdminAddFarmer extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
           // String userid=sn.getAttribute("username").toString();
      int randomInt = 0;
	  
                String fullname= req.getParameter("fullname");
                 String mobileno= req.getParameter("mobileno");
                 String address= req.getParameter("address");
		String farmlocation= req.getParameter("farmlocation");
                String farmsize= req.getParameter("farmsize");
                String latitude= req.getParameter("lat");
               String longitude= req.getParameter("long");
       
                String username=""+fullname.substring(0, 3)+""+mobileno.substring(7,10);
                Random randomGenerator = new Random();
                for (int idx = 1; idx <= 10; ++idx){
                randomInt = randomGenerator.nextInt(10000);
            
                }
                String password=""+randomInt;
                
                	               
                
        	RequestDispatcher rd;

	try {
		
		 		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
             
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into farmerdetails values('"+fullname+"','"+mobileno+"','"+address+"','"+farmlocation+"','"+farmsize+"','"+latitude+"','"+longitude+"','"+username+"','"+password+"')");
       
            rd=req.getRequestDispatcher("addfarmersuccess.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("adminfailure.jsp");
             rd.forward(req,res);
             System.out.println(e2);
        }
    }
}