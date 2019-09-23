<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
	integrity="sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9"
	crossorigin="anonymous">
<title>Cadastra seguro</title>

<style>
.html, .body {
	margin: 0
}

.medio {
	width: 20%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-light bg-secondary">
		<span class="navbar-brand mx-auto" href="#"> <img
			src="logo.png" width="50" height="50"
			class="d-inline-block align-top" alt="">
		</span>
		<div>
			<a href="../sair" class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x"></i>Sair</a>
		</div>
	</nav>
	<div class="container">
		<div class="card mt-4 border-secondary">
			<h5 class="card-header text-center bg-secondary text-white">
			<!-- <a href="menu.jsp" class="text-decoration-none text-white"><i
					class="fas fa-arrow-left float-left"></i></a> -->	 CADASTRA SEGURO
			</h5>
			<div class="card-body">
				<form class="p-3" method="post" action="seguro">
					<div class="form-group row mt-3">
						<label for="valor"
							class=" col-sm-1 col-form-label col-form-label-sm">Seguro:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="valor" name="seguro" placeholder="Valor do Seguro" value="${param.seguro}" name="Seguro">
						</div>
					</div>
					<div class="form-group row mt-3">
						<label for="valor"
							class=" col-sm-1 col-form-label col-form-label-sm">VALOR:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="valor" name="valor" placeholder="Valor do Seguro" value="${param.valor}" name="Valor">
						</div>
					</div>
					<div class="text-center mt-4">
						<button type="submit" class="medio btn btn-secondary rounded-pill">CADASTRAR</button>
					</div>

				</form>
				<p class="alert alert-danger" role="alert">${erro}</p>
			</div>
		</div>
	</div>
</body>
</html>