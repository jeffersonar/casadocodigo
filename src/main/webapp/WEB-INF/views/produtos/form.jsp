<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST" commandName="produto">
		<div>
			<label>Titulo</label>
			<input type="text" name="titulo"/>
			<form:errors path="descricao" />
		</div>
		<div>
			<label>Descrição</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
			<form:errors path="descricao" />
		</div>
		<div>
			<label>Paginas</label> 
			<input type="text" name="pagina"/>
			<form:errors path="pagina" /> 
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label> <input type="text"
					name="precos[${status.index}].valor" /> <input type="hidden"
					name="precos[${status.index}].tipo" value="${tipoPreco}"  />
			</div>
		</c:forEach>
		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>