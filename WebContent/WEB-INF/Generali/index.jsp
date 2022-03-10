<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

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




	<!-- Chi siamo -->
	<article id="one" class="post style1">

		<div class="image">

			<div class="inner">

				<video id="autoplay" muted loop style="width: 100%; margin-top: 0%;">
					<source src="/assets/img/imgHome/vidHome1.mp4" type="video/mp4">
				</video>
			</div>
		</div>
		<div class="content">
			<div class="inner">
				<header>
					<h2>
						<a href="#"> Su di noi </a>
					</h2>
				</header>
				<div class="textbox">
					<p align="justify">
						<s:text name="index.sudinoi"></s:text>
					</p>
				</div>
				<ul class="actions">
					<!-- <li><a href="generic.html" class="button alt">Vai allo
							shop</a></li> -->
				</ul>
			</div>

		</div>
	</article>

	<!-- Shop -->
	<article id="two" class="post invert style1 alt">
		<div style='width: 50%;'>
			<section class="product" style="background: #1c1c1c;">
				<div class="product-container">

					<div class="table-responsive p-3" style="text-align: center">
						<h3>In offerta</h3>
						<br>
						<h4>
							<s:property value="c.nome" />
							<s:property value="c.marca" />

						</h4>
						<br> <br> <img alt="2"
							src="assets/img/imgProdotti/Componente<s:property value="getIdcomponente()"/>.png"
							style="margin-bottom: -1%; width: 30%;" /> <br>
						<h5>
							<br>Prezzo: <br> <label style="color: #1abc9c">&euro;<s:property
									value="c.prezzo" />
							</label>


						</h5>
						<br>
						<h2>
							<a href="/Shop">Vai allo shop </a>
						</h2>
						<br>
					</div>
				</div>

			</section>
		</div>
		<div class="content">
			<div class="inner">
				<header>
					<h2>
						<a href="/Shop">Lo shop</a>
					</h2>

				</header>
				<p>
					<s:text name="index.shop"></s:text>
				</p>
				<ul class="actions">
				</ul>
			</div>

		</div>
	</article>

	<!-- Three -->
	<article id="three" class="post style2">
		<div class="image">

			<div class="inner">

				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d49547.22034981746!2d16.102835178267043!3d39.090501668495584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x75e396a9c1c850e2!2sLos%20Santos%20Customs!5e0!3m2!1sit!2sit!4v1613574879142!5m2!1sit!2sit"
								width="600" height="450" frameborder="0" style="border: 0;"
								allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
						</div>

						<div class="col-md-4">
							<div class="inner" style="margin-top: 25%;">
								<h4>Contatti</h4>
								<ul class="alt">
									<li><b><i class="fa fa-map-marker" aria-hidden="true"></i>
											Indirizzo:</b> SP245, 32, 87030 Serra D'aiello CS</li>
									<li><b><i class="fa fa-phone" aria-hidden="true"></i>
											Telefono: </b> +39 389 3233333</li>
									<li><b><i class="fa fa-envelope-o" aria-hidden="true"></i>
											Email: </b> officina@pistony.it</li>
									<li></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>


		</div>
		<div class="content" style="margin-top: 0px;">
			<div class="inner">
				<header>
					<h2>
						<a href="generic.html"> Su di noi </a>
					</h2>
				</header>
				<div class="textbox">
					<p align="justify">
						<s:text name="index.sudinoi"></s:text>
					</p>
				</div>
				<ul class="actions">
					<!-- <li><a href="generic.html" class="button alt">Vai allo
							shop</a></li> -->
				</ul>
			</div>

		</div>
	</article>

	<!-- Four -->
	<article id="four" class="post invert style2 alt"
		style="padding-top: 0px; background-color: #004aad;">
		<div style='width: 50%;'>
			<div class="image"
				style='background-image: url("/assets/img/imgHome/covid1.jpg"); background-position: 100% center; border-left-width: 0px; border-left-style: solid; padding-left: 0px; width: 100%'">
				<img src="/assets/img/imgHome/covid1.jpg" alt=""
					data-position="100% center">
			</div>
		</div>
		<div class="content" style="margin-top: 0px; background: #fff;">
			<div class="inner" style="padding-bottom: 200px;">

				<header>
					<br>
					<h2>
						<a style="color: #004aad" href="">Vuoi venire in officina ma
							non sei registrato?</a>
					</h2>

				</header>
				<p style="color: #3498db">
					<s:text name="prenotazione.covid"></s:text>
					<br>
					<s:if test="nome_t==null">
						<a style="color: #004aad;" href="/RichiediTicket">Prenotati
							online</a>
					</s:if>
				</p>
				<s:if test="nome_t!=null">
					<h3 style="color: #3498db">Attualmente hai già una
						prenotazione:</h3>
					<p style="color: #3498db">
						A nome di
						<s:property value="nome_t" />
						<s:property value="cognome_t" />
						prevista per giorno
						<s:property value="data_t" />
						con codice
						<s:property value="random_t" />
					<p style="color: #3498db">
				</s:if>
				<ul class="actions">
				</ul>
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