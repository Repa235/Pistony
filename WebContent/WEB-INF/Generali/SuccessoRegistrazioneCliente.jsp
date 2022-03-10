<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Pistony</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="refresh" content="5; URL='/Home'" />
<link rel="stylesheet" href="/assets/css/main.css" />
<link rel="stylesheet" href="/assets/css/PIStyle.css" />

</head>
<body>



	<%@ include file="header.jsp"%>


	<section id="main">
		<div class="inner">
			<header>
				<h1>Benvenuto:</h1>
				<a href="#"><h3>
						<s:property value="cliente.nome" />
						<s:property value="cliente.cognome" />
					</h3></a>

			</header>
			<hr>
			<h3>Login effettuato con successo, stai per essere reindirizzato
				nella home!</h3>
			<h4>
				<s:property value="customGreeting" />
			</h4>
			<hr>
		</div>
	</section>

	<!-- Footer -->

	<%@ include file="footer.jsp"%>


	<!-- Scripts -->
	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/jquery.scrolly.min.js"></script>
	<script src="/assets/js/skel.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/Per_login.js"></script>

</body>
</html>