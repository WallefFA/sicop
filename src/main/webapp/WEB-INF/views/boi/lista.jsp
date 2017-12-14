<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animais Cadastrados</title>
</head>
<body>
	<h3>Animais cadastrados</h3>
	<br>

	<table>
		<tr>
			<th>Id</th>
			<th>Data de Entrada</th>
			<th>Peso de Entrada</th>
			<th>Peso Atual</th>
			<th>Raça</th>
		</tr>

		<c:forEach items="${animais}" var="animal">
			<tr>
				<td>${animal.id }</td>
				<td><fmt:formatDate value="${animal.dataEntrada.time}"
						pattern="dd/MM/yyyy" /></td>
				<td>${animal.pesoDeEntrada }</td>
				<td>${animal.pesoAtual }</td>
				<td>${animal.raca }</td>
				<td><a href="mostraAnimal?id=${animal.id }">Atualizar</a></td>
				<td><a href="excluiAnimal?id=${animal.id}">Remover</a></td>
			</tr>

		</c:forEach>

	</table>


</body>
</html>