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
				<h1 class="h3 mb-0 text-gray-800">
					Benvenuto <a class="h2"> <s:property value="%{titolare.nome}" />
						<s:property value="%{titolare.cognome}" /><br> <br>Questa
						&#232 la Dashboard
					</a>
				</h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="./">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
				</ol>
			</div>

			<div class="row mb-3">
				<!-- Earnings (Monthly) Card Example -->
				<!-- meccanici assunti -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card h-100">
						<div class="card-body">
							<div class="row align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-uppercase mb-1">
										Meccanici assunti</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">
										<s:property value="n_meccanici" />
									</div>

								</div>
								<div class="col-auto">
									<i class="fas fa fa-shopping-cart fa-2x text-success"></i>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!--interventi eseguiti -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card h-100">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-uppercase mb-1">
										Interventi eseguiti</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">
										<s:property value="n_interventi" />
									</div>

								</div>
								<div class="col-auto">
									<i class="fas fa fa-car fa-2x text-info"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Utenti registrati -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card h-100">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-uppercase mb-1">Utenti
										regitrati al sito</div>
									<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
										<s:property value="n_clienti" />
									</div>
									<div class="mt-2 mb-0 text-muted text-xs"></div>
								</div>
								<div class="col-auto">
									<i class="fas fa-users fa-2x text-success"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- prenotazioni -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card h-100">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-uppercase mb-1">
										Prenotazioni totali</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">
										<s:property value="n_prenotazioni" />
									</div>

								</div>
								<div class="col-auto">
									<i class="fas fa-comments fa-2x text-warning"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Invoice Example -->
				<div class="col-xl-8 col-lg-7 mb-4">
					<div class="card">

						<div class="table-responsive p-3">
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
						<div class="card-footer"></div>
					</div>
				</div>
				<!-- Message From Customer-->
				<div class="col-xl-4 col-lg-5 ">
					<div class="card">
						<div
							class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-light">Nuovi messaggi dai
								clienti</h6>
						</div>
						<div>

							<s:iterator value="listaPrenotazioni">
								<div class="customer-message align-items-center">
									<a class="font-weight-bold" href="/AreaTitolare/VisualizzaPrenotazioni">
										<div class="text-truncate message-title">
											ID:
											<s:property value="idprenota" />
										</div>
										<div class="text-truncate message-title">
											<s:property value="descrizione" />
										</div>
										<div class="small text-gray-500 message-time font-weight-bold">
											<s:iterator value="listaClienti">
												<s:if test="%{cliente.idcliente==idcliente}">
													<s:property value="nome" />
													<s:property value="cognome" />
													</s:if>
													</s:iterator>
										</div> 
									</a>
								</div>
							</s:iterator>
							<div class="card-footer text-center">
								<a class="m-0 small text-primary card-link" href="/AreaTitolare/VisualizzaPrenotazioni">Vedi altro <i class="fas fa-chevron-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Row-->

			<div class="row">

				<!-- DataTable with Hover -->
				<div class="col-lg-12">
					<div class="card mb-4">
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
									</tr>
								</thead>

								<tbody>
									<s:iterator value="componenti">

										<tr>
											<td><s:property value="getIdcomponente()" /></td>
											<td><s:property value="getCategoria()" /></td>
											<td><s:property value="getNome()" /></td>
											<td><s:property value="getMarca()" /></td>
											<td>&euro; <s:property value="getPrezzo()" />
											</td>
											<td><s:property value="getQuantDisponibile()" /></td>


										</tr>
									</s:iterator>

								</tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="/assets/adminpage/js/ruang-admin.min.js"></script>
	<script src="/assets/vendor/chart.js/Chart.min.js"></script>
	<script>
		//Set new default font family and font color to mimic Bootstrap's default styling
				Chart.defaults.global.defaultFontFamily = 'Nunito',
				'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
		Chart.defaults.global.defaultFontColor = '#858796';
		function number_format(number, decimals, dec_point, thousands_sep) {
			// *     example: number_format(1234.56, 2, ',', ' ');
			// *     return: '1 234,56'
			number = (number + '').replace(',', '').replace(' ', '');
			var n = !isFinite(+number) ? 0 : +number, prec = !isFinite(+decimals) ? 0
					: Math.abs(decimals), sep = (typeof thousands_sep === 'undefined') ? ','
					: thousands_sep, dec = (typeof dec_point === 'undefined') ? '.'
					: dec_point, s = '', toFixedFix = function(n, prec) {
				var k = Math.pow(10, prec);
				return '' + Math.round(n * k) / k;
			};
			// Fix for IE parseFloat(0.55).toFixed(0) = 0;
			s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
			if (s[0].length > 3) {
				s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
			}
			if ((s[1] || '').length < prec) {
				s[1] = s[1] || '';
				s[1] += new Array(prec - s[1].length + 1).join('0');
			}
			return s.join(dec);
		}

		// Area Chart Example
		var ctx = document.getElementById("myAreaChart");
		var myLineChart = new Chart(
				ctx,
				{
					type : 'line',
					data : {
						labels : [ "Jan", "Feb", "Mar", "Apr", "May", "Jun",
								"Jul", "Aug", "Sep", "Oct", "Nov", "Dec" ],
						datasets : [ {
							label : "Earnings",
							lineTension : 0.3,
							backgroundColor : "rgba(78, 115, 223, 0.5)",
							borderColor : "rgba(78, 115, 223, 1)",
							pointRadius : 3,
							pointBackgroundColor : "rgba(78, 115, 223, 1)",
							pointBorderColor : "rgba(78, 115, 223, 1)",
							pointHoverRadius : 3,
							pointHoverBackgroundColor : "rgba(78, 115, 223, 1)",
							pointHoverBorderColor : "rgba(78, 115, 223, 1)",
							pointHitRadius : 10,
							pointBorderWidth : 2,
							data : [ 0,1000, 5000, 1200, 10000, 1200,
									15000, 25000, 20000, 30000, 25000, 40000 ],
						} ],
					},
					options : {
						maintainAspectRatio : false,
						layout : {
							padding : {
								left : 10,
								right : 25,
								top : 25,
								bottom : 0
							}
						},
						scales : {
							xAxes : [ {
								time : {
									unit : 'date'
								},
								gridLines : {
									display : false,
									drawBorder : false
								},
								ticks : {
									maxTicksLimit : 7
								}
							} ],
							yAxes : [ {
								ticks : {
									maxTicksLimit : 5,
									padding : 10,
									// Include a dollar sign in the ticks
									callback : function(value, index, values) {
										return '$' + number_format(value);
									}
								},
								gridLines : {
									color : "rgb(234, 236, 244)",
									zeroLineColor : "rgb(234, 236, 244)",
									drawBorder : false,
									borderDash : [ 2 ],
									zeroLineBorderDash : [ 2 ]
								}
							} ],
						},
						legend : {
							display : false
						},
						tooltips : {
							backgroundColor : "rgb(255,255,255)",
							bodyFontColor : "#858796",
							titleMarginBottom : 10,
							titleFontColor : '#6e707e',
							titleFontSize : 14,
							borderColor : '#dddfeb',
							borderWidth : 1,
							xPadding : 15,
							yPadding : 15,
							displayColors : false,
							intersect : false,
							mode : 'index',
							caretPadding : 10,
							callbacks : {
								label : function(tooltipItem, chart) {
									var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
											|| '';
									return datasetLabel + ': $'
											+ number_format(tooltipItem.yLabel);
								}
							}
						}
					}
				});
	</script>

</body>
<!-- Footer -->
<%@ include file="/WEB-INF/AreaTitolare/footer.jsp"%>



</html>
