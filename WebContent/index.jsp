<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "utility.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>JIT</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/responsiveslides.css">
<script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 1000,
			      });
			});
		  </script>
</head>
<body>
		<div class="header">
		<div class="wrap">
					<div class="logo">
			<a href="#"><img src="images/logo.png" alt=""/></a>
			</div>
		<ul class="menu">
				<li class="active"><a href="index.jsp">HOME</a></li>
				<li class="arrow"><a href="AUTH_Login.jsp?us=emp">EMPLOYEE</a>
				</li>
				<li><a href="AUTH_Login.jsp?us=qc">QUALITY CHECK</a></li>
				<li><a href="AUTH_Login.jsp?us=op">OPERATOR</a></li>
				<li class="active"><a href="AUTH_Login.jsp?us=ad">ADMIN</a></li>
				<li><a href="AUTH_Registration.jsp">REGISTRATION</a></li>
				<div id="lavalamp"> </div>
					  <div class="clear"> </div>
				</ul>
				   <div class="clear"> </div>
		</div>
		<div class="clear"> </div>
		</div>
			<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="images/slider2.jpg" alt=""></li>
					      <li><img src="images/slider3.jpg" alt=""></li>
					      <li><img src="images/slider1.jpg" alt=""></li>
					    </ul>
						 <!-- Slideshow 2 -->
					<div class="clear"> </div>
					<!--End-image-slider---->
		</div>
		<div class="main">	
			<div class="wrap">
	
<div class="content">
	<div class="content-grids">
      		<div class="content-grid first-grid">
      			<ul>
      		
      				<li><h4><img src="images/a.png" title="pic1" alt="">readable</h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p></li>
      			
      			</ul>
      		</div>
      		<div class="content-grid">
      			<ul>
      				
      				<li><h4><img src="images/b.png" title="pic1" alt="">incididunt</h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p></li>
      				
      			</ul>	
      		</div>
      		<div class="content-grid last-grid">
      			<ul>
      				
      				<li><h4><img src="images/c.png" title="pic1" alt="">eiusmod</h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p></li>
      				
      			</ul>
      		</div>
      <div class="clear"></div>
      </div>
<div class="content-bottom-grids">
			<h3>About our Company</h3>
      		<div class="content-bottom-grid">
      			<div class="content-bottom-grid1">
      				<a href="#"></a><img src="images/cont1.jpg" title="pic1" alt=""></a>
      			</div>
      			<div class="content-bottom-grid2">
      				
      			<ul>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p></li>
      				<li><a href="about.html">read more</a></li>
      			</ul>
      			</div>
      			  <div class="clear"> </div>
      		</div>
      		<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<div class="sidebar">
	<div class="sidebar-grids">
			<h3>Latest News</h3>
      		<div class="sidebar-grid">
      			<div class="sidebar-grid3">
      				<a href="#"><img src="images/top1.jpg" title="pic1" alt=""></a>
      			</div>
      			<div class="sidebar-grid4">
      				
      			<ul>
      				<li><h4><a href="#">this is a sample post1</a></h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p></li>
      			</ul>
      			</div>
      			  <div class="clear"> </div>
      		</div>
      		<div class="sidebar-grid">
      			<div class="sidebar-grid3">
      				<a href="#"><img src="images/top2.jpg" title="pic1" alt=""></a>
      			</div>
      			<div class="sidebar-grid4">
      				
      			<ul>
      				<li><h4><a href="#">this is a sample post1</a></h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p></li>
      			</ul>
      			</div>
      			  <div class="clear"> </div>
      		</div>
      		<div class="sidebar-grid">
      			<div class="sidebar-grid3">
      				<a href="#"><img src="images/top3.jpg" title="pic1" alt=""></a>
      			</div>
      			<div class="sidebar-grid4">
      				
      			<ul>
      				<li><h4><a href="#">this is a sample post1</a></h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p></li>
      			</ul>
      			</div>
      			  <div class="clear"> </div>
      		</div>
      		<div class="sidebar-grid">
      			<div class="sidebar-grid3">
      				<a href="#"><img src="images/top3.jpg" title="pic1" alt=""></a>
      			</div>
      			<div class="sidebar-grid4">
      				
      			<ul>
      				<li><h4><a href="#">this is a sample post1</a></h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p></li>
      			</ul>
      			</div>
      			  <div class="clear"> </div>
      		</div>
      		  <div class="clear"> </div>
      		
