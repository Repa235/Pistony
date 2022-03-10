<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Pistony</title>
<link rel="icon" href="/assets/img/imgHome/icoPistony.png" sizes="96x96">
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
	<section id="main" style="padding-top: 12%; padding-bottom: 10%;">
		<div class="inner">
			<header>
				<h1>La tua prenotazione è avvenuta con successo</h1>

			</header>

			<s:text name="text.ticketok">


				<s:param value="nome" />

				<s:param value="cognome" />

				<s:param value="datastring" />

				<h3>
					<s:param value="random" />
				</h3>

			</s:text>
			<br> <a class="buttonLogin" href="/Home"> Torna alla home </a>

		</div>
	</section>



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