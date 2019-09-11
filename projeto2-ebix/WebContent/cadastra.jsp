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
</style>

<title>Formulário</title>
</head>
<body>
	<div class="container">
		<div class="card mt-5 border-info">

			<h5 class="card-header text-center bg-info text-white">
				<a href="index.jsp" class="text-decoration-none text-white"><i
					class="fas fa-arrow-left float-left"></i></a> CADASTRO
			</h5>
			<div class="card-body">
				<form class="p-3" method="post" action="SeguradoController">
					<div class="form-group row ">
						<label for="nome"
							class="col-sm-1 col-form-label col-form-label-sm">NOME:</label>
						<div>
							<input class="form-control form-control-sm ml-5" id="nome"
								name="nome" placeholder="nome">
						</div>
					</div>
					<div class="form-group row">
						<label for="cpf"
							class=" col-sm-1 col-form-label col-form-label-sm">CPF:</label>
						<div>
							<input class="form-control form-control-sm ml-5" id="cpf"
								name="cpf" placeholder="cpf">
						</div>
					</div>
					<div class="form-group row">
						<label for="rg" class=" col-sm-1 col-form-label col-form-label-sm">RG:</label>
						<div>
							<input class="form-control form-control-sm ml-5" id="rg"
								placeholder="rg" name="rg">
						</div>
					</div>
					<hr>
					<h5 class="mt-4">GÊNERO</h5>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="marcacao"
							id="masculino" value="Masculino"> <label
							class="form-check-label" for="exampleRadios1"> MASCULINO
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="marcacao"
							id="feminino" value="Feminino"> <label
							class="form-check-label" for="exampleRadios2"> FEMININO </label>
					</div>
					<h5 class="mt-2">SEGURO</h5>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Auto"
							name="seguro" id="auto"> <label class="form-check-label"
							for="auto"> AUTO </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox"
							value="Residencial" name="seguro" id="residencial"> <label
							class="form-check-label" for="residencial"> RESIDENCIAL </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="Vida"
							name="seguro" id="vida"> <label class="form-check-label"
							for="vida"> VIDA </label>
					</div>
					<hr>
					<h5 class="mt-2">CORRENTISTA</h5>

					<select class="custom-select mt-1" name="correntista">
						<option value="Sim">Sim</option>
						<option value="Nao">Não</option>
					</select>
					<h5 class="mt-2">DIA DA VISITA</h5>
					<select multiple class="custom-select mt-1" name="visita">
						<option value="Segunda">Segunda</option>
						<option value="Terça">Terça</option>
						<option value="Quarta">Quarta</option>
						<option value="Quinta">Quinta</option>
						<option value="Sexta">Sexta</option>
						<option value="Sábado">Sábado</option>
						<option value="Domingo">Domingo</option>
					</select>
					<div class="text-center mt-4">
						<button type="submit" class="btn btn-info" href="cadastro.jsp">CADASTRA</button>
					</div>
					${mensagem}
				</form>
			</div>
		</div>
	</div>
</body>
</html>