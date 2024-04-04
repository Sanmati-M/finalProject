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
.style22 {font-size: 14px;
	font-weight: bold;
}
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
      <h3 align="left" class="style21">VEGETABLES</h3>
      <form id="form1" method="post" action="">
        <table width="343" height="126" border="0" align="center">
          <tr>
            <td width="170"><div align="center" class="style22 style21">Veg Name </div></td>
            <td width="163"><label>
              <select name="cropname" id="cropname">
                <option value="Tomato">Tomato</option>
                <option value="Potato">Potato</option>
                <option value="Onion">Onion</option>
                <option value="Beetroot">Beetroot</option>
                <option value="Cabbage">Cabbage</option>
                <option value="Spinach">Spinach</option>
                <option value="Raddish">Raddish</option>
                <option value="Carrot">Carrot</option>
                <option value="Cucumber">Cucumber</option>
              </select>
            </label></td>
          </tr>
          <tr>
            <td colspan="2"><div align="center">
                <label>
                <input type="submit" name="Submit2" value="Submit" />
                </label>
            </div></td>
          </tr>
        </table>
      </form>
      <table width="442" height="129" border="0" align="center" >
        <tr>
          <td width="20" bgcolor="#295177">&nbsp;</td>
          <td width="72" height="49" bgcolor="#295177"><div align="center" class="style23">Farmer Name </div></td>
          <td width="86" bgcolor="#295177"><div align="center" class="style23">Avail Quantity </div></td>
          <td width="70" bgcolor="#295177"><div align="center" class="style23"> Price </div></td>
          <td width="69" bgcolor="#295177"><div align="center" class="style23"> Distance </div></td>
          <td width="51" bgcolor="#295177">&nbsp;</td>
        </tr>
        <%
                                        try {
                                            //String username = "username";
						String username = session.getAttribute("username").toString();
							String cropname = request.getParameter("cropname");
							
							String farmerlocation = "";
							String customerlocation = "";
							String distance = "";
        PreparedStatement ps;
        ResultSet rs,rs1,rs2,rs3;
		//Connection con = null;
		//String username;
		Statement st,st1,st2,st3,st4;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmonline","root","password");
                                           
										    		   
										    String query = "select * from cropdetails where cropname='"+cropname+"' ";
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                String s1 = rs.getString(1);
                                                String s2 = rs.getString(2);
												 String s3 = rs.getString(3);
												  String s4 = rs.getString(4);
                                               distance="";
				String query1 = "select * from farmerdetails where username='"+s4+"'";
                                            st1 = con.createStatement();
                                            rs1 = st1.executeQuery(query1);
											if(rs1.next()){
											
											farmerlocation = rs1.getString(4);
											}
				String query2 = "select * from customerdetails where username='"+username+"'";
                                            st2 = con.createStatement();
                                            rs2 = st2.executeQuery(query2);
											if(rs2.next()){
											
											customerlocation = rs2.getString(4);
											}
				String query3 = "select * from distance where from1='"+customerlocation+"' && to1='"+farmerlocation+"'";
                                            st3 = con.createStatement();
                                            rs3 = st3.executeQuery(query3);
											if(rs3.next()){
											
											distance = rs3.getString(3);
											}
													
											System.out.println("Exception : "+customerlocation+farmerlocation);
												
												
                                               // String oriName[] = fileName.split("____");
                                               // oriName[1].split("\\.");
                                              //  String originalName =oriName[0]+"."+oriName[1].split("\\.")[1];
                                    %>
        <tr>
          <form id="form2" method="post" action="UserSelectCrop">
            <td><div align="center">
                <label>
                <input name="cropname" type="radio" value="<%=s1%>" />
                </label>
            </div></td>
            <td height="50"><div align="center"><%=s4%></div></td>
            <td><div align="center"><%=s3%></div></td>
            <td><div align="center"><%=s2%></div></td>
            <td><div align="center"><%=distance%></div></td>
            <td><label>
                <div align="left">
                  <input type="submit" name="Submit" value="Select" />
                </div>
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
