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
.style33 {color: #1980AF; font-size: 2.2em; }
.style35 {	color: #666600;
	font-weight: bold;
	font-size: 16px;
}
.style39 {color: #1980AF; font-size: 1.8em; }
.style40 {font-size: 1.8em}
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
      <h3 align="center" class="style21">&nbsp;</h3>
      <div align="center"> 
        <span class="style33">
        <label></label>
        </span>
        <table width="477" height="125" border="0" align="center">
          <tr>
            <td height="63"><div align="center"> <span class="style33">
              <label><span class="style21">Your Order Placed    Successfully..!!! </span></label>
            </span> </div></td>
          </tr>
          <tr>
            <td><div align="center" class="style35"><span class="style39"> Total Payment Rupees
                  <label></label>
            
                <label></label>
                
                <label></label>
                
                  <label></label>
            
                  <label></label>
            </span>
                <span class="style40">
                <label></label>
                </span>
                <span class="style40">
                <label></label>
                </span>
                <label><br />
                    <br />
                    <%=session.getAttribute("total")%><br />
                    </label>
            </div></td>
          </tr>
        </table>
        </div>
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
