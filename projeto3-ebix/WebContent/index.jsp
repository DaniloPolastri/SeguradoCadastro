<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Login</title>

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
			class="d-inline-block align-top" alt="">
		</span>
	</nav>
	<div class="container">
		<div class="row">
			<div class="mx-auto col-sm-5" style="margin-top: 200px;">
				<div class="card shadow p-3 mb-5 rounded" style="max-width: 540px;">
					<div class="card-body">
						<div class="card-title text-center">
							<p style="font-size: 35px">Login</p>
						</div>
						<form class="form-signin" method="post" action="login">
							<div class="form-label-group mt-3">
								<input type="text" id="nome" class="form-control rounded-pill"
									placeholder="Nome" name="nome">
							</div>
							<div class="form-label-group mt-3">
								<input type="password" id="senha"
									class="form-control rounded-pill" placeholder="Senha"
									name="senha">
							</div>
							<div class="text-center mt-3">
								<button type="submit"
									class="btn btn-lg btn-secondary rounded-pill medio">Entrar</button>
							</div>
							<div class="text-danger text-center">${msg}</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>