<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Novo relat�rio futuro</title>
	</head>
	<body>
		<h3>Novo relat�rio futuro</h3>
	
		<form action="atualizaVendaFuturo" method="post" >
			<input type="hidden" name="id" value="${venda.id}"/>
			Data da Pesagem: <input type="text" name="dataVenda"/><br>
			Data de Entrada: <input type="text" name="dataEntrada" />
			<input type="hidden" name="cotacao" value="${venda.cotacao}"/><br> 
			Cota��o (30 dias): <input type="text" name="cotacao30dias"/>
			Cota��o (60 dias): <input type="text" name="cotacao60dias"/>
			
			<input type="submit" value="Gerar Relat�rio"/>
		</form>
	</body>
</html>

