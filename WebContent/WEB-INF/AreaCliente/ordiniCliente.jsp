<!doctype html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="img/logo/logo.png" rel="icon">
<title>Pistony - Ordini</title>

</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/WEB-INF/AreaCliente/menu&headerCliente.jsp"%>
		<!-- Sidebar -->


		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">
			

			<div class="row">				  <div class="col-sm"></div>
			
				<div class="col-lg-6">
					<!-- Tabella ordini -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">I tuoi ordini
								recenti</h6>
						</div>
						<div class="card-body">
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

												<td></td>


											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>				  <div class="col-sm"></div>
				
			</div>

		</div>
	</div>

<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>

