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
.style25 {color: #FFFFFF; }
.style26 {font-size: xx-large}
.style34 {font-size: large}
.style29 {font-size: 16px; color: #323a3f;}
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
      <h3 align="center" class="style21">VEGETABLES</h3>
      <form id="form1" method="post" action="UserSelectCrop1">
        <table width="403" height="386" border="0" align="center">
          <tr>
            <td width="162" height="50"><div align="center" class="style29"> Veg Name </div></td>
            <td width="231"><label>
              <input name="cropname" type="text" id="cropname" value="<%=session.getAttribute("s1")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="50" class="style34"><div align="center" class="style25"><span class="style29">Veg Price </span></div></td>
            <td><label>
              <input name="cropprice" type="text" id="cropprice" value="<%=session.getAttribute("s2")%>" />
              Per Kg</label></td>
          </tr>
          <tr>
            <td height="50" class="style34"><div align="center" class="style25"><span class="style29">Bargain </span></div></td>
            <td><label>
              <input name="bargainprice" type="text" id="bargainprice" value="nil" />
              Per Kg</label></td>
          </tr>
          <tr>
            <td height="50"><div align="center" class="style29"> Available Quantity </div></td>
            <td><label>
              <input name="availquant" type="text" id="availquant" value="<%=session.getAttribute("s3")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="50"><div align="center" class="style29"> Buy Quantity </div></td>
            <td><label>
              <input name="buyquant" type="text" id="buyquant" />
            </label></td>
          </tr>
          <tr>
            <td height="50"><div align="center" class="style29"> Farmer Name </div></td>
            <td><label>
              <input name="farmername" type="text" id="farmername" value="<%=session.getAttribute("s4")%>" />
            </label></td>
          </tr>
          <tr>
            <td height="70" colspan="2" class="style7"><div align="center">
              <label> <span class="style26">
                  <input name="Submit2" type="submit" class="style34" value="Submit" />
                  </span></label>
              </div>
            </label></td>
          </tr>
        </table>
        <p align="center" class="style34"><a href="mappage.jsp" target="_blank">View Map </a></p>
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
