<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.titolare.Titolare"%>
<%@ page import="it.unirc.pistony.pojo.Accounttitolare.Accounttitolare"%>
<%@ page import="it.unirc.pistony.pojo.Cliente.*"%>
<%@ page import="it.unirc.pistony.pojo.Prenota.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="refresh" content="5; URL='http://localhost:8080/AreaCliente/ProfiloCliente" />
<title>Header cliente</title>
<link href="/assets/adminpage/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/css/ruang-admin.min.css" rel="stylesheet">
<link
	href="/assets/adminpage/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<div class="header">
	<div class="img-shop">
		<img alt="" src="/assets/img/imgHome/banner-shop.jpg" style="width: 100%">
	</div>
</div>
<body id="page-top">
	<div id="wrapper">




		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">


			<div class="row">

				<div class="col-sm"></div>
				<div class="col-lg-6" style="top: 20%;">
					<div class="card mb-4">
						<div class="table-responsive p-3">
							<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							</div>
							<div class="card-body">
								<div class="input-group mb-3"></div>
								<div class="input-group mb-3">
									<div class="input-group-append"></div>
								</div>
								<div class="input-group mb-3"></div>
								<div class="inner">
									<header>
										<h1>Grazie!</h1>
										<a href="#"><h3>
												<s:property value="%{#session.utente.nome}" />
												<s:property value="%{#session.utente.cognome}" />
											</h3></a>
											

									</header>
									<hr>
									<h3>Acquisto effettuato con successo, stai per essere
										reindirizzato nella Area Personale!</h3>
									<h4>
										<s:property value="customGreeting" />
									</h4>
									<hr>
								</div>
								<div class="input-group mb-3"></div>

							</div>
						</div>
						
					</div>
				</div>
				<div class="col-sm"></div>

			</div>
		</div>
	</div>
</body>


</html>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>


