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
<title>Pistony - AreaCliente</title>

</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/WEB-INF/AreaCliente/menu&headerCliente.jsp"%>
		<!-- Sidebar -->


		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">Area Personale</h1>

			</div>

			<div class="row">
				<div class="col-lg-12">
					<!-- Tabella ordini -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">I tuoi ordini
								recenti</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive p-3">
								<div class="table-responsive">
									<table class="table align-items-center table-flush table-hover"
										id="dataTableHover">
										<thead class="thead-light">
											<tr>
												<th>ID dell'ordine</th>
												<th>Data Acquisto</th>
												<th>Dettagli</th>
											</tr>
										</thead>
										<tbody>
											<s:iterator value="listaAcquistiCliente">
												<tr>
													<td><a href="#"> <s:property value="id.idacquisto" />
													</a></td>
													<td><s:property value="data" /></td>
													<td><a
														href="VisualizzaSchedaOrdine?id=<s:property value="id.idacquisto"/>"
														class="btn btn-sm btn-primary">Dettagli</a></td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>

				<div class="col-lg-4">
					<!-- Pannello dati personali sulla destra -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Dati personali</h6>
						</div>
						<div class="card-body">
							<div>
								Nome e Cognome:
								<h3>
									<s:property value="cliente.nome" />
									<s:property value="cliente.cognome" />
								</h3>
							</div>
							<div>
								Email:
								<h3>
									<s:property value="cliente.accountcliente.email" />
								</h3>
							</div>
							<div>
								Codice fiscale o partita iva:
								<h3>
									<s:property value="cliente.cfPiva" />
								</h3>
							</div>
							<div>
								Telefono:
								<h3>
									<s:property value="cliente.telefono" />
								</h3>
							</div>
							<div>
								Indirizzo:
								<h3>
									<s:property value="cliente.indirizzo.via" />
									<s:property value="cliente.indirizzo.civico" />

								</h3>
							</div>
						</div>
					</div>
				</div>

				<!-- Input Group -->
				<div class="col-lg-8">

					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Effettua una
								prenotazione</h6>
						</div>
						<div class="card-body">
							<label>Inserisci una breve descrizione del tuo problema </label>
							<p> Max 400 caratteri </p>
							<div class="form-group">
								<s:form action="Inserisciprenota" method="post">
									<s:hidden name="cliente.idcliente" value="%{cliente.idcliente}" />
									<s:textarea id="exampleFormControlTextarea1" theme="simple"
										class="form-control" name="descrizione" rows="5"
										maxlength="400" />
										<s:fielderror name="descrizione"></s:fielderror>



									<div class="col-sm-10 col-xl-2 offset-xl-0">
										<s:submit class="btn btn-primary" value="Invia" />
									</div>

								</s:form>
							</div>
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
