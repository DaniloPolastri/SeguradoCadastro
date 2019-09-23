<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	integrity="sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Menu</title>
<style>
.medio {
	width: 50%;
}
</style>
</head>
<body>



	<nav class="navbar navbar-light bg-secondary">
		<span class="navbar-brand mx-auto" href="#"> <img
			src="logo.png" width="50" height="50"
			class="d-inline-block align-top">
		</span>
		<div>
			<a href="sair" class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x"></i>Sair</a>
		</div>
	</nav>
	<div class="container">

		<div class="card mx-auto shadow p-3 mb-5" style="margin-top: 100px;">
			<div class="card-body">
				<div class="text-info text-center">${msgLogin}</div>
				<div class="card-title text-center">
					<p style="font-size: 35px">Escolha uma opção</p>
				</div>
				<hr>
				<div class="text-center mt-2">
					<a class="btn btn-lg btn-secondary  medio rounded-pill" href="${pageContext.request.contextPath}/seguro/cadastraSegurado.jsp">Cadastro
						de segurado</a>
				</div>
				<div class="text-center mt-2">
					<a class="btn btn-lg btn-secondary  medio rounded-pill"
						href="seguro/listasegurado.jsp">Listar os segurados</a>
				</div>
				<div class="text-center mt-2">
					<a class="btn btn-lg btn-secondary medio rounded-pill" href="${pageContext.request.contextPath}/seguro/cadastraSeguro.jsp">Cadastrar
						seguros</a>
				</div>
				<div class="text-center mt-2">
					<a class="btn btn-lg btn-secondary medio rounded-pill"
						href="seguro/listaseguro.jsp">Listar seguros</a>
				</div>			
			</div>

		</div>
	</div>
</body>
</html>