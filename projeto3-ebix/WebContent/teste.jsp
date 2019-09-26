<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.ebix.dao.DaoGenerico"%>
<%@page import="br.com.ebix.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		DaoGenerico testeHibernate = new DaoGenerico();
		DaoGenerico<Seguro> daoSeguro = new DaoGenerico<>();
		daoSeguro.findAllSeguro();
	%>
	

</body>
</html>