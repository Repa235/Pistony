<!doctype html>
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
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">

				<h1 class="h2">Gestione Clienti</h1>
			<div class="btn-toolbar mb-2 mb-md-0">
				
				</div>
			</div>

		<!-- Row -->
<!-- 		<div class="row">
				<div class="col-lg-12"> -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Elenco
								Clienti</h6>
						</div>
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">
								<thead class="thead-light">
									<tr>
										<th>Nome</th>
										<th>Cognome</th>
										<th>Email</th>
										<th>Telefono</th>
										<th>CodiceFiscale/PartitaIva</th>
										<th>Via</th>
										<th>Civico</th>
								
										

									</tr>
								</thead>
								<tbody>
									<s:iterator value="clienti">
										<tr>
											<td><s:property value="getNome()" /></td>
											<td><s:property value="getCognome()" /></td>
											<td><s:property value="getAccountcliente().getEmail()" /></td>
											<td><s:property value="getTelefono()" /></td>
											<td><s:property value="getCfPiva()" /></td>
											<td><s:property value="getIndirizzo().getVia()" /></td>
											<td><s:property value="getIndirizzo().getCivico()" /></td>

										</tr>
									</s:iterator>
								</tbody>
							
							</table>
						</div>
					</div>
</div>
</div>
</body>
<!-- Footer -->
		<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>

      
</html>

