<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<html>
<head>
<title>Pistony</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/PIStyle.css" />

</head>
<body>



	<%@ include file="header.jsp"%>

	<article class="post invert style3 alt">

		<div style="width: 50%">
			<s:form action="Login" method="post" theme="simple">

				<div id="regLogin"
					style="width: 100%; text-align: center; margin-top: 10%;">

					<h2>Effettua il Login:</h2>
					<s:fielderror style="color:red" fieldName="emailpassword" />
					<div class="containerLogin" style="width: 50%;">
						<label class="labelLogin" for="username"> <b>Username</b>
						</label>
						<s:textfield name="email" />
						<label for="password" class="labelLogin"> <b>Password</b></label>
						<s:textfield name="password" type="password" />

						<button class="buttonLogin" type="submit">Login</button>
						<label class="labelLogin"> <input type="checkbox"
							checked="checked" name="remember">
						</label>
					</div>
				</div>
			</s:form>
		</div>
		<div style="width: 50%; background: white;">
			<div id="regLogin"
				style="width: 100%; text-align: center; margin-top: 5%;">

				<h1 style="color: #1c1c1c;">Non sei registrato?</h1>

				<h2 style="color: #1c1c1c;">Registrati qui:</h2>
				<div style="margin-left: 20%; margin-right: 20%;">
					<div>
						<div>
							<span></span>
						</div>
						<s:form theme="simple" method="post" action="Registrazione">
							<div>
								<div>
									<div>
										<label for="email">Email</label>

										<s:textfield cssClass="form-control"
											name="accountcliente.email" />

										<h6 style="color: red;">
											<s:fielderror fieldName="accountcliente.email" />
										</h6>
										<h6 style="color: red;">
											<s:fielderror fieldName="email_presente" />
										</h6>
									</div>
								</div>
								<div>
									<div>
										<label for="nome">Nome </label>

										<s:textfield cssClass="form-control" name="cliente.nome" />

										<h6 style="color: red;">
											<s:fielderror fieldName="cliente.nome" />
										</h6>
									</div>
								</div>
							</div>
							<div>
								<div>
									<div>
										<label for="cognome">Cognome </label>
										<s:textfield cssClass="form-control" name="cliente.cognome" />
										<h6 style="color: red;">
											<s:fielderror fieldName="cliente.cognome" />
										</h6>
									</div>
								</div>
								<div>
									<div>
										<label for="cfPiva">Codice Fiscale o P. Iva </label>
										<s:textfield cssClass="form-control" name="cliente.cfPiva" />
										<h6 style="color: red;">
											<s:fielderror fieldName="cliente.cfPiva" />
										</h6>
									</div>
									<div>
										<label for="telefono">Numero di telefono</label>
										<s:textfield cssClass="form-control" name="cliente.telefono" />
										<h6 style="color: red;">
											<s:fielderror fieldName="cliente.telefono" />
										</h6>
									</div>
									<div>
										<label for="indirizzo-via">Indirizzo e via</label>
										<s:textfield cssClass="form-control" name="indirizzo.via" />
										<h6 style="color: red;">
											<s:fielderror fieldName="indirizzo.via" />
										</h6>
									</div>

									<div>
										<label for="indirizzo.civico">Numero civico</label>
										<s:textfield cssClass="form-control" name="indirizzo.civico" />
										<h6 style="color: red;">
											<s:fielderror fieldName="indirizzo.civico" />
										</h6>
									</div>
								</div>
								<div>
									<div>
										<label for="password">Password </label>
										<s:password cssClass="form-control"
											name="accountcliente.password" />
										<h6 style="color: red;">
											<s:fielderror fieldName="accountcliente.password" />
										</h6>
									</div>
								</div>
								<div>
									<div class="form-group">
										<label for="confermaPassword">Conferma password</label>
										<s:password name="confermaPassword" />
										<h6 style="color: red;">
											<s:fielderror fieldName="conferma_incoerente" />
										</h6>
									</div>

								</div>
								<div>
									<div>
										<s:submit value="Registrati"></s:submit>
									</div>
								</div>
							</div>

						</s:form>
						<p></p>

					</div>
				</div>
			</div>
		</div>
	</article>

	<!-- Footer -->
	<%@ include file="footer.jsp"%>


	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/Per_login.js"></script>

</body>
</html>