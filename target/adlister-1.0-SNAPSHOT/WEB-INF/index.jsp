<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/9/21
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">LaughLister!</h1>
            <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
        </div>
    </div>
    <c:forEach var="post" items="${posts}">
        <div class="col-md-6">
            <h2>${post.title}</h2>
            <p>${post.description}</p>
        </div>
    </c:forEach>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
