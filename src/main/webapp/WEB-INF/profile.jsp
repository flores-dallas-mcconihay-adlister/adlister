<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
</head>
<body>
<jsp:include page="partials/navbars/profile-navbar.jsp"/>

<h1>Top uh da moanin ${sessionScope.user.username}!</h1>
<h1>innit dis your email, ${sessionScope.user.email}!</h1>
<div class="container index-container">
    <container class="flex-column d-flex">
<%--items is grabbing the get att--%>
        <c:forEach var="post" items="${post}">
            <div class="card cards">
                <div class="card-body">

                    <h3 class="card-title"> ${post.title} </h3>

                    <p id="hide-joke" class="card-text"> ${post.description} </p>
                    <button class="btn btn-danger" ${post.id} data-toggle="modal" data-target="#deletePostModal"
                            name="post-delete" type="submit"><i class="bi bi-trash-fill" style="font-size: 16px"></i>
                    </button>
                    <div class="modal fade" id="deletePostModal" aria-hidden="true" data-toggle="modal" tabindex="-1"
                         aria-labelledby="deletePostModal">
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
                                            <button name="deletePost" value="${post.id}" type="submit"
                                                    class="btn btn-danger btn-lg d-block mx-auto">Yes, delete
                                            </button>
                                        </div>
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
<jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
