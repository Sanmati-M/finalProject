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
.style34 {color: #1980AF}
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
        <li><a href="customerviewcrop.jsp" class="style21">VEGETABLES </a></li>
      <li><a href="customerviewfarmer.jsp" class="style21">FARMERS </a></li>
      <li><a href="customerviewcart.jsp" class="style21">CART </a></li>
	 <li> <a href="login.jsp" class="style21">LOGOUT</a></li>
		
      </ul>
    </div>
    <div id="header-image"></div>
    <!--header ends-->
  </div>
  <!-- featured starts -->
  <div id="featured" class="clear">
    <div class="image-block">
      <h3 class="style34">FARMERS LIST </h3>
      <table width="200" border="1">
        <tr>
          <td><table width="393" height="129" border="0" align="center" >
            <tr>
              <td width="39" height="49" bgcolor="#1980AF"><div align="center" class="style23">Name </div></td>
              <td width="41" bgcolor="#1980AF"><div align="center" class="style23">Mobile</div></td>
              <td width="32" bgcolor="#1980AF"><div align="center" class="style23">Addr</div></td>
              <td width="59" bgcolor="#1980AF"><div align="center"><span class="style23">Farm Location </span></div></td>
              <td width="35" bgcolor="#1980AF"><div align="center"><span class="style23">Farm Size </span></div></td>
              <td width="54" bgcolor="#1980AF"><div align="center"><span class="style23">Latitude</span></div></td>
              <td width="64" bgcolor="#1980AF"><div align="center"><span class="style23">Longitude</span></div></td>
              <td width="35" bgcolor="#1980AF"><div align="center"><span class="style23">User Name</span></div></td>
            </tr>
            <%
                                        try {
                                            //String username = "username";
							//String username = request.getParameter("username");
							//String username = request.getParameter("username");
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		//String username;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
                                           
										    
                 
										   
										    String query = "select * from farmerdetails"; 
											//where username='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                String s1 = rs.getString(1);
                                                String s2 = rs.getString(2);
                                                String s3 = rs.getString(3);
												String s4 = rs.getString(4);
												String s5 = rs.getString(5);
												String s6 = rs.getString(6);
												String s7 = rs.getString(7);
												String s8 = rs.getString(8);
												
                                               // String oriName[] = fileName.split("____");
                                               // oriName[1].split("\\.");
                                              //  String originalName =oriName[0]+"."+oriName[1].split("\\.")[1];
                                    %>
            <tr>
              <td height="50"><div align="center"><%=s1%></div></td>
              <td><div align="center"><%=s2%></div></td>
              <td><div align="center"><%=s3%></div></td>
              <td><div align="center"><%=s4%></div></td>
              <td><div align="center"><%=s5%></div></td>
              <td><div align="center"><%=s6%></div></td>
              <td><div align="center"><%=s7%></div></td>
              <td><div align="center"><%=s8%></div></td>
            </tr>
            <%
			
			

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
          </table></td>
        </tr>
      </table>
    </div>
  </div>
  <!-- content -->
  <!-- footer starts here -->
  <!-- footer-bottom starts -->
  <!-- wrap ends here -->
</div>
<div align=center class="style31"></div>
</body>
</html>
