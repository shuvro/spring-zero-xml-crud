<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 6/18/19
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="list" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of users</h1>
<p>Here you can see the list of the users, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
    <thead>
    <tr>
        <th width="10%">id</th><th width="15%">name</th><th width="10%">rating</th><th width="10%">actions</th>
    </tr>
    </thead>
    <tbody>
    <list:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.email}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>
                <a href="${pageContext.request.contextPath}/edit/${user.id}">Edit</a><br/>
                <a href="${pageContext.request.contextPath}/delete/${user.id}">Delete</a><br/>
            </td>
        </tr>
    </list:forEach>
    </tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index">Home page</a></p>

</body>
</html>
