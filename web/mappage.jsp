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
    <div class="image-block"> 
      <table width="285" height="62" border="0">
        <tr>
          <td><label>
            <input name="latitude" type="text" id="latitude" style="visibility:hidden" value="<%=session.getAttribute("latitude")%>" size="1" />
            <input name="longitude" type="text" id="longitude" style="visibility:hidden" value="<%=session.getAttribute("longitude")%>" size="1" />
            <input name="status" type="text" id="status" style="visibility:hidden" value="<%=session.getAttribute("s4")%>" size="1" />
          </label></td>
        </tr>
      </table>
    <img src="images/img-featured.jpg" alt=""/> </div>
    <div class="text-block">
      <h3 align="center" class="style21">Map</h3>
      <div class="left">
        <p>
          <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBMJTv_16dLhJck6B134mycjI_c4EN-W6Y&amp;callback=initMap" type="text/javascript"></script>
          <script type="text/javascript">// <![CDATA[
		  var lat1=document.getElementById("latitude").value;
		  var long1 = document.getElementById("longitude").value;
		   var status = document.getElementById("status").value;
		  var lat2="10.991855";
		  
		  var long2="76.936938";
		  
		   var iconGreen = 'images/m5_32.png';
		   
		  // if(status==0)
		  // {
		   iconGreen = 'images/m4_32.png';
		  // }
		   
		   
var markers = [{"lat":lat1,"lng":long1},{"lat":lat2,"lng":long2}];
window.onload = function () {
var mapOptions = {
center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
zoom: 10,
mapTypeId: google.maps.MapTypeId.ROADMAP
};
var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
var infoWindow = new google.maps.InfoWindow();
var lat_lng = new Array();
var latlngbounds = new google.maps.LatLngBounds();
for (i = 0; i < markers.length; i++) {
var data = markers[i]
var myLatlng = new google.maps.LatLng(data.lat, data.lng);
lat_lng.push(myLatlng);
var marker = new google.maps.Marker({
position: myLatlng,
map: map,
title: data.title,
 icon: iconGreen
});
latlngbounds.extend(marker.position);
(function (marker, data) {
google.maps.event.addListener(marker, "click", function (e) {
infoWindow.setContent(data.description);
infoWindow.open(map, marker);
});
})(marker, data);
}
map.setCenter(latlngbounds.getCenter());
map.fitBounds(latlngbounds);

}

// ]]></script>
        </p>
        <div id="dvMap" style="width: 500px; height: 500px;"></div>
      </div>
      <p>&nbsp;</p>
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
