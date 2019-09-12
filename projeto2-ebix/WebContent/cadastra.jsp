<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
</style>

<title>Formulário</title>
</head>
<body>
<nav class="navbar navbar-light bg-info">
		<span class="navbar-brand mx-auto" href="#"> <img
			src="logo2.png" width="50" height="50"
			class="d-inline-block align-top" alt="">
		</span>
	</nav>
	<div class="container">
		<div class="card mt-5 border-info">

			<h5 class="card-header text-center bg-info text-white">
				<a href="${pageContext.request.contextPath}/index.jsp" class="text-decoration-none text-white"><i
					class="fas fa-arrow-left float-left"></i></a> CADASTRO
			</h5>
			<div class="card-body">
				<form class="p-3" method="post"
					action="${pageContext.request.contextPath}/ebix/home">
					<div class="form-group row ">
						<label for="nome"
							class="col-sm-1 col-form-label col-form-label-sm">NOME:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="nome" name="nome" placeholder="nome" type="text"
								value="${fn:escapeXml(param.nome)}">
						</div>
					</div>
					<div class="form-group row">
						<label for="cpf"
							class=" col-sm-1 col-form-label col-form-label-sm">CPF:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="cpf" name="cpf" placeholder="cpf"
								value="${fn:escapeXml(param.cpf)}">
						</div>
					</div>
					<div class="form-group row">
						<label for="rg" class=" col-sm-1 col-form-label col-form-label-sm">RG:</label>
						<div>
							<input class="form-control form-control-sm ml-5 rounded-pill"
								id="rg" placeholder="rg" name="rg"
								value="${fn:escapeXml(param.rg)}">
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
					<h5 class="mt-2">SEGURO</h5>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Auto"
							name="seguro" id="auto"
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
					<hr>
					<h5 class="mt-2">CORRENTISTA</h5>

					<select class="custom-select mt-1 rounded-pill" name="correntista">
						<option value="Sim"
							${param.correntista == 'Sim' ? 'selected' : ''}>Sim</option>
						<option value="Nao"
							${param.correntista == 'Nao' ? 'selected' : ''}>Não</option>
					</select>
					<h5 class="mt-2">DIA DA VISITA</h5>
					<select multiple class="custom-select mt-1 " name="visita">
						<option value="Segunda"
							${paramValue.visita.stream().anyMartch(v -> v == "Segunda").get() ? 'selected' : ''}>
							Segunda</option>
						<option value="Terça"
							${paramValue.visita.stream().anyMartch(v -> v == "Terça").get() ? 'selected' : ''}>Terça</option>
						<option value="Quarta"
							${paramValue.visita.stream().anyMartch(v -> v == "Quarta").get() ? 'selected' : ''}>Quarta</option>
						<option value="Quinta"
							${paramValue.visita.stream().anyMartch(v -> v == "Quinta").get() ? 'selected' : ''}>Quinta</option>
						<option value="Sexta"
							${paramValue.visita.stream().anyMartch(v -> v == "Sexta").get() ? 'selected' : ''}>Sexta</option>
						<option value="Sábado"
							${paramValue.visita.stream().anyMartch(v -> v == "Sábado").get() ? 'selected' : ''}>Sábado</option>
						<option value="Domingo"
							${paramValue.visita.stream().anyMartch(v -> v == "Domingo").get() ? 'selected' : ''}>Domingo</option>
					</select>
					<div class="text-center mt-4">
						<button type="submit" class="btn btn-lg btn-info rounded-pill">CADASTRA</button>
					</div>
				</form>
				<p class="alert alert-danger" role="alert">${erro}</p>
			</div>
		</div>
	</div>
</body>
</html>