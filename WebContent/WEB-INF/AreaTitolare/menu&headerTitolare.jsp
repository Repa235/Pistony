<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.titolare.Titolare"%>
<%@ page import="it.unirc.pistony.pojo.Accounttitolare.Accounttitolare"%>


<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/assets/adminpage/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/css/ruang-admin.min.css" rel="stylesheet">
<link
	href="/assets/adminpage/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>

<ul class="navbar-nav sidebar sidebar-light accordion"
	id="accordionSidebar">

	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="<%=request.getContextPath()%>/Home"> HomePage Pistony</a>

	<hr class="sidebar-divider my-0">
	<li class="nav-item active"><a class="nav-link"
		href="/AreaTitolare/ProfiloTitolare"> <i
			class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
	<hr class="sidebar-divider">
	<div class="sidebar-heading">Features</div>
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseBootstrap"
		aria-expanded="true" aria-controls="collapseBootstrap"> <i
			class="far fa-fw fa fa-users"></i> <span>Gestione utenze</span>
	</a>
		<div id="collapseBootstrap" class="collapse"
			aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Gestione utenti</h6>
				<a class="collapse-item" href="/AreaTitolare/VisualizzaClienti">Clienti</a>
				<a class="collapse-item" href="/AreaTitolare/GestioneDipendente">Dipendenti</a>

			</div>
		</div></li>
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseForm"
		aria-expanded="true" aria-controls="collapseForm"> <i
			class="fab fa-fw fa fa-shopping-cart"></i> <span>Vendite e
				servizi</span>
	</a>
		<div id="collapseForm" class="collapse" aria-labelledby="headingForm"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Gestione vendite</h6>
				<a class="collapse-item" href="/AreaTitolare/GestioneProdotti">Prodotti</a>
				<a class="collapse-item" href="/AreaTitolare/VisualizzaOrdini">Ordini</a>



			</div>
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Gestione Interventi</h6>
				<a class="collapse-item" href="/AreaTitolare/VisualizzaPrenotazioni">Prenotazioni</a>
				<a class="collapse-item" href="/AreaTitolare/VisualizzaRiparazioni">Riparazioni</a>
				<a class="collapse-item" href="/AreaTitolare/VisualizzaModifiche">Modifiche</a>


			</div>
		</div></li>
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseTable"
		aria-expanded="true" aria-controls="collapseTable"> <i
			class="fas fa-fw fa fa-user"></i> <span>Gestione Titolare</span>
	</a>
		<div id="collapseTable" class="collapse"
			aria-labelledby="headingTable" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Modifica Credenziali</h6>
				<a class="collapse-item"
					href="/AreaTitolare/RichiediModificaTitolare?titolare.idtitolare=1">Modifica
					Dati Admin</a>
			</div>
		</div></li>

	<hr class="sidebar-divider">



</ul>

<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabelLogout" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabelLogout">LOGOUT</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>Vuoi effettuare il logout?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-primary"
					data-dismiss="modal">Annulla</button>
				<a href="<%=request.getContextPath()%>/Logout"
					class="btn btn-primary">Logout</a>
			</div>
		</div>
	</div>
</div>
<div id="content-wrapper" class="d-flex flex-column">
	<div id="content">
		<!-- TopBar -->
		<nav
			class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">

			<button id="sidebarToggleTop"
				class="btn btn-link rounded-circle mr-3">
				<i class="fa fa-bars"></i>
			</button>

			<ul class="navbar-nav ml-auto">

				<div class="topbar-divider d-none d-sm-block"></div>
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img class="img-profile rounded-circle"
						src="/assets/img/imgHome/user.png" style="max-width: 60px">
						<span class="ml-2 d-none d-lg-inline text-white small"><s:property
								value="%{titolare.nome}" /> <s:property
								value="%{titolare.cognome}" /></span>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">

						<a class="dropdown-item"
							href="/AreaTitolare/RichiediModificaTitolare?titolare.idtitolare=<s:property value="%{#session.utente.idtitolare}" />">
							<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
							Settings
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="javascript:void(0);"
							data-toggle="modal" data-target="#logoutModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Logout
						</a>
					</div></li>
			</ul>
		</nav>
		<script src="/assets/adminpage/vendor/jquery/jquery.min.js"></script>
		<script
			src="/assets/adminpage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script
			src="/assets/adminpage/vendor/jquery-easing/jquery.easing.min.js"></script>
		<script src="/assets/adminpage/js/ruang-admin.min.js"></script>
		<script
			src="/assets/adminpage/vendor/datatables/jquery.dataTables.min.js"></script>
		<script
			src="/assets/adminpage/vendor/datatables/dataTables.bootstrap4.min.js"></script>



		<script>
			$(document).ready(function() {
				$('#dataTable').DataTable(); // ID From dataTable 
				$('#dataTableHover').DataTable(); // ID From dataTable with Hover
			});
		</script>
		<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</html>

