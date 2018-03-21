<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!--     Khai báo thư viện -->
  	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>WELLCOME TO ICSSE 2017</title>
	 <meta charset="utf-8">
	  <!-- Khai báo các thư viện css-->
	  <link rel="shortcut icon" type="image/png" href="images/icon.png"/>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	   <!-- Nhúng style.css do ta tạo vào trang web --> 
	  <link rel="stylesheet" type="text/css" href="css/style.css">
	  <!-- Khai báo các thư viện js--> 
	  <script src="lib/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <!-- Nhúng validation.js do ta tạo vào trang web --> 
	  <script type="text/javascript" src="js/validation.js"></script>
</head>
<body class="mybody">
	<div class="header">
		<div class="text-center">
			<img class="img-responsive" src="images/Banner.jpg" title="ICSSE 2017" alt="No Image">
		</div>
	</div>
	<div class="slide">
		<!-- Slide  -->
		<div class="text-center">
		  <div id="myCarousel" class="carousel slide" data-ride="carousel">
		   
			<!-- Phần các chỉ số  -->
			<ol class="carousel-indicators">
			  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			  <li data-target="#myCarousel" data-slide-to="1"></li>
			  <li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Phần bao các slides -->
			<div class="carousel-inner" role="listbox">
			  <div class="item active">
				<img src="images/slide1.jpg" alt="Slide 1">
			  </div>

			  <div class="item">
				<img src="images/slide2.jpg" alt="Slide 2">
			  </div>
			
			  <div class="item">
				<img src="images/slide3.jpg" alt="Slide 3">
			  </div>
			</div>

			<!-- Control điều khiển bên trái và bên phải -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			  <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			  <span class="sr-only">Next</span>
			</a>
		  </div>
		</div> 
	</div>

	<div>
		<!-- Menu-->
		 <nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				
				<div class="collapse navbar-collapse" id="myNavbar">
					<div class="navbar-header">
					<ul class="nav navbar-nav navbar-center">
						<li><a class="glyphicon glyphicon-home" style="text-align: center;" href="home"></a></li>
						<li><a href="home">HOME</a></li>
						<li>
						  <div class="dropdown show">
						   <a class="btn btn-secondary dropdown-toggle" onclick="doimau()" id="about" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="padding: 16px 12px;font-size: 12px; color: #fff;">ABOUT</a>

						  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						    <a class="dropdown-item" href="about_icsse"><span class="glyphicon glyphicon-briefcase" style="color:#847f7f;padding: 10px;font-size: 14px;">&nbsp;ISCCE</span></a>
						    <a class="dropdown-item" href="about_hcmute"><span class="glyphicon glyphicon-book" style="color:#847f7f;padding: 10px;font-size: 14px;"">&nbsp;HCMUTE</span></a>
						    <a class="dropdown-item" href="about_committees"><span class="glyphicon glyphicon-globe" style="color:#847f7f;padding: 10px;font-size: 14px;">&nbsp;COMMITEES</span></a>
						  </div>
						</div>
						</li>
						<li><a href="program">PROGRAM</a></li>
						<li><a href="publication">PUBLICATION</a></li>
						<li><a href="contact">CONTACT</a></li>
					</ul>
					<!-- check username  -->
				     <%@ page import = "java.io.*,java.util.*" %>
				     <%@ page import ="icsse2017.model.Account" %>
				     <% 
				     	//get username
				     	Account user = (Account) session.getAttribute("user");
				     	if (user != null)
				     	{
				     %>
								<div class="navbar-right navbar-log text-center">
									<a href="manage_news"><button class="btn btn-primary"><span class="glyphicon glyphicon-folder-open"></span> Manage News</button></a> 
									<a href="logout"><button class="btn btn-primary"><span class="glyphicon glyphicon-log-out"></span> Log Out</button></a> 
								</div>	
					<% }
				    %>
				</div>	
			</div>
		 </nav>
	</div>
	<!--Content-->
	<div class="row content">
		<div class="col-sm-8 col-xs-8">
				<div style="text-align: justify;">
            		<div style="background-color:#fff;padding: 13px;">
            			<strong><a href="#"><span style="font-size: 15px;color:#333">CONTACT</span></a></strong>
            			<hr>
            			<strong><a href="#"><span style="color: #337ab7">CONTACT INFORMATION</span></a></strong>
            			<br><br><br>
            			<strong><p>CONFERENCE</p></strong>
            			<p>Email: icsse2017@hcmute.edu.vn<br>
						Location: HCMC University of Technology and Education<br>
						01 Vo Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho Chi Minh City </p><br>
						<strong><p>VIETNAM</p></strong>
						<p>1. A/P. Hoang An Quoc - Email: hanquoc@hcmute.edu.vn<br>
						2. A/P. Do Thanh Trung - Email: trungdt@hcmute.edu.vn</p>
						<strong><p>TAIWAN</p></strong>
						<p>Prof. Yo-Ping Huang - Email: yphuang@ntut.edu.tw</p>
						<br>
						<br>

						<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d1959.2389135249543!2d106.77207909423393!3d10.851215234929542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3175270ad28d48ab%3A0xa6c02de0a7c40d6c!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmgsIDEgVsO1IFbEg24gTmfDom4sIFBoxrDhu51uZyBMaW5oIENoaeG7g3UsIExpbmggQ2hp4buDdSwgVGjhu6cgxJDhu6ljLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!3m2!1d10.8510564!2d106.77201219999999!5e0!3m2!1svi!2s!4v1483930909433" style="width: 600px;height: 350px;border: 0px;"></iframe>
						<br>
            			<a href="#"><img src="./images/others.png"></a>
            			<div style="background-color:#fff;height: 150px">
            			</div>
					</div>
				</div>
		</div>
		<div class="col-sm-4 col-xs-4">
			<div class="title_news">
				<a href="news"><b>LATEST NEWS</b></a>
			</div>
			<div>
				<ul class="list-group">
					<c:forEach var="news" items="${newss}">
						<li class="list-group-item">
							<a href="news?id=${news.id}">
	                        <p class="color_day">Create Date ${news.date}</p>
	                        <span class="color_content">${news.title}</span></a>
	                        <br><span  class="color_day">-------------------------------------------------------</span>
						</li>
					</c:forEach>	
				</ul>
			</div>
		</div>
	</div>
	<div class="footer">
		<span style="font-size: 16px; color: #ffff00;">4th International Conference on Green Technology and Sustainable Development&nbsp;&nbsp;
			<br/>
			HCMC University of Technology and Education
			<br/>
			Add: No 1 Vo Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho Chi Minh City
			<br/>
			Tel: (+84.8) 37 221 223 - Ext: 8161 or 8443
			<br/>
			E-mail: gtsd2018@hcmute.edu.vn
			<br/>
		</span>
		<br/>
	</div>
</body>
</html>