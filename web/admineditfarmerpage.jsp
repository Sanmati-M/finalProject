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
.style25 {color: #FFFFFF; }
.style26 {font-size: xx-large}
.style34 {font-size: large}
.style30 {font-size: 16px; color: #323a3f;}
.style7 {font-size: x-large}
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
        <li class="first" id="current"></li>
        <li><a href="adminaddfarmer.jsp">ADD FARMER </a></li>
        <li><a href="admineditfarmer.jsp" class="style28">EDIT FARMER</a></li>
        <li><a href="adminremovefarmer.jsp" class="style28">REMOVE FARMER</a></li>
        <li><a href="adminaddprice.jsp" class="style28"> PRICE</a></li>
        <li><a href="adminviewusers.jsp" class="style28"> USERS</a>
		<li><a href="login.jsp" class="style28">LOGOUT</a>
		
      </ul>
    </div>
    <div id="header-image"></div>
    <!--header ends-->
  </div>
  <!-- featured starts -->
  <div id="featured" class="clear">
    <div class="image-block"> <img src="images/img-featured.jpg" alt=""/> </div>
    <div class="text-block">
      <form id="form1" method="post" action="EditFarmer1">
      <table width="392" height="432" border="0" align="center">
          <tr>
            <td width="183" height="50"><div align="center" class="style30"> Full Name </div></td>
            <td width="199"><label>
              <input name="fullname" type="text" id="fullname" value="<%=session.getAttribute("s1")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="49" class="style34"><div align="center" class="style25"><span class="style30">Mobile Number </span></div></td>
            <td><input name="mobileno" type="text" id="mobileno" value="<%=session.getAttribute("s2")%>" /></td>
          </tr>
          <tr>
            <td height="49" class="style34"><div align="center" class="style25"><span class="style30">Address</span></div></td>
            <td><label>
              <input name="address" type="text" id="address" value="<%=session.getAttribute("s3")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="49" class="style34"><div align="center" class="style25"><span class="style30">Farm Location </span></div></td>
            <td><label>
              <input name="farmlocation" type="text" id="farmlocation" value="<%=session.getAttribute("s4")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="49" class="style34"><div align="center" class="style25"><span class="style30">Farm Size </span></div></td>
            <td><label>
              <input name="farmsize" type="text" id="farmsize" value="<%=session.getAttribute("s5")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="49" class="style34"><div align="center" class="style25"><span class="style30">Latitude </span></div></td>
            <td><label>
              <input name="lat" type="text" id="lat" value="<%=session.getAttribute("s6")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="49" class="style34"><div align="center" class="style25"><span class="style30">Longitude</span></div></td>
            <td><label>
              <input name="long" type="text" id="long" value="<%=session.getAttribute("s7")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="70" colspan="2" class="style7"><label>
                <div align="center">
                  <label> <span class="style26">
                  <input name="Submit2" type="submit" class="style34" value="Submit" />
                  </span></label>
                </div>
              </label></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  <!-- content -->
  <div id="content-outer" class="clear">
    <div id="content-wrap">
      <div id="content"></div>
    </div>
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
