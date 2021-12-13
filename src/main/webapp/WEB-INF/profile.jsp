<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/10/21
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
</head>
<body>
    <jsp:include page="partials/navbars/profile-navbar.jsp"/>
    <jsp:include page="partials/scripts.jsp"/>

    <div class="container index-container">
    <container class="flex-column d-flex">
        <c:forEach var="posts" items="${posts}">
            <div class="card cards">
                <div class="card-body">
                    <h3 class="card-title"> ${posts.title}</h3>
                    <p id="hide-joke" class="card-text">${posts.description}</p>
                    <button class="btn btn-danger" data-id="${posts.id}" data-toggle="modal" data-target="#deletePostModal" name="post-delete" type="submit"><i class="bi bi-trash-fill" style="font-size: 16px"></i></button>
                    <div class="modal fade" id="deletePostModal" aria-hidden="true" data-toggle="modal" tabindex="-1" aria-labelledby="deletePostModal">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" style="font-weight: bold">Delete Post</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="/delete" method="post">
                                        <div class="card-body">
                                            <p>Are you sure you want to delete this post?</p>
                                            <button name="deletePost" value="${posts.id}" type="submit" class="btn btn-danger btn-lg d-block mx-auto">Yes, delete</button>
                                        </div>
                                    </form>
                                    <form action="/single" method="get">
                                        <button>Click Here For Details!</button>
                                        <input type = "hidden" name = "singlePost" value="${posts.id}">

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </container>
    </div>
</body>
</html>
