<!doctype html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.Componente.Componente"%>


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


		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">

				<h1 class="h2">Gestione Prodotti</h1>
				<div class="btn-toolbar mb-2 mb-md-0"></div>
			</div>

			<!-- Row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Elenco
								Prodotti</h6>
						</div>
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">
								<thead class="thead-light">
									<tr>
										<th>ID Prodotto</th>
										<th>Categoria</th>
										<th>Nome</th>
										<th>Marca</th>
										<th>Prezzo</th>
										<th>Quantità disponibile</th>
										<th></th>
									</tr>
								</thead>

								<tbody>
									<s:iterator value="componenti">

										<tr>
											<td><s:property value="getIdcomponente()" /></td>


											<s:if test="getCategoria()==1">
												<td><s:property value="" /> Oli e liquidi</td>
											</s:if>
											<s:if test="getCategoria()==2">
												<td><s:property value="" /> Pneumatici</td>
											</s:if>
											<s:if test="getCategoria()==3">
												<td><s:property value="" /> Freni</td>
											</s:if>
											<s:if test="getCategoria()==4">
												<td><s:property value="" />
													Accensione/Preriscaldamento</td>
											</s:if>
											<s:if test="getCategoria()==5">
												<td><s:property value="" /> Filtro</td>
											</s:if>
											<s:if test="getCategoria()==6">
												<td><s:property value="" /> Motore</td>
											</s:if>
											<s:if test="getCategoria()==7">
												<td><s:property value="" /> Ammortizzatori</td>
											</s:if>
											<s:if test="getCategoria()==8">
												<td><s:property value="" /> Sospensioni</td>
											</s:if>
											<s:if test="getCategoria()==9">
												<td><s:property value="" /> Carrozzeria</td>
											</s:if>
											<s:if test="getCategoria()==10">
												<td><s:property value="" /> Sterzo</td>
											</s:if>


											<td><s:property value="getNome()" /></td>
											<td><s:property value="getMarca()" /></td>
											<td>&euro; <s:property value="getPrezzo()" />
											</td>
											<td><s:property value="getQuantDisponibile()" /></td>
											<td><s:form method="post" action="EliminaProdotto">
													<s:hidden name="idComponente" value="%{idcomponente}" />
													<s:submit type="button"
														class="btn btn-sm btn-outline-secondary">Elimina</s:submit>
												</s:form></td>


										</tr>
									</s:iterator>

								</tbody>
								</tbody>
							</table>
						</div>
					</div>


					<!-- DataTable with Hover -->

					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">


						<div class="btn-toolbar mb-2 mb-md-0"></div>
					</div>


					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">


						<div class="btn-toolbar mb-2 mb-md-0"></div>
					</div>
					<div class="card col-lg-12">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Modifica
								Prodotti</h6>
						</div>
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">

								<s:form theme="simple" method="post" action="ModificaProdotto">
									<div class="row">
										<div class="col">
											<s:hidden name="c.idcomponente" value="%{componente_damodificare.idcomponente}"></s:hidden>
											<label>Nome del prodotto</label>
											<s:textfield cssClass="form-control" name="c.nome"
												placeholder="Nome Prodotto"
												value="%{componente_damodificare.nome}" />
											<s:fielderror fieldName="compnom" />
										</div>
										<div class="col">
											<label>Marca del prodotto</label>
											<s:textfield cssClass="form-control" name="c.marca"
												placeholder="Marca Prodotto"
												value="%{componente_damodificare.marca}" />
											<s:fielderror fieldName="compmarc" />
										</div>
										<div class="col">
											<label>Prezzo del prodotto</label>
										<s:textfield cssClass="form-control" name="c.prezzo"
												 type="string" pattern="^\d*\,?\d*$" />
											<s:fielderror fieldName="compprezz" />
										</div>
										<div class="col">
											<label>Quantità disponibile del prodotto</label>
											<s:textfield cssClass="form-control"
												name="c.quantDisponibile" type="number" value="0" min="0" />
											<s:fielderror fieldName="compquant" />

										</div>
										<div class="col">
											<label>Categoria del prodotto</label>
											<div class="input-group mb-3">

												<s:select class="form-control form-control-sm mb-3"
													label="Categoria"
													headerKey="%{componente_damodificare.categoria}"
													headerValue="Seleziona categoria"
													list="#{'1':'Oli e liquidi', '2':'Pneumatici', '3':'Freni', '4':'Acc/Pre', '5':'Filtro', '6':'Motore', '7':'Ammortizz.', '8':'Sospensioni', '9':'Carrozzeria', '10':'Sterzo'}"
													name="c.categoria">

												</s:select>
												<s:fielderror fieldName="compcat" />
											</div>
										</div>
										<div class="col">
											<s:submit type="button"
												class="btn btn-sm btn-outline-secondary">Modifica</s:submit>
										</div>

									</div>

								</s:form>
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