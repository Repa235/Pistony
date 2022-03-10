<!doctype html>
<html lang="en">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.titolare.Titolare"%>
<%@ page import="it.unirc.pistony.pojo.Accounttitolare.Accounttitolare"%>
<%@ page import="it.unirc.pistony.pojo.Cliente.*"%>
<%@ page import="it.unirc.pistony.pojo.Prenota.*"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Header cliente</title>
<link href="/assets/adminpage/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/css/ruang-admin.min.css" rel="stylesheet">
<link
	href="/assets/adminpage/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	</head>
	<div class="header">
	<div class="img-shop">
		<img alt="" src="/assets/img/imgHome/banner-shop.jpg" style="width: 100%">
	</div>
</div>
<body id="page-top">
	<div id="wrapper">




		<!-- Container Fluid-->
		<div class="container-fluid" id="container-wrapper">
			

			<div class="row">	
						  
			<div class="col-sm"></div>
				<div class="col-lg-6" style="top: 20%;">
					<div class="card mb-4" style="margin-top: 10%;">
						<div class="table-responsive p-3">
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h4 class="m-0 font-weight-bold text-primary">Carrello</h4>
						</div>
												<div class="card-body">
						<div class="input-group mb-3"></div>
							<div class="input-group mb-3">
								<div class="input-group-append"></div>
							</div>
								<div class="input-group mb-3"></div>
								
								<s:if test="%{carrello.size()!=0}">
							<table class="table table-sm">
								<thead class="thead-light">
									<tr>
										<th>Id del prodotto</th>
										<th>Nome del prodotto</th>
										<th>Marca del prodotto</th>
										<th>Quantità richiesta</th>
										<th>Prezzo del prodotto</th>
										<th>Elimina</th>
									</tr>
								</thead>
								<tbody>
							
									<s:iterator value="carrello">
										<tr>
											<td><s:property value="c.idcomponente" /></td>
											<td><s:property value="c.nome" /></td>
											<td><s:property value="c.marca" /></td>
											<td><s:property value="quantRichiesta" /></td>
											<td><s:property value="c.prezzo" /></td>
											<td> <a href="/AreaCliente/EliminaDalCarrello?idProdElim=<s:property value="c.idcomponente" />" class="btn btn-sm btn-outline-secondary"> Elimina </a></td>
										</tr>
									</s:iterator>

								</tbody>
									</s:if>
									<s:else>
									<h2> Attualmente il carrello è vuoto, torna indietro per selezionare dei prodotti da acquistare  </h2>
									</s:else>
							</table>
														<div class="input-group mb-3"></div>
							
						</div>
					</div>
					<br>
					<s:if test="%{carrello.size()!=0}">
								<div>
						
				<a href="/AreaCliente/SuccessoAcquisto" class="btn btn-primary btn-block"> Procedi al pagamento</a>
		
			</div>
			</s:if>
					<br>
					<div>
				<a href="/Shop" class="btn btn-primary btn-block" style="padding-top: 1%;margin-top: 1%;"> Torna indietro</a>
			</div>
					</div>
					</div>
						  <div class="col-sm"></div>
				
			</div>
		</div>
		</div>
		</body>
		</html>
<!-- Footer -->
<div style="margin-top: 10%;">
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>
</div>
	
