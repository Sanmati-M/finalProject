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
.style28 {color: #666600}
.style31 {color: #295177; font-size: 2.2em; }
.style33 {color: #1980AF; font-size: 2.2em; }
.style23 {color: #FFFFFF; font-weight: bold; font-size: small; }
.style30 {color: #009900}
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
    <div class="image-block"> <img src="images/img-featured.jpg" alt=""/> </div>
    <div class="text-block">
      <h3 align="left" class="style21">CART</h3>
      <table width="200" border="0">
        <tr>
          <td><table width="411" height="135" border="0" align="center" >
            <tr>
              <td width="53" bgcolor="#1980AF">&nbsp;</td>
              <td width="88" height="43" bgcolor="#1980AF"><div align="center" class="style23">Veg Name </div></td>
              <td width="83" bgcolor="#1980AF"><div align="center" class="style23">Veg Price </div></td>
              <td width="76" bgcolor="#1980AF"><div align="center" class="style23">Quantity </div></td>
              <td width="89" bgcolor="#1980AF">&nbsp;</td>
            </tr>
            <%
                                        try {
                                            //String username = "username";
						String username = session.getAttribute("username").toString();
							//String cropname = request.getParameter("cropname");
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		//String username;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
                                           
										    
                 
										   
										    String query = "select * from cart where username='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                
                                                String s1 = rs.getString(3);
                                                String s2 = rs.getString(4);
												String s3 = rs.getString(5);
												
												
                                               // String oriName[] = fileName.split("____");
                                               // oriName[1].split("\\.");
                                              //  String originalName =oriName[0]+"."+oriName[1].split("\\.")[1];
                                    %>
            <tr>
              <form id="form2" method="post" action="RemoveVeg">
                <td><div align="center">
                    <label>
                    <input name="cropname" type="radio" value="<%=s1%>" />
                    </label>
                </div></td>
                <td height="50"><div align="center"><%=s1%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
                <td><label>
                  <input type="submit" name="Submit" value="Delete" />
                </label></td>
              </form>
            </tr>
            <%
			
			

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
          </table>
            <p>&nbsp;</p>
            <table width="200" height="111" border="0" align="center">
              <tr>
                <td><form id="form3" method="post" action="CheckOut">
                  <div align="center">
                      <input type="submit" name="Submit2" value="Check Out" />
                    </div>
                  </form></td>
              </tr>
              <tr>
                <td><div align="center"><a href="customerviewcrop.jsp" class="style30">BUY AGAIN... </a></div></td>
              </tr>
            </table>
          </td>
        </tr>
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
