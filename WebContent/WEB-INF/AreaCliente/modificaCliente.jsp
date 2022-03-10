<!doctype html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.Cliente.Cliente"%>
<%@ page import="it.unirc.pistony.pojo.Accountcliente.Accountcliente"%>


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="img/logo/logo.png" rel="icon">
<title>Pistony - AreaCLiente</title>

</head>
<body id="page-top">
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/WEB-INF/AreaCliente/menu&headerCliente.jsp"%>
		<!-- Sidebar -->


		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">


			<div class="row">
				<div class="col-sm"></div>

				<div class="col-lg-6">
					<!-- General Element -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" >Dati personali</h6>
						</div>
						<div class="card-body" >
							<s:form method="post" theme="simple" action="ModificaCliente">
								<s:hidden name="c.idcliente" value="%{cliente.idcliente}" />
								

								<div class="form-group" theme="simple">
									<label>Nome</label>
									<s:textfield cssClass="form-control" name="c.nome" value="%{cliente.nome}" />
									<s:fielderror fieldName="nome_vuoto" />
								</div>

								<div class="form-group" theme="simple">
									<label>Cognome</label>
									<s:textfield cssClass="form-control" name="c.cognome" value="%{cliente.cognome}" />
									<s:fielderror fieldName="cognome_vuoto" />
								</div>

								<div class="form-group" theme="simple">
									<label>Email</label>
									<s:textfield cssClass="form-control" name="ac.email"
										value="%{cliente.accountcliente.email}"/>
										<s:fielderror fieldName="email_no" />
								</div>
								
								
								<div class="form-group" theme="simple">
									<label>Telefono</label>
									<s:textfield cssClass="form-control" name="c.telefono"
									value="%{cliente.telefono}" />
								<s:fielderror fieldName="telefono_vuoto" />
								</div>

								<div class="form-group">
									<label>CodiceFiscale/PartitaIva</label>
									<s:textfield cssClass="form-control" name="c.cfPiva" value="%{cliente.cfPiva}" />
									<s:fielderror fieldName="cfpiva_vuoto" />
								</div>

								<div class="form-group">

									<div class="form-group">
										<label>Via:</label>

										<s:textfield cssClass="form-control" name="c.indirizzo.via"
											value="%{cliente.indirizzo.via}" />
									</div>

									<div class="form-group">
										<label>Civico</label>

										<s:textfield cssClass="form-control" name="c.indirizzo.civico"
											value="%{cliente.indirizzo.civico}" />
									</div>

								</div>

								<div class="form-group">
									<label>Password</label>

									<s:textfield type="password" cssClass="form-control" name="ac.password"
										value="%{cliente.accountcliente.password}" />
										<s:fielderror fieldName="password_debole" />
								</div>

								<div class="form-group" >
									<label>Conferma Password</label>

									<s:textfield type="password" cssClass="form-control" name="conferma" />

									<s:fielderror fieldName="login_vuoto" />
									<s:fielderror fieldName="conferma_incoerente" />
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