<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualizar Peso</title>
</head>
<body>
	<h3>Atualizar boi ${animal.id }</h3>
	
		<form action="atualizaAnimal" method="post">
		
			<input type="hidden" name="id" value="${animal.id }"/>
			
			<input type="hidden" name="dataEntrada" value="<fmt:formatDate value="${animal.dataEntrada.time}" pattern="dd/MM/yyyy"/>"/>
			
			<input type="hidden" name="pesoDeEntrada" value="${animal.pesoDeEntrada }" />
			
			Peso Atual: <input type="text" name="pesoAtual" value="${animal.pesoAtual }" />
			
			<input type="hidden" name="raca" value="${animal.raca}" /><br> 
			
		<input type="submit"value="Atualizar">

	</form>
</body>
</html>