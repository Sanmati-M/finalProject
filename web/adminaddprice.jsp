<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>FarmOnline</title>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<link rel="stylesheet" type="text/css" media="screen" href="css/screen.css" />
<style type="text/css">
<!--
.style28 {color: #666600}
.style31 {color: #295177; font-size: 2.2em; }
.style25 {color: #FFFFFF; }
.style26 {font-size: xx-large}
.style34 {font-size: large}
.style29 {font-size: 16px; color: #323a3f;}
.style7 {font-size: x-large}
.style35 {color: #295177; font-size: 2em; }
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
      <form id="form1" method="post" action="AdminAddPrice">
        <p class="style35">ADD PRICE DETAILS </p>
        <p class="style35">&nbsp;</p>
        <table width="356" height="178" border="0" align="center">
          <tr>
            <td width="125" height="50"><div align="center" class="style29"> Veg Name </div></td>
            <td width="221"><label>
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
            <td height="50" class="style34"><div align="center" class="style25"><span class="style29"> Price </span></div></td>
            <td><label>
              <input name="cropprice" type="text" id="cropprice" />
              Per Kg</label></td>
          </tr>
          <tr>
            <td height="70" colspan="2" class="style7"><label>
                <div align="center">
                  <label> <span class="style26">
                  <input name="Submit2" type="submit" class="style34" value="Add Details" />
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
