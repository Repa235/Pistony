<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.Cliente.Cliente"%>
<%@ page import="it.unirc.pistony.pojo.Accountcliente.Accountcliente"%>


<!DOCTYPE html>


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

<ul class="navbar-nav sidebar sidebar-light accordion"
	id="accordionSidebar">
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<%=request.getContextPath()%>/Home">HomePage Pistony</a>

	<hr class="sidebar-divider my-0">

	<li class="nav-item active"><a class="nav-link"
		href="/AreaCliente/ProfiloCliente"> <i
			class="fas fa-fw fa-tachometer-alt"></i> <span>Home
				AreaPersonale</span></a></li>

	<hr class="sidebar-divider">

	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseForm"
		aria-expanded="true" aria-controls="collapseForm"> <i
			class="fab fa-fw fa fa fa-cog"></i> <span>Modifica profilo</span>
	</a>
		<div id="collapseForm" class="collapse" aria-labelledby="headingForm"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Modifica Profilo</h6>
				
				<a class="collapse-item"
					href="/AreaCliente/RichiediModificaCliente?cliente.idcliente=<s:property value="%{#session.utente.idcliente}"/>">Modifica
					Dati</a>

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
						src="/assets/img/imgHome/user.png" style="max-width: 60px"> <span
						class="ml-2 d-none d-lg-inline text-white small"><s:property
								value="%{titolare.nome}" /> <s:property
								value="%{titolare.cognome}" /></span>
				</a>
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
					
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
			$(function() {
				$("#datepicker").datepicker();
			});
		</script>
</html>

