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
      <form id="form1" method="post" action="customerviewcrop1.jsp">
        <table width="347" height="126" border="0" align="center">
          <tr>
            <td width="170"><div align="center" class="style22 style21">Veg Name </div></td>
            <td width="167"><label>
              <select name="select" id="cropname">
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
