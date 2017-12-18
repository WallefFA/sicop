<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Relatórios</title>
		
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
			
			<br><br><br><br><br><br>
			
			<input type="hidden" ${venda.id}/>
			
			<button type="button" class="btn btn-default btn-lg btn-block">
				<a href="mostraVenda?id=${venda.id}">Gerar Relatório (Mercado Atual)</a>
			</button>
			<button type="button" class="btn btn-default btn-lg btn-block">
				<a href="mostraVendaFuturo?id=${venda.id}">Gerar Relatório (Mercado Futuro)</a>
			</button>

		</div>
	</body>
</html>