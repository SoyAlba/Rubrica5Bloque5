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

<h1>Buscar Autores</h1>

<form:form action="buscarAutores" method="post">
    <form:input path="nombre" />
    <form:input path="fechaNac" />
    <form:button type="submit">Buscar</form:button>
</form:form>

<c:if test="${not empty autores}">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Fecha Nacimiento</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${autores}" var="autor">
                <tr>
                    <td>${autor.nombre}</td>
                    <td>${autor.fechaNac}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>


</body>
</html>