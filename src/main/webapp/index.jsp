<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>爬新闻数据进行中。。。</title>
<!-- ALL STYLESHEET -->
<link href="css/video-js.css" rel="stylesheet">
<script src="js/videojs-ie8.min.js"></script>
<script src="js/video.js"></script>


<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--link href="css/blog-single.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet"-->

<script type="text/javascript">
	function openv(url, title, e) {

		if (title == "false") {
			e.title = "true";
			document.getElementById(url).style.display = "inline";
			document.getElementById(url).src = url
					+ "margin:0 auto";
		} else {
			e.title = "false";
			document.getElementById(url).src =
			 "";
			document.getElementById(url).style.display = "none";

		}
	}
</script>
</head>
<body>

	<!-- header -->
	<header class="header">





		<!-- header bottom -->
		<div class="header-bottom">
			<div class="row">
				<div class="col-sm-12">
					<nav class="navbar navbar-default">
						<div class="container"></div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- home -->
	<section class="home">
		<div class="intro">
			<div id="home" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#home" data-slide-to="0" class="active"></li>
					<li data-target="#home" data-slide-to="1"></li>
					<li data-target="#home" data-slide-to="2"></li>
					<li data-target="#home" data-slide-to="3"></li>
					<li data-target="#home" data-slide-to="4"></li>
					<li data-target="#home" data-slide-to="5"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					
					<c:forEach items="${list}" var="v" varStatus="status">
						<c:if test="${status.index==0}">
							<div class="active item">
						</c:if>
						<c:if test="${status.index!=0}">
							<div class="item">
						</c:if>
						 
						<div style="float: right;padding-right:150px;padding-bottom: 70px;width: 850px;height: 575px">
									<iframe id="${v.url}" style="display: none"
										class="video_iframe" style="z-index:1;" scrolling="no"
										frameborder="0" height="500px" width="700px"> </iframe>
								</div>
							<div>
								<div style="float: left;margin-left: 300px;margin-top: 70px">
									<div  style='width: 450px;height:660px' >
										<h2>
											<span class="highlight"><font size="2">${v.title}</font></span>
										</h2>
										<p>${v.img}</p>
										<a class="btn btn-default"><img src="${v.imgs}"
											name="${v.url}" title="false"
											onclick="javascript:openv(this.name,this.title,this)" /> </a>
									</div>
								
								</div>
								
							</div>
						 
				</div>

				</c:forEach>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#home" role="button"
				data-slide="prev"><i class="fa fa-angle-left"></i></a> <a
				class="right carousel-control" href="#home" role="button"
				data-slide="next"><i class="fa fa-angle-right"></i></a>
		</div>
		</div>
	</section>

	<footer>

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						<p>Copyright 2017110 by dingjun.com & Design DJ. Copyright¡£</p>
						<ul class="list-inline center-block">
							<li><a href="#"><img src="images/card-1.png"></a></li>
							<li><a href="#"><img src="images/card-2.png"></a></li>
							<li><a href="#"><img src="images/card-3.png"></a></li>
							<li><a href="#"><img src="images/card-4.png"></a></li>
							<li><a href="#"><img src="images/card-5.png"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- ALL JAVASCRIPT -->
	<script src="js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>