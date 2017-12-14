<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Relatórios</title>
</head>
<body>
	<table>
		<tr>
			<td><input type="hidden" ${venda.id}/></td>
			<td><a href="mostraVenda?id=${venda.id}">Gerar Relatório (Venda Atual)</a></td>
			<td><a href="mostraVendaFuturo?id=${venda.id}">Gerar Relatório Futuro</a></td>
		</tr>
	</table>
</body>
</html>