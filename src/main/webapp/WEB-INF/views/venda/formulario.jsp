<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo Relatório</title>
</head>
	<body>
		<h3>Novo relatório</h3>
		
		<form action="atualizaVenda" method="post" >
			<input type="hidden" name="id" value="${venda.id}"/>
			<input type="hidden" name="dataVenda" <fmt:formatDate value="${venda.dataVenda.time}" pattern="dd/MM/yyyyy"/> /><br>
			<input type="hidden" name="dataEntrada"  <fmt:formatDate value="${venda.dataEntrada.time }" pattern="dd/MM/yyyyy"/> />
			Cotação:(Hoje)<input type="text" name="cotacao"/><br> 
			<input type="hidden" name="cotacao30dias" value="${venda.cotacao30dias}"/>
			<input type="hidden" name="cotacao60dias" value="${venda.cotacao60dias}"/>
			
			<input type="submit" value="Gerar Relatório"/>
		</form>
	
	</body>
</html>