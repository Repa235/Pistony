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
<title>Pistony - AreaTitolare</title>

</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/WEB-INF/AreaTitolare/menu&headerTitolare.jsp"%>
		<!-- Sidebar -->


		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">
			<div class="col-lg-12">
				<!-- Tabella ordini -->
				<div class="card mb-4">
					<div
						class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
						<h6 class="m-0 font-weight-bold text-primary">Ordini</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive p-3">
							<div class="table-responsive">
								<table class="table align-items-center table-flush table-hover"
									id="dataTableHover">
									<thead class="thead-light">
										<tr>
											<th>ID dell'ordine</th>
											<th>Cliente</th>
											<th>Data Acquisto</th>
											<th>Dettagli</th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="listaAcquisti">
											<tr>
												<td><s:property value="id.idacquisto" /> </a></td>
												<td><s:iterator value="listaClienti">
														<s:if test="%{id.idcliente==idcliente}">
															<s:property value="nome" />
															<s:property value="cognome" />

														</s:if>

													</s:iterator></td>
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
		</div>
	</div>
</body>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>





</html>
