<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>FarmOnline</title>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<link rel="stylesheet" type="text/css" media="screen" href="css/screen.css" />
<style type="text/css">
<!--
.style21 {color: #295177}
.style31 {color: #295177; font-size: 2.2em; }
.style23 {color: #FFFFFF; font-weight: bold; font-size: small; }
-->
</style>
</head>
<body>
<!-- wrap starts here -->
<div id="wrap">
  <!--header -->
  <div id="header">
    <h1 id="logo-text"><a href="http://all-free-download.com/free-website-templates/">FarmOnline</a></h1>
    <p id="slogan">Freshpick</p>
    <div  id="nav">
      <ul>
        <li><a href="farmeraddcrop.jsp" class="style21">VEGES</a></li>
        <li><a href="farmereditcrop.jsp" class="style21">EDIT</a></li>
      <li><a href="farmerremovecrop.jsp" class="style21">REMOVE</a></li>
      <li><a href="farmerviewusers.jsp" class="style21">CUSTOMERS</a></li>
      <li><a href="farmerviewbargain.jsp" class="style21">BARGAIN</a></li>
      <li><a href="farmerviewpurchase.jsp" class="style21">PURCHASE</a></li>
      <li><a href="login.jsp" class="style21">LOGOUT</a></li>
		
      </ul>
    </div>
    <div id="header-image"></div>
    <!--header ends-->
  </div>
  <!-- featured starts -->
  <div id="featured" class="clear">
    <div class="image-block"> <img src="images/img-featured.jpg" alt=""/> </div>
    <div class="text-block">
      <p>&nbsp;</p>
      <p><span class="style31">Customer Purchase</span></p>
      <p>&nbsp;</p>
      <table width="436" height="107" border="0" align="center" >
        <tr>
          <td width="85" height="43" bgcolor="#295177"><div align="center" class="style23">UserName </div></td>
          <td width="87" bgcolor="#295177"><div align="center" class="style23">Veg Name </div></td>
          <td width="90" bgcolor="#295177"><div align="center"><span class="style23">Veg Price </span></div></td>
          <td width="117" bgcolor="#295177"><div align="center"><span class="style23">Quantity </span></div></td>
        </tr>
        <%
                                        try {
                                            //String username = "username";
							String username = session.getAttribute("username").toString();
							//String username = request.getParameter("username");
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		//String username;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
                                           
										    
                 
										   
										    String query = "select * from orderdetails where farmername='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                String s1 = rs.getString(1);
                                                String s2 = rs.getString(3);
                                                String s3 = rs.getString(4);
												String s4 = rs.getString(5);
												
												
												
                                               // String oriName[] = fileName.split("____");
                                               // oriName[1].split("\\.");
                                              //  String originalName =oriName[0]+"."+oriName[1].split("\\.")[1];
                                    %>
        <tr>
          <td height="50"><div align="center"><%=s1%></div></td>
          <td><div align="center"><%=s2%></div></td>
          <td><div align="center"><%=s3%></div></td>
          <td><div align="center"><%=s4%></div></td>
        </tr>
        <%
			
			

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
      </table>
    </div>
  </div>
  <!-- content -->
  <div id="content-outer" class="clear">
    <div id="content-wrap"></div>
  </div>
  <!-- footer starts here -->
  <div id="footer-outer" class="clear">
    <div id="footer-wrap">
      <!-- footer ends -->
</div>
  </div>
  <!-- footer-bottom starts -->
  <!-- wrap ends here -->
</div>
<div align=center class="style31"></div>
</body>
</html>
