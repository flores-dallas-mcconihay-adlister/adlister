<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbars/profile-navbar.jsp"/>
<jsp:include page="partials/modals/addPostModal.jsp"/>
<button type="button" data-toggle="modal" data-target="#addPostModal" class="btn btn-primary m-2">Add Post</button>
<container class="d-flex">
    <c:forEach var="posts" items="${posts}">
        <div class="card m-5">
            <div class="card-body">
                <h3 class="card-title"> ${posts.title}</h3>
                <p id="hide-joke" class="card-text">${posts.description}</p>
                <button class="btn btn-outline-success" id="show-joke">Show</button>
            </div>
        </div>

    </c:forEach>
</container>

<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
