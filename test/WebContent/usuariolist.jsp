<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aplicación Gestión De Usuarios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a href="#" class="navbar-brand">Gestión De Usuarios</a>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/list" class="nav-link">Usuarios</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="container">
        <h3 class="text-center">Listado de usuarios</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar nuevo usuario</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>País</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="usuario" items="${listUsuarios}">
                    <tr>
                        <td><c:out value="${usuario.id}" /></td>
                        <td><c:out value="${usuario.nombre}" /></td>
                        <td><c:out value="${usuario.email}" /></td>
                        <td><c:out value="${usuario.pais}" /></td>
                        <td>
                            <a href="edit?id=<c:out value='${usuario.id}' />" class="btn btn-primary">Editar</a>
                            <a href="delete?id=<c:out value='${usuario.id}' />" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
