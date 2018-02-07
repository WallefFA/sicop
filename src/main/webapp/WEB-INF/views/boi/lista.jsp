<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstraptheme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Animais Cadastrados</title>
		
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
		      <a class="navbar-brand" href="#">SICOP</a>
		    </div>
		    <ul class="nav navbar-nav">
			  <li><a href="home">Home</a></li> 
		      <li><a href="listaAnimais">Animais Cadastrados</a></li>
			  <li><a href="novoAnimal">Cadastrar Animais</a></li>
			  <li><a href="GERENTE/relatorios">Relatórios</a></li>
			  
		    </ul>
		  </div>
		</nav>
		
		<center><h3>Animais cadastrados</h3></center>
		<br>
		
		<table class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Data de Entrada</th>
				<th>Peso de Entrada</th>
				<th>Peso Atual</th>
				<th>Raça</th>
				<th></th>
				<th></th>
			</tr>
			
			<c:forEach items="${animais}" var="animal">
				<tr>
					<td>${animal.id }</td>
					<td><fmt:formatDate value="${animal.dataEntrada.time}"
						pattern="dd/MM/yyyy" /></td>
					<td>${animal.pesoDeEntrada }</td>
					<td>${animal.pesoAtual }</td>
					<td>${animal.raca }</td>
					<td>
					<a href="mostraAnimal?id=${animal.id }"><button type="button">Atualizar</button></a></td>
					<td><button type="button" class="btn btn-danger btn-sm">
					<a href="excluiAnimal?id=${animal.id}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></a></span>
					</button>
					</td>
				</tr>

			</c:forEach>

		</table>
		</div>
	</body>
</html>