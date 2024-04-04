<%@ page import="java.sql.*"  import="java.io.*" errorPage="" %>

<% 
	String cropprice = request.getQueryString();
	//session.setAttribute("sem",sem);
	Connection con = null;
	Statement st = null;
    ResultSet rs1=null;
	int price=0;
		int price1=Integer.parseInt(cropprice);
		price = price1+1;
		String cropname=session.getAttribute("cropname").toString();
	
%>
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
<script type="text/javascript">
	
function fu()
{
 

var c=document.form.cropprice.value;
//alert("ok");
window.location="http://localhost:8084/FarmOnline1/farmeraddcrop2.jsp?"+c;


}
</script>
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
      <h3 align="left" class="style21">ADD VEGETABLES </h3>
      <p align="justify" class="post-info"><!-- featured ends -->
  </p>
     <form id="form" name="form" method="post" action="FarmerAddCrop">
        <table width="403" height="230" border="0" align="center">
          <tr>
            <td width="128" height="50"><div align="center" class="style29"> Veg Name </div></td>
            <td width="251"><label>
            <input name="cropname" type="text" id="cropname" readonly="true" value="<%=cropname%>" />
            </label></td>
          </tr>
          <tr>
            <td height="50" class="style34"><div align="center" class="style25"><span class="style29">Selling Price </span></div></td>
            <td><label>
                <div align="left">Per Kg
                  <input name="cropprice" type="text" id="cropprice" value="<%=price%>"  readonly="true" />
                   <span onclick="fu()" class="style7">+</span>
                   <p class="style7" id="demo" onclick="fu()">&nbsp;</p>
                </div>
              </label></td>
          </tr>
          <tr>
            <td height="50"><div align="center" class="style29"> Avail Qauntity </div></td>
            <td><label>
              <input name="availquant" type="text" id="availquant" />
            </label></td>
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
