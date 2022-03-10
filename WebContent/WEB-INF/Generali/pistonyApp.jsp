<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html style="background: #1c1c1c;">
<head>
<title>Pistony</title>
<link rel="icon" href="/images/icoPistony.png" sizes="96x96">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/assets/css/main.css" />
<link rel="stylesheet" href="/assets/css/PIStyle.css" />

</head>
<body>
	<%@ include file="header.jsp"%>


	<!-- Banner -->
	<div class="img-shop">

		<section id="banner">
			<div class="inner" style="top: 1px; margin-top: -9%;">
				<div class="slideshow-container">

					<!-- Full-width images with number and caption text -->
					<div class="slideshow-container"
						style="border-left-width: -4px; border-left-style: solid;">

						<div class="mySlides fade">
							<img src="/assets/img/imgHome/slide3.jpg" style="width: 100%">
						</div>

						<div class="mySlides fade">
							<img src="/assets/img/imgHome/slide2.png" style="width: 100%">
						</div>

						<div class="mySlides fade">
							<img src="/assets/img/imgHome/slide1.jpg" style="width: 100%">
						</div>

					</div>
					<br>
				</div>
				<div style="text-align: center">
					<span class="dot" onclick="currentSlide(1)"></span> <span
						class="dot" onclick="currentSlide(2)"></span> <span class="dot"
						onclick="currentSlide(3)"></span>
				</div>
			</div>
		</section>

	</div>




	<article id="four" class="post invert style2 alt"
		style="padding-top: 0px; background-color: #004aad;">
		<div style='width: 50%;'>
			<div class="image" style="width: 100%">
				<img src="/assets/img/imgHome/appPistony.jpg">
			</div>
		</div>
		<div class="content" style="margin-top: 0px; background: #fff;">
			<div class="inner" style="padding-bottom: 200px;">

				<header>
					<br>
					<h2>
						<a style="color: #28907b" href="">Scarica la nostra
							applicazione per tenerti sempre aggiornato sulle nostre novità!</a>
					</h2>

				</header>
				<p style="color: #3498db">
					<br>
					<s:if test="nome_t==null">

					</s:if>
				</p>


			</div>

		</div>


	</article>





	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	<!-- Scripts -->
	<script>
		document.getElementById('autoplay').play();
	</script>
	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/jquery.scrolly.min.js"></script>
	<script src="/assets/js/skel.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/Per_login.js"></script>

</body>
</html>