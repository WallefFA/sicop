<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<link rel="stylesheet" href=https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstraptheme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Entrar</title>

		<style>
			body {
			   font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
			   background-color: #00FA9A;
		
			 }
			nav {
				background-color: white
			}
			p {
				font-size:80px;
			}
		</style>
	</head>
	<body>
		
				<center>
					<h1>SICOP</h1>
					<br><br><br>
					<div class="container">
						
						<form class="form-inline" action="entrar" method="post">
							<div class="form-group">
								<input class="form-control" name="username" class="form-control" placeholder="Usuário"/>
							</div>
							<br><br>
							<div class="form-group">
								<input class="form-control" type="password" name="password" class="form-control" placeholder="Senha"/>
							</div>
							<br><br>
							<div class="form-group">
								<button class="btn btn-primary btn-block">Entrar</button>
							</div>

							<%--<input type="hidden" th:name="${_csrf.parameterName}" th:value="${_csrf.token}" /> --%>
							
						</form>

					</div>

				</center>
	</body>
</html>