</div>
 <div class="clear"> </div>
</div>	
 <div class="clear"> </div>
<div class="tsc_carousel_hor products-list">
	<h1>our products</h1>
          <div class="l-carousel">
            <div class="jcarousel-container jcarousel-container-horizontal" style="position: relative; display: block;"><div class="jcarousel-clip jcarousel-clip-horizontal" style="overflow: hidden; position: relative;"><ul class="carousel jcarousel-list jcarousel-list-horizontal" style="overflow: hidden; position: relative; top: 0px; left: 0px; margin: 0px; padding: 0px; width: 2072px;">
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-1 jcarousel-item-1-horizontal" jcarouselindex="1" style="float: left; list-style: none;"> <a href="#"><img src="images/cont1.jpg" width="175" height="115" border="0"></a>
               
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-2 jcarousel-item-2-horizontal" jcarouselindex="2" style="float: left; list-style: none;"> <a href="#"><img src="images/cont2.jpg" width="175" height="115" border="0"></a>
                
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-3 jcarousel-item-3-horizontal" jcarouselindex="3" style="float: left; list-style: none;"> <a href="#"><img src="images/cont3.jpg" width="175" height="115" border="0"></a>
               
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-4 jcarousel-item-4-horizontal" jcarouselindex="4" style="float: left; list-style: none;"> <a href="#"><img src="images/cont4.jpg" width="175" height="115" border="0"></a>
              
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-5 jcarousel-item-5-horizontal" jcarouselindex="5" style="float: left; list-style: none;"> <a href="#"><img src="images/cont1.jpg" width="175" height="115" border="0"></a>
              
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-6 jcarousel-item-6-horizontal" jcarouselindex="6" style="float: left; list-style: none;"> <a href="#"><img src="images/cont2.jpg" width="175" height="115" border="0"></a>
                
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-7 jcarousel-item-7-horizontal" jcarouselindex="7" style="float: left; list-style: none;"> <a href="#"><img src="images/cont3.jpg" width="175" height="115" border="0"></a>
               
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-8 jcarousel-item-8-horizontal" jcarouselindex="8" style="float: left; list-style: none;"> <a href="#"><img src="images/cont4.jpg" width="175" height="115" border="0"></a>
               
              </li>
            </ul></div><div class="jcarousel-prev jcarousel-prev-horizontal jcarousel-prev-disabled jcarousel-prev-disabled-horizontal" style="display: block;" disabled="disabled"></div><div class="jcarousel-next jcarousel-next-horizontal" style="display: block;"></div></div>
          </div>
          <div class="clear"> </div>
			<script type="text/javascript" src="js/tsc_jqcarousel.js"></script>
			<script type="text/javascript">
			  $(function() {jQuery('.tsc_carousel_hor .carousel').jcarousel({scroll:1});});
			</script>
		<!-- DC Horizontal Carousel:Light End -->
		</div>	
 <div class="clear"> </div>
 
</div>
</div>
<div class="footer-bg">
<div class="wrap">
	<div class="footer-grid">
		<h3>About Us</h3>
		<ul>
			<li><a href="#">Online Shopping</a></li>
			<li><a href="#">Finance Service</a></li>
			<li><a href="#">Marketing</a></li>
			<li><a href="#">Economic News</a></li>
			<li><a href="#">Business Help</a></li>
		</ul>
	</div>
	<div class="footer-grid">
		<h3>Pages</h3>
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="#">Our Services</a></li>
			<li><a href="#">Contact Our Team</a></li>
			<li><a href="#">Short Code</a></li>
		</ul>
	</div>
	<div class="f-box">
		<h3>Recent Post</h3>
		<ul>
		<li class="active1"><a href="#">Join Our Facebook Page</a></li>
		<li><a href="#">Join Our Twitter</a></li>
		<li><a href="#">Rss Feed</a></li>
		<li><a href="#">Follow Us Google+</a></li>
		</ul>
	</div>
	<div class="footer-grid1">
		<h3>News-Letters</h3>
		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Pellentesque nulla ipsum, pretium ac ultrices non, tincidunt id quam. Mauris dignissim dolor quis risus molestie et ,</p>
	</div>
	<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<div class="clear"> </div>
<div class="copy-right">
	<p> &copy; 2013 steel. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
</div>
<div class="clear"></div>
</body>
</html>