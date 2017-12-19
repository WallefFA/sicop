<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Relatório de Venda</title>
		
		<link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstraptheme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<style>
			body {
			   font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
			   background-color: #00FA9A;
		
			 }
			nav {
				background-color: white
			}
		</style>
		
	</head>
	<body>
		<div class="container">
		
		<nav class="navbar navbar-light">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand">SICOP</a>
			    </div>
			    <ul class="nav navbar-nav">
				  <li><a href="home">Home</a></li> 
			      <li><a href="listaAnimais">Animais Cadastrados</a></li>
				  <li><a href="novoAnimal">Cadastrar Animais</a></li>
				  <li><a href="relatorios">Relatórios</a></li>
			    </ul>
			  </div>
			</nav>
			
			<table class="table table-striped">
				<tr>
					<th>-</th>
					<th>-</th>
				</tr>
				<tr>
					<td>Total de Animais:</td>
					<td>${totalAnimais}</td>
				</tr>
				<tr>
					<td>Peso Médio p/ Animal:</td>
					<td><fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${pesoMedio}"/>@</td>
				</tr>
				<tr>
					<td>Valor de Venda:</td>
					<td>R$ &nbsp<fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${valorVenda}"/></td>
				</tr>
			</table>
		</div>
	</body>
</html>