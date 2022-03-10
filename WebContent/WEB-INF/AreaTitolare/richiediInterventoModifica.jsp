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


			<div class="row">
				<div class="col-sm"></div>

				<div class="col-lg-6">
					<!-- General Element -->
					<div class="card mb-4">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Gestione
								Prenotazione</h6>
						</div>
						<div class="card-body" style="text-align: center;">

							<s:form method="post" theme="simple"
								action="AggiungiInterventoModifica">


								<div class="form-group">
									<label>ID Prenotazione</label> <br>
									<s:property value="%{pre.idprenota}" />
									<s:hidden name="idprenota" value="%{pre.idprenota}" />
								</div>


								<hr>

								<div class="form-group">
									<label>Effettuata da:</label> <br>
									<s:property value="cli.nome" />
								</div>

								<hr>

								<div class="form-group">
									<label>Descrizione:</label> <br>
									<s:property value="pre.descrizione" />
								</div>

								<hr>

								<div class="form-group">
									<label>Prezzo:</label>
									<s:textfield class="form-control" name="prezzo" id="prezzo" />
								</div>


								<hr>

								<div class="form-group">
									<label>Meccanico:</label>

									<s:select name="mec1" list="mec" listKey="idmeccanico"
										listValue="cognome" />
								</div>

								<hr>

								<div class="form-group">
									<label>Meccanico2:</label>

									<s:select name="mec2" list="mec" listKey="idmeccanico"
										listValue="cognome" />
								</div>

								<hr>

								<div class="form-group">
									<label>Data in cui verrà eseguito</label>
									<s:textfield type="date" name="data" />
								</div>

								<div class="form-group">
									<label>Omologazione:</label>
									<s:select name="omologazione" list="#{'Si':'Si', 'No':'No'}" />
								</div>

								<div class="form-group">
									<label>Tipo di modifica:</label> <br>
									<textarea name="tipoModifica" rows="" cols=""></textarea>
								</div>



								<button type="submit" class="btn btn-primary btn-block"
									onclick="validaPrezzo(prezzo)">Conferma</button>


							</s:form>

						</div>
						<hr>
					</div>
				</div>
				<div class="col-sm"></div>

			</div>

		</div>


	</div>



</body>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>
<script type="text/javascript">

function validaPrezzo(prezzo) {
	var regexp = /^\d*\,?\d*$/;
	if(prezzo.value.match(regexp)){
		return true;
	}else{
		alert("Inserisci un prezzo valido");

		return false;

	}

	return regexp.match(prezzo);
}



</script>

</html>
