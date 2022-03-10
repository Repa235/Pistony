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

		<div class="container-fluid" id="container-wrapper">
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">

				<h1 class="h2">Gestione Dipendenti</h1>
				<div class="btn-toolbar mb-2 mb-md-0"></div>
			</div>

			<!-- Row -->
			<div class="row">
				<div class="col-lg-12">

					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">


						<div class="btn-toolbar mb-2 mb-md-0"></div>
					</div>
					<div class="card col-lg-12">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Modifica
								Dipendenti</h6>
						</div>
						<div class="table-responsive p-3">
							<table class="table align-items-center table-flush table-hover"
								id="dataTableHover">

								<s:form theme="simple" method="post" action="ModificaDipendente">
									<div class="row">
										<div class="col">
											<p>Nome:</p>
											<s:hidden name="meccanico.idmeccanico"
												value="%{m.idmeccanico}"></s:hidden>
											<s:textfield cssClass="form-control" name="meccanico.nome"
												value="%{m.nome}" />
											<s:fielderror fieldName="meccanico.nome" />
										</div>
										<div class="col">
											<p>Cognome:</p>
											<s:textfield cssClass="form-control" name="meccanico.cognome"
												value="%{m.cognome}" />
											<s:fielderror fieldName="meccanico.cognome" />
										</div>
										<div class="col">
											<label>Data di assunzione</label>
											<s:textfield id="datepicker" cssClass="form-control"
												name="meccanico.dataAssunzione" value="%{m.dataAssunzione}"
												placeholder="" type="date" />
											<s:fielderror fieldName="meccanico.dataAssunzione"></s:fielderror>
										</div>
										<div class="col">
											<p>Indirizzo:</p>
											<s:textfield cssClass="form-control"
												name="meccanico.indirizzo" value="%{m.indirizzo}" />
											<s:fielderror fieldName="meccanico.indirizzo" />
										</div>
										<div class="col">
											<p>Tipologia contratto:</p>
											<div class="input-group mb-3">
												<div class="input-group-prepend"></div>
												<s:select label="Categoria" headerKey="%{m.tipoContratto}"
													headerValue="%{m.tipoContratto}"
													list="#{'FullTime':'Full Time', 'PartTime':'Part Time'}"
													name="meccanico.tipoContratto">

												</s:select>
											</div>
											<s:fielderror fieldName="meccanico.tipoContratto" />
										</div>
										<div class="col">
											<p>Settore:</p>
											<div class="input-group mb-3">
												<div class="input-group-prepend"></div>
												<s:select label="Settore" headerKey="%{m.settore}"
													headerValue="%{m.settore}"
													list="#{'Elettrauto':'Elettrauto', 'Gommista':'Gommista', 'Meccanico':'Meccanico', 'Carrozziere':'Carrozziere'}"
													name="meccanico.settore">

												</s:select>
											</div>
											<s:fielderror fieldName="meccanico.settore" />
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