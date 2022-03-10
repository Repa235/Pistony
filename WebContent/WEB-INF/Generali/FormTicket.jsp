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

	<section>
		<section id="main" style="padding-top: 12%; padding-bottom: 10%;">
			<div class="inner">
				<div class="containerLogin">

					<s:form class="" action="Ticket" method="post" theme="simple">
						<s:token />
						<label style="color: #004aad; text-align: center">Prenotati
							qui:</label>


						<label class="labelLogin" for="nome"> <b
							style="color: #555;">Nome <s:fielderror style="color: red"
									fieldName="nome_vuoto">
								</s:fielderror></b>
						</label>

						<s:textfield name="nome" style="color: black;" />

						<label class="labelLogin" for="cognome"> <b
							style="color: #555;">Cognome <s:fielderror style="color: red"
									fieldName="cognome_vuoto">
								</s:fielderror></b>
						</label>
						<s:textfield name="cognome" style="color: black;" />
						<label style="color: #004aad; text-align: center">Quando
							voresti venire?</label>
						<label class="labelLogin" for=""> <b style="color: #555;">Inserisci
								data <s:fielderror style="color: red" fieldName="giorno_festivo">
								</s:fielderror> <s:fielderror style="color: red" fieldName="fuori_orario">
								</s:fielderror>
								<s:fielderror style="color: red" fieldName="passato">
								</s:fielderror>
						</b>
						</label>
						<label class="labelLogin" for=""> <s:textfield name="data"
								theme="simple" style="color: #004aad;" class="form-control"
								type="date" />
						</label>

						<label class="labelLogin" for=""> <b style="color: #555;">Inserisci
								orario</b>
						</label>
						<s:fielderror style="color: red" fieldName="now">
						</s:fielderror>
						<label class="labelLogin" for=""><s:textfield
								name="data.hours" theme="simple" style="color: #004aad;"
								class="form-control" type="number" min="8" max="18" />:<s:textfield
								name="data.minutes" theme="simple" style="color: #004aad;"
								class="form-control" type="number" min="0" max="59" value="0" />
						</label>



						<s:submit class="buttonLogin" value="Invia" />


					</s:form>
				</div>

			</div>
		</section>

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