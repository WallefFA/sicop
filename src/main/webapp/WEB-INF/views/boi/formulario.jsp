<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastro de Animais</title>
		
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
		      <a class="navbar-brand" href="#">SICOP</a>
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
			<h3>Cadastro de animais</h3>
			<br><br><br>
			<form class="form-inline" action="cadastraAnimal" method="post">
				<div class="form-group">
					<label>Data de Entrada:</label>
					<input type="text" name="dataEntrada" class="form-control" placeholder="Dia/Mês/Ano" required="required"/>
				</div><br><br>
				<div class="form-group">
					<label>Peso de Entrada:</label>
					<input type="number" name="pesoDeEntrada" class="form-control" placeholder="??? Kg" required="required"/>
				</div><br><br>
				<div class="form-group">
					<label>&nbsp&nbsp &nbsp&nbspPeso Atual: &nbsp&nbsp&nbsp</label>
					<input type="number" name="pesoAtual" class="form-control" placeholder="??? Kg" required="required"/>
				</div><br><br>
				<div class="form-group">
					<label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Raça:
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
					<input type="text" name="raca" class="form-control" placeholder="Nelore" required="required"/>
				</div><br><br><br>
				<button type="submit" class="btn btn-primary">Cadastrar</button>
			</form>
		</center>
		
		</div>
	</body>
</html>