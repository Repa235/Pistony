<!doctype html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.Meccanico.Meccanico"%>


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
				<h1 class="h2">Gestione Dipendenti</h1>
				<div class="btn-toolbar mb-2 mb-md-0"></div>
			</div>
			<!-- Row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Elenco
								Dipendenti</h6>
						</div>
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">
								<thead class="thead-light">
									<tr>
										<th>ID Dipendente</th>
										<th>Nome</th>
										<th>Cognome</th>
										<th>Data Assunzione</th>
										<th>Indirizzo</th>
										<th>Tipo Contratto</th>
										<th>Settore</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="meccanici">
										<tr>
											<td><s:property value="getIdmeccanico()" /></td>
											<td><s:property value="getNome()" /></td>
											<td><s:property value="getCognome()" /></td>
											<td><s:property value="getDataAssunzione()" /></td>
											<td><s:property value="getIndirizzo()" /></td>
											<td><s:property value="getTipoContratto()" /></td>
											<td><s:property value="getSettore()" /></td>
											<td><a
												href="RichiediModificaDipendente?m.idmeccanico=<s:property value="getIdmeccanico()"/>">
													<button type="button"
														class="btn btn-sm btn-outline-secondary">Modifica</button>
											</a></td>
											<td><s:form theme="simple" method="post"
													action="EliminaDipendente">
													<s:hidden name="idMeccanico" value="%{idmeccanico}" />
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
					<!-- FORM PER AGGIUNGERE DIPENDENTI -->

					<div class="card col-lg-12">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Aggiungi
								Dipendenti</h6>
						</div>
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">

								<s:form theme="simple" method="post" action="AggiungiDipendenti">

									<div class="row">

										<div class="col">
											<label>Nome del meccanico</label>
											<s:textfield cssClass="form-control" name="meccanico.nome"
												placeholder="" />
											<s:fielderror fieldName="meccanico.nome"></s:fielderror>
										</div>
										<div class="col">
											<label>Cognome del meccanico</label>
											<s:textfield cssClass="form-control" name="meccanico.cognome"
												placeholder="" />
											<s:fielderror fieldName="meccanico.cognome"></s:fielderror>
										</div>
										<div class="col">
											<label>Data di assunzione</label>
											<s:textfield id="datepicker" cssClass="form-control"
												name="meccanico.dataAssunzione" placeholder="" type="date" />
											<s:fielderror fieldName="meccanico.dataAssunzione"></s:fielderror>
										</div>
										<div class="col">
											<label>Indirizzo</label>
											<s:textfield cssClass="form-control"
												name="meccanico.indirizzo" placeholder="" />
											<s:fielderror fieldName="meccanico.indirizzo"></s:fielderror>
										</div>
										<div class="col">
											<label>Tipo di contratto</label>
											<div class="input-group mb-3">
												<s:select class="form-control form-control-sm mb-3"
													label="Categoria" headerKey=""
													headerValue="Seleziona tipo di contratto"
													list="#{'FullTime':'Full Time', 'PartTime':'Part Time'}"
													name="meccanico.tipoContratto">
												</s:select>
											</div>
											<s:fielderror fieldName="meccanico.tipoContratto" />
										</div>
										<div class="col">
											<label>Settore operativo</label>
											<div class="input-group mb-3">
												<s:select class="form-control form-control-sm mb-3"
													label="Seleziona settore" headerKey=" "
													requiredLabel="true" headerValue="Seleziona settore"
													list="#{'Elettrauto':'Elettrauto', 'Gommista':'Gommista', 'Meccanico':'Meccanico', 'Carrozziere':'Carrozziere'}"
													name="meccanico.settore">
												</s:select>
											</div>
											<s:fielderror fieldName="meccanico.settore" />
										</div>
										<div class="col">
											<s:submit type="button"
												class="btn btn-sm btn-outline-secondary">Aggiungi</s:submit>
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