<!doctype html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.titolare.Titolare"%>
<%@ page import="it.unirc.pistony.pojo.Accounttitolare.Accounttitolare"%>
<%@ page import="it.unirc.pistony.pojo.Cliente.*"%>
<%@ page import="it.unirc.pistony.pojo.Prenota.*"%>


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
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">

				<h1 class="h2">Elenco delle prenotazioni</h1>
				<div class="btn-toolbar mb-2 mb-md-0"></div>
			</div>

			<!-- Row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-4">
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">
								<thead class="thead-light">
									<tr>
										<th>Id della prenotazione</th>
										<th>Descrizione del problema</th>
										<th></th>
										<th></th>




									</tr>
								</thead>
								<tbody>
									<s:iterator value="prenotazioni" >
										<tr>	
											<td><s:property value="idprenota" /></td>
											<td><s:property value="descrizione" /></td>
											<td><a type="button"
												class="btn btn-sm btn-outline-secondary"
												href="/AreaTitolare/RIchiediInterventoRiparazione?pre.idprenota=<s:property value="idprenota" />">Riparazione
											</a></td>
											<td><a type="button"
												class="btn btn-sm btn-outline-secondary"
												href="/AreaTitolare/RIchiediInterventoModifica?pre.idprenota=<s:property value="idprenota" />">Modifica
											</a></td>
										</tr>
									
									</s:iterator>
								
								</tbody>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>


</html>

