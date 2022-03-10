<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.titolare.Titolare"%>
<%@ page import="it.unirc.pistony.pojo.Accounttitolare.Accounttitolare"%>



<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="img/logo/logo.png" rel="icon">
<title>Pistony - Dashboard</title>

</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/WEB-INF/AreaTitolare/menu&headerTitolare.jsp"%>
		<!-- Sidebar -->


		<div class="container-fluid" id="container-wrapper">


			<div class="row">
				<div class="col-sm"></div>

				<div class="col-lg-6">
					<!-- General Element -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Modifica Dati
								personali</h6>
						</div>
						<div class="card-body" style="text-align: center;">
							<s:form method="post" theme="simple"
								action="ModificaAccountTitolare">
								<s:hidden name="titolare.idtitolare"
									value="%{titolare.idtitolare}"></s:hidden>


								<div class="form-group">
									<label>Nome</label>
									<s:textfield class="form-control" name="titolare.nome"
										value="%{titolare.nome}" />
								</div>
								<s:fielderror fieldName="titolare.nome" />
								<div class="form-group">
									<label>Cognome</label>
									<s:textfield class="form-control" name="titolare.cognome"
										value="%{titolare.cognome}" />
								</div>
								<s:fielderror fieldName="titolare.cognome" />

								<div class="form-group">
									<label>Indirizzo</label>
									<s:fielderror fieldName="titolare.indirizzo.via" />
									<s:fielderror fieldName="titolare.indirizzo.civico" />


									<div class="form-group">
										<label>Via:</label>

										<s:textfield class="form-control"
											name="titolare.indirizzo.via"
											value="%{titolare.indirizzo.via}" />
									</div>
									<div class="form-group">
										<label>Civico:</label>

										<s:textfield class="form-control"
											name="titolare.indirizzo.civico"
											value="%{titolare.indirizzo.civico}" />
									</div>
								</div>
								<div class="form-group">
									<label>Email</label>
									<s:fielderror fieldName="accounttitolare.email" />

									<s:textfield class="form-control" name="accounttitolare.email"
										value="%{titolare.accounttitolare.email}" />
								</div>

								<div class="form-group">
									<label>Password</label>
									<s:fielderror fieldName="accounttitolare.password" />

									<s:textfield class="form-control" type="password"
										name="accounttitolare.password"
										value="%{titolare.accounttitolare.password}" />
								</div>
								<div class="form-group">
									<label>Ripeti Password</label>

									<s:textfield type="password" class="form-control"
										name="conferma" />
								</div>
	
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block">Modifica
										dati</button>
								</div>
								<hr>
							</s:form>
						</div>
					</div>

				</div>
				<div class="col-sm"></div>

			</div>


		</div>

	</div>



</body>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>


</html>