<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List, br.com.ebix.entity.Seguro"%>
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
<title>Listagem Seguro</title>
</head>
<body>
	<div class="container-fluid">
		<div>
			<p class="display-3 text-center mt-3 mb-5">Listagem Seguro</p>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/seguro/seguro"
				class="text-decoration-none text-info ml-2 text-center"><i
				class="fas fa-plus mr-1 fa-2x"></i></a>
		</div>

		<div class="mb-2">
			<a href="${pageContext.request.contextPath}/seguro/sair" class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x "></i>Sair</a>
		</div>
		<div>
			<a href="menu.jsp" class="text-decoration-none text-danger ml-2"><i
				class="fas fa-arrow-left float-left fa-2x"></i>Voltar</a>
		</div>
		<div></div>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Seguros</th>
					<th scope="col">Valor</th>
					<th scope="col">Alteração</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${seguros}" var="seguro">
					<tr>
						<th scope="row">${seguro.identificacao}</th>
						<td>${ seguro.seguro }</td>
						<td>${ seguro.valor }</td>
						<td><a href="${pageContext.request.contextPath}/seguro/excluir?action=delseguro&id=${seguro.identificacao}" class="btn btn-danger text-white"><i
								class="far fa-trash-alt"></i></a> <a
							class="btn btn-warning text-white"><i
								class="fas fa-pencil-alt"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>