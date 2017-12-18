<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Relatório Futuro</title>
	</head>
	<body>
	
		<table>
			<tr>
				<th>Valor de Venda</th>
			</tr>
			<tr>
				<td>Projeção de valor de venda para 30 dias: R$&nbsp;
					<fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${valorVenda30dias}"/>
				</td>
			</tr>
			<tr><td>Projeção de valor de venda para 60 dias: R$&nbsp;
					<fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${valorVenda60dias}"/></td>
			</tr>
		</table>
	</body>
</html>