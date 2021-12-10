<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:forEach var="posts" items="${posts}">
    <div class="card-body">
         <h3 class="card-title"> ${posts.title}</h3>
         <p class="card-text">${posts.description}</p>
    </div>
</c:forEach>
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
