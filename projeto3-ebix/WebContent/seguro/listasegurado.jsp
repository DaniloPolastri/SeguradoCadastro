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
<title>Listagem Segurado</title>
</head>
<body>
	<div class="container-fluid">
		<p class="display-3 text-center mt-3 mb-5">Listagem Segurado</p>
		<div>
			<a href="../sair" class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x"></i>Sair</a>
		</div>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nome</th>
					<th scope="col">RG</th>
					<th scope="col">CPF</th>
					<th scope="col">Sexo</th>
					<th scope="col">Data de Nascimento</th>
					<th scope="col">Correntista</th>
					<th scope="col">Data de Cadastro</th>
					<th scope="col">Data de Alteração</th>
					<th scope="col">Dia de Visita</th>
					<th scope="col">Seguros</th>
					<th scope="col">Alteração</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Jacob</td>
					<td><a class="btn btn-danger text-white"><i
							class="far fa-trash-alt"></i></a> <a
						class="btn btn-warning  text-white"><i
							class="fas fa-pencil-alt"></i></a></td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Jacob</td>
					<td><a class="btn btn-danger text-white"><i
							class="far fa-trash-alt"></i></a> <a
						class="btn btn-warning  text-white"><i
							class="fas fa-pencil-alt"></i></a></td>
				</tr>


			</tbody>
		</table>
	</div>

</body>
</html>