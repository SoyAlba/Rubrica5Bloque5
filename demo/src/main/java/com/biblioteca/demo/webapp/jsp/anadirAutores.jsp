<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome page</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/cosmo/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

<h1>Añadir Autor</h1>
formulario añadir Autor
<form:form action="addAutor" method="post" modelAttribute="autor">
    <form:input path="id" />
    <form:input path="nombre" />
    <form:input path="apellido" />
    <form:input type="date" path="Fecha Nacimiento" />
    <form:button type="submit" value="Añadir" />
</form:form>
    


</body>
</html>