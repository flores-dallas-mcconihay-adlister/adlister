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
<div class="index-header">
    <h1 class="main-header">Laughlister!</h1>
</div>
<div class="container index-container">
    <div class="flex-button">
        <button type="button" data-toggle="modal" data-target="#addPostModal" class="add-button btn bg-dark"><i class="bi bi-plus-lg text-white"></i></button>
    </div>

    <container class="flex-column d-flex">
        <c:forEach var="posts" items="${posts}">
            <div class="card cards">
                <div class="card-body">
                    <h3 class="card-title"> ${posts.title}</h3>
                    <p id="hide-joke" class="card-text">${posts.description}</p>
                    <button class="btn btn-danger"  data-toggle="modal" data-target="#deletePostModal" name="post-delete" type="submit"><i class="bi bi-trash-fill" style="font-size: 16px"></i></button>
                    <jsp:include page="partials/modals/deletePostModal.jsp"/>
                </div>
            </div>

        </c:forEach>
    </container>
</div>


<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
