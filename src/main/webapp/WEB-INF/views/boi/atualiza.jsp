<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Atualizar Peso</title>
		
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
		<h3>Atualizar boi = ID: ${animal.id }</h3>
		<br><br><br>
				<form class="form-inline" action="atualizaAnimal" method="post">
					
					<div class="form-group">
						<label>Peso Atual:</label>
						<input name="pesoAtual" class="form-control" placeholder="??? Kg" value="${animal.pesoAtual }" required="required"/>
					</div>
					
					<input type="hidden" name="id" value="${animal.id }"/>
					
					<input type="hidden" name="dataEntrada" value="<fmt:formatDate value="${animal.dataEntrada.time}" pattern="dd/MM/yyyy"/>"/>
					
					<input type="hidden" name="pesoDeEntrada" value="${animal.pesoDeEntrada }" />			 
					
					<input type="hidden" name="raca" value="${animal.raca}" /><br> 
					
					<br><br><br>
					
					<button type="submit" class="btn btn-primary">Atualizar</button>
		
				</form>
			</center>
		</div>	
	</body>
</html>