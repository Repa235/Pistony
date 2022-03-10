<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<%
	Object aut = session.getAttribute("utente");
%>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<head>
<meta charset="ISO-8859-1">
<title>Header</title>



</head>

<body>


	<!-- Header -->
	<header id="header">
		<div class="logo" img src="/assets/img/imgHome/LogoPistony.png"></div>
		<img src="/assets/img/imgHome/LogoPistony.png" class="logo">

		<nav style="text-align: center;">
			<div>
				<a href="<%=request.getContextPath()%>/Home">Home </a> <a
					href="<%=request.getContextPath()%>/Shop">Shop</a> <a
					href="<%=request.getContextPath()%>/PistonyApp">PistonyApp</a>

			</div>
		</nav>
		<nav>
			<div class="logo" style="right: 1%; font-size: 0.9em; left: 80%;">

				<!-- login con bottone javascript -->

				<%
					if ((aut != null) && (aut.getClass().getName().equals("it.unirc.pistony.pojo.Cliente.Cliente"))) {
				%>
				<a class="loginheader"
					href="<%=request.getContextPath()%>/AreaCliente/ProfiloCliente">Area
					Personale</a> <a href="<%=request.getContextPath()%>/Logout"
					style="color: red">Logout</a>
				<%
					}
				if ((aut != null) && (aut.getClass().getName().equals("it.unirc.pistony.pojo.titolare.Titolare"))) {
				%>
				<a class="loginheader"
					href="<%=request.getContextPath()%>/AreaTitolare/ProfiloTitolare">Area
					Personale</a> <a href="<%=request.getContextPath()%>/Logout"
					style="color: red">Logout</a>
				<%
					}
				if (aut == null) {
				%>
				<a class="loginheader"
					onclick="document.getElementById('id01').style.display='block'">Login</a>
				<%
					}
				%>




			</div>

		</nav>

		<div id="id01" class="modalLogin">

			<s:form class="modal-contentLogin animateLogin" action="Login"
				method="post" theme="simple">
				<div class="imgcontainerLogin">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="closeLogin" title="Close Modal">&times;</span>

					<!-- 	<img
						src="/assets/img/user.png" style="width: 30%;" alt="Avatar"
						class="avatar"> -->
				</div>

				<div class="containerLogin">
					<label class="labelLogin" for="username"> <b>Username</b>
					</label>
					<s:textfield name="email" style="color: black;" />
					<label for="password" class="labelLogin"> <b>Password</b></label>
					<s:textfield name="password" type="password" style="color: black;" />

					<button class="buttonLogin" type="submit">Login</button>
					<label class="labelLogin"> <input type="checkbox"
						checked="checked" name="remember"> Non sei registrato?
						Clicca <a
						href="<%=request.getContextPath()%>/RichiediRegistrazione">
							Qui</a>
					</label>
				</div>
			</s:form>
		</div>
	</header>


	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/jquery.scrolly.min.js"></script>
	<script src="/assets/js/skel.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/Per_login.js"></script>





</body>
</html>