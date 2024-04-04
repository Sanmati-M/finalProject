import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
   public class BargainAccept extends HttpServlet {
    String username="";
    String password="";
    String type="";
    Connection con=null;
    Statement st,st1=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        
     
	HttpSession sn = req.getSession(true);
    // sn.setAttribute("username",username);
  //sn.setAttribute("type",type);
        String farmerusername = sn.getAttribute("username").toString();
  
  int total = 0;
  
  String id = req.getParameter("id");
  
		RequestDispatcher rd = null;
              
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from bargain where id='"+id+"'");
            while(rs.next()) {
                
                st1 = con.createStatement();
            int add=st1.executeUpdate("insert into cart values('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getString(3)+"','"+rs.getString(4)+"','"+rs.getString(7)+"')");
            
                             
            
                           }
                	
            String query1 = "delete from bargain where id = ? ";
      PreparedStatement preparedStmt = con.prepareStatement(query1);
      preparedStmt.setString(1, id);
     
      // execute the preparedstatement
      preparedStmt.execute();
                                 
                       
             rd=req.getRequestDispatcher("bargainacceptsuccess.jsp");
     rd.forward(req,res);
              
         
        }
        catch(Exception e2)
         {
             
            System.out.println("Exception : "+e2.toString());
            
        }
    }
}