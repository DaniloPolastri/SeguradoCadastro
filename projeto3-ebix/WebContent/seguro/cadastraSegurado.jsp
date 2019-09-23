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
<style>
.html, .body {
	margin: 0
}

.medio {
	width: 20%;
}
</style>

<title>Formulário</title>
</head>
<body>
	<nav class="navbar navbar-light bg-secondary">
		<span class="navbar-brand mx-auto"> <img src="logo.png"
			width="50" height="50" class="d-inline-block align-top" alt="">
		</span>
		<div>
			<a href="../sair" class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x"></i>Sair</a>
		</div>
	</nav>
	<div class="container">
		<div class="card mt-4 border-secondary">
			<h5 class="card-header text-center bg-secondary text-white">
				<!--<a href="menu.jsp" class="text-decoration-none text-white"><i
					class="fas fa-arrow-left float-left"></i></a>  -->
				CADASTRO
			</h5>
			<div class="card-body">
				<form class="p-3" method="post" action="${pageContext.request.contextPath}/seguro/segurado">
					<div class="form-group row ">
						<label for="nome"
							class="col-sm-2 col-form-label col-form-label-sm">NOME:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="nome" name="nome" placeholder="nome" type="text"
								value="${param.nome}">
						</div>
					</div>
					<div class="form-group row">
						<label for="cpf"
							class=" col-sm-2 col-form-label col-form-label-sm">CPF:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="cpf" name="cpf" placeholder="cpf" value="${param.cpf}">
						</div>
					</div>
					<div class="form-group row">
						<label for="rg" class=" col-sm-2 col-form-label col-form-label-sm">RG:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="rg" placeholder="rg" name="rg" value="${param.rg}">
						</div>
					</div>
					<div class="form-group row">
						<label for="rg" class=" col-sm-2 col-form-label col-form-label-sm">
							DATA NASCIMENTO:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								type="date" id="data" placeholder="data" name="data"
								value="${param.data}">
						</div>
					</div>

					<hr>
					<h5 class="mt-4">GÊNERO</h5>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="marcacao"
							id="masculino" value="Masculino"
							${param.marcacao == 'Masculino' ? 'checked' : ''}> <label
							class="form-check-label" for="masculino"> MASCULINO </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="marcacao"
							id="feminino" value="Feminino"
							${param.marcacao == 'Feminino' ? 'checked' : ''}> <label
							class="form-check-label" for="feminino"> FEMININO </label>
					</div>
					<hr>
					<h5 class="mt-2">CORRENTISTA</h5>

					<select class="custom-select mt-1 rounded-pill" name="correntista">
						<option value="Sim"
							${param.correntista == 'Sim' ? 'selected' : ''}>Sim</option>
						<option value="Nao"
							${param.correntista == 'Nao' ? 'selected' : ''}>Não</option>
					</select>
					<h5 class="mt-2">SEGURO</h5>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Auto"
							name="segurocadastrado" id="auto"
							${paramValues.seguro.stream().anyMatch(v->v == 'Auto').get() ? 'checked' : ''}>
						<label class="form-check-label" for="auto"> AUTO </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"
							value="Residencial" name="seguro" id="residencial"
							${paramValues.seguro.stream().anyMatch(v->v == 'Residencial').get() ? 'checked' : ''}>
						<label class="form-check-label" for="residencial">
							RESIDENCIAL </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Vida"
							name="seguro" id="vida"
							${paramValues.seguro.stream().anyMatch(v->v == 'Vida').get() ? 'checked' : ''}>
						<label class="form-check-label" for="vida"> VIDA </label>
					</div>
					<h5 class="mt-2">DIA DA VISITA</h5>
					<select multiple class="custom-select mt-1 " name="visita">
						<option value="Segunda"
							${paramValues.visita.stream().anyMartch(v -> v == "Segunda").get() ? 'selected' : ''}>
							Segunda</option>
						<option value="Terça"
							${paramValues.visita.stream().anyMartch(v -> v == "Terça").get() ? 'selected' : ''}>Terça</option>
						<option value="Quarta"
							${paramValues.visita.stream().anyMartch(v -> v == "Quarta").get() ? 'selected' : ''}>Quarta</option>
						<option value="Quinta"
							${paramValues.visita.stream().anyMartch(v -> v == "Quinta").get() ? 'selected' : ''}>Quinta</option>
						<option value="Sexta"
							${paramValues.visita.stream().anyMartch(v -> v == "Sexta").get() ? 'selected' : ''}>Sexta</option>
						<option value="Sábado"
							${paramValues.visita.stream().anyMartch(v -> v == "Sábado").get() ? 'selected' : ''}>Sábado</option>
						<option value="Domingo"
							${paramValues.visita.stream().anyMartch(v -> v == "Domingo").get() ? 'selected' : ''}>Domingo</option>
					</select>
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