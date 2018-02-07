<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Novo relatório futuro</title>
		
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
	
			<center>
					
			<h3>Novo Relatório Futuro</h3>
			<br>
			<form class="form-inline" action="atualizaVendaFuturo" method="post" >
				<input type="hidden" name="id" value="${venda.id}"/>
				
				<div class="form-group">
					<label>Data da Pesagem: </label>
					<input class="form-control" type="text" name="dataVenda"/ placeholder="Dia/Mês/Ano" required="required"><br><br>
				</div>
				<br>
				<div class="form-group">
					<label>&nbsp Data de Entrada:&nbsp </label>
					<input class="form-control" type="text" name="dataEntrada" 
					<fmt:formatDate value="${venda.dataEntrada.time}" pattern="dd/MM/yyyy"/> placeholder="Dia/Mês/Ano" required="required"/>
				</div>
				<input type="hidden" name="cotacao" value="${venda.cotacao}"/><br><br> 
				<div class="form-group">
					<label>Cotação (30 dias): </label>
					<input class="form-control" name="cotacao30dias"/ placeholder="R$ ###,##" required="required">
				</div>
				<br><br>		
				<div class="form-group">
					<label>Cotação (60 dias): </label>
					<input class="form-control" name="cotacao60dias"/ placeholder="R$ ###,##" required="required">
				</div>
				<br><br>
				<div class="form-group">
					<label>Estimativa de Rendimento (%):</label>
					<input class="form-control" name="rendimento" placeholder="##%" required="required">
				</div>
				<br><br>
				<button type="submit" class="btn btn-warning">Gerar Relatório</button>
			</form>
			
			</center>
		</div>
	</body>
</html>

