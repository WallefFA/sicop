<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Novo Relat�rio</title>
		
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
				  <li><a href="relatorios">Relat�rios</a></li>
			    </ul>
			  </div>
			</nav>
			<center>
			<h3>Novo relat�rio</h3>
				<br>
				<form class="form-inline" action="atualizaVenda" method="post" >
					<input type="hidden" name="id" value="${venda.id}"/>
					<input type="hidden" name="dataVenda" <fmt:formatDate value="${venda.dataVenda.time}" pattern="dd/MM/yyyyy"/> /><br>
					<input type="hidden" name="dataEntrada"  <fmt:formatDate value="${venda.dataEntrada.time }" pattern="dd/MM/yyyyy"/> />
					<div class="form-group">
						<label>Cota��o: (Hoje)</label>
						<input class="form-control" type="text" name="cotacao"/ placeholder="R$ ###,##"><br>
					</div> 
					<input type="hidden" name="cotacao30dias" value="${venda.cotacao30dias}"/>
					<input type="hidden" name="cotacao60dias" value="${venda.cotacao60dias}"/>
					<br><br>
					<button type="submit" class="btn btn-warning">Gerar Relat�rio</button>
				</form>
			</center>
		</div>
	</body>
</html>