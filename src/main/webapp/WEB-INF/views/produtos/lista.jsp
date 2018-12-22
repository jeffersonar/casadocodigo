<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do C�digo</title>
</head>
<body>
	<h1>Lista Produtos</h1>
	<p> ${sucesso} </p>
	<table>
		<tr>
			<th>T�tulo</th>
			<th>Descri��o</th>
			<th>P�ginas</th>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td><a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">${produto.titulo }</a></td>
				<td>${produto.descricao}</td>
				<td>${produto.pagina}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>