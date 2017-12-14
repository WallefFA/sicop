<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Relatório de Venda</title>
</head>
<body>
	<table>
		<tr>
			<th>Valor de Venda</th>
		</tr>
		<tr>
			<td>Valor de venda atual: R$&nbsp;<fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${valorVenda}"/></td>
		</tr>
	</table>
</body>
</html>