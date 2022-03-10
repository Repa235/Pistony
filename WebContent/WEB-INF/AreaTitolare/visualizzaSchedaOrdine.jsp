<!doctype html>
<%@page import="it.unirc.pistony.pojo.Componente.ComponenteDAOFactory"%>
<%@page import="it.unirc.pistony.pojo.Componente.ComponenteDAO"%>
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
		<%@ include file="/WEB-INF/AreaTitolare/menu&headerTitolare.jsp"%>
		<!-- Sidebar -->


		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">
					Scheda ordine n°
					<s:property value="a1.getId().getIdacquisto()" />
					<br> <br>
					<s:iterator value="listaDeiClienti">
						<s:if test="%{a1.getId().getIdcliente()==idcliente}">
					effettuato da: <s:property value="nome" />
							<s:property value="cognome" />
						</s:if>
					</s:iterator>
					<br> <br> in data
					<s:property value="a1.getData()" />
				</h1>
				<br>
			</div>

			<div>
				<s:set var="totale" value="0" />
				<s:iterator value="listacomponentiacquistati">
					<s:set var="totale"
						value="%{#totale+acquisto.quantAcquistata*componente.prezzo}" />
				</s:iterator>
				<h1>
					<s:label name="totale" value="%{#totale}" label="Totale acquisto " />
					&euro;
				</h1>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<!-- Tabella ordine dove si vedono i componenti -->
					<div class="card mb-4">
						<div class="card-body">
							<div class="table-responsive p-3">
								<div class="table-responsive">
									<table class="table align-items-center table-flush table-hover">
										<thead class="thead-light">
											<tr>
												<th>Codice prodotto acquistato</th>
												<th>Nome e marca prodotto</th>
												<th>Prezzo singolo(&euro;)</th>
												<th>Quantità acquistata</th>
												<th>Prezzo totale(&euro;)</th>
											</tr>
										</thead>
										<tbody>
											<s:iterator value="listacomponentiacquistati">
												<tr>
													<td><s:property value="acquisto.id.idcomponente" /></td>
													<td><s:property value="componente.nome" /> <s:property
															value="componente.marca" /></td>
													<td>&euro; <s:property value="componente.prezzo" /></td>
													<td><s:property value="acquisto.quantAcquistata" /></td>
													<td>&euro; <s:property
															value="%{acquisto.quantAcquistata*componente.prezzo}" /></td>

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
		</div>
	</div>
</body>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>





</html>
