import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
   public class Login extends HttpServlet {
    String username="";
    String password="";
    String type="";
    Connection con=null;
    Statement st,st1,st2=null;
    ResultSet rs,rs1,rs2=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        username = req.getParameter("username");
        password = req.getParameter("password");
     String type= req.getParameter("type");
	HttpSession sn = req.getSession(true);
     sn.setAttribute("username",username);
  sn.setAttribute("type",type);
		RequestDispatcher rd = null;
              
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from admintable where username='"+username+"' && password='"+password+"'");
            
            st1 = con.createStatement();
            rs1 = st1.executeQuery("select * from farmerdetails where username='"+username+"' && password='"+password+"'");
           
            st2 = con.createStatement();
            rs2 = st2.executeQuery("select * from customerdetails where username='"+username+"' && password='"+password+"'");
           
            if(rs.next()) {
                 rd=req.getRequestDispatcher("adminpage.jsp");
           }
            else if(rs1.next()) {
                 rd=req.getRequestDispatcher("farmerpage.jsp");
            }
           else if(rs2.next()) {
                 rd=req.getRequestDispatcher("customerpage.jsp");
            }
            
            else {

               rd=req.getRequestDispatcher("failure.jsp");
	       
            }		
     rd.forward(req,res);
              
         
        }
        catch(Exception e2)
         {
             
            System.out.println("Exception : "+e2.toString());
            
        }
    }
}