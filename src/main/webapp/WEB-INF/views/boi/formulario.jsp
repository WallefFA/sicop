<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Animais</title>
</head>
<body>
	<h3>Cadastro de animais</h3>

	<form action="cadastraAnimal" method="post">
		Data de Entrada: <input type="text" name="dataEntrada" /><br>
		Peso de Entrada: <input type="text" name="pesoDeEntrada" /><br>
		Peso Atual: <input type="text" name="pesoAtual" /><br> 
		Raça: <input type="text" name="raca" /><br> 
		<input type="submit"value="Cadastrar">

	</form>
</body>
</html>