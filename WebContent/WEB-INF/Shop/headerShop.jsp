<!doctype html>
<html lang="en" >
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="it.unirc.pistony.pojo.Componente.Componente"%>


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="/img/logo/logo.png" rel="icon">
<title>Pistony - Dashboard</title>
 <link href="/assets/adminpage/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/css/ruang-admin.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="/assets/adminpage/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/assets/adminpage/css/ruang-admin.min.css" rel="stylesheet"> 
<link
	href="/assets/adminpage/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/PIStyle.css" />
</head>



<div class="header">
	<%@ include file="/WEB-INF/Generali/header.jsp"%>
	<div class="img-shop">
		<img alt="" src="/assets/img/imgHome/banner-shop.jpg" style="width: 100%">
	</div>
</div>
<body id="page-top">
	<div id="wrapper">
		<ul class="navbar-nav sidebar sidebar-light accordion"
			id="accordionSidebar" style="width: 36rem !important;">
			<li class="nav-item"><a style="width: 100%" class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseBootstrap"
				aria-expanded="true" aria-controls="collapseBootstrap"> <i
					class="far fa-fw fa fa-users"></i> <span>Categoria</span>
			</a>
				<div id="collapseBootstrap" class="collapse"
					aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Scegli Categoria</h6>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=1">Oli e liquidi</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=2">Pneumatici</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=3">Sistema Frenante</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=4">Accensione/Preriscaldamento</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=5">Filtro</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=6">Motore</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=7">Ammortizzazione</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=8">Sospensione</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=9">Carrozzeria</a>
						<a class="collapse-item" href="<%=request.getContextPath()%>/ShopByCategoria?categoria=10">Sterzo</a>
						

					</div>
				</div></li>
				
		
		</ul>
		
	<script src="/assets/adminpage/vendor/jquery/jquery.min.js"></script>
		<script src="/assets/adminpage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="/assets/adminpage/vendor/jquery-easing/jquery.easing.min.js"></script>
		<script src="/assets/adminpage/js/ruang-admin.min.js"></script>
		<script src="/assets/adminpage/vendor/datatables/jquery.dataTables.min.js"></script>
		<script src="/assets/adminpage/vendor/datatables/dataTables.bootstrap4.min.js"></script>



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

