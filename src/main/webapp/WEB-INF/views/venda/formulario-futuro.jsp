<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Novo relatório futuro</title>
	</head>
	<body>
		<h3>Novo relatório futuro</h3>
	
		<form action="atualizaVendaFuturo" method="post" >
			<input type="hidden" name="id" value="${venda.id}"/>
			Data da Pesagem: <input type="text" name="dataVenda"/><br>
			Data de Entrada: <input type="text" name="dataEntrada" 
			<fmt:formatDate value="${venda.dataEntrada.time}" pattern="dd/MM/yyyy"/>/>
			<input type="hidden" name="cotacao" value="${venda.cotacao}"/><br> 
			Cotação (30 dias): <input type="text" name="cotacao30dias"/>
			Cotação (60 dias): <input type="text" name="cotacao60dias"/>
			
			<input type="submit" value="Gerar Relatório"/>
		</form>
	</body>
</html>

