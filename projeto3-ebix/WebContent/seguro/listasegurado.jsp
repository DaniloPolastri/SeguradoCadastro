<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List, br.com.ebix.entity.Segurado"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		<div>
			<p class="display-3 text-center mt-3 mb-5">Listagem Segurado</p>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/seguro/cadastraSegurado"
				class="text-decoration-none text-info ml-2 text-center"><i
				class="fas fa-plus mr-1 fa-2x"></i></a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/seguro/menu.jsp"
				class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x"></i>Voltar</a>
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
					<th scope="col">Alteração</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${segurados}" var="segurado">
					<tr>
						<th scope="row">${segurado.id}</th>
						<td>${segurado.nome}</td>
						<td>${segurado.rg}</td>
						<td>${segurado.cpf}</td>
						<td>${segurado.sexo}</td>
						<td>${segurado.data_nasc}</td>
						<td>${segurado.correntista}</td>
						<td>
							<fmt:formatDate value="${segurado.dataDeCadastro}" pattern="dd/MM/yyyy HH:mm:ss"/> 

						</td>
						<td>${segurado.dataDeAlteracao}</td>
						<td>${segurado.diasDeVisita}</td>
						<td><a href="${pageContext.request.contextPath}/seguro/excluir?action=delsegurado&id=${segurado.id}" class="btn btn-danger text-white"><i
								class="far fa-trash-alt"></i>Excluir</a><a
							class="btn btn-warning  text-white"><i
								class="fas fa-pencil-alt"></i>Alterar</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

</body>
</html>