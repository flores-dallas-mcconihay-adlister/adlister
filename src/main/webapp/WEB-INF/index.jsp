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
                    <p id="hide-joke" class="card-text invisible">${posts.description}</p>
                    <div class="d-flex justify-content-end">
                        <button class="btn btn-outline-dark show-button btn-sm" type="button">Show</button>

                    <%--  edit post button --%>
                        <button class="btn btn-warning edit-button btn-sm" data-id="${posts.id}" data-toggle="modal" data-target="#editPostModal" name="edit-post" type="submit"><i class="bi bi-pencil-square"></i></button>
                            <%--  delete post button --%>
                        <button class="btn btn-danger delete-button btn-sm" data-id="${posts.id}" data-toggle="modal" data-target="#deletePostModal" name="post-delete" type="submit"><i class="bi bi-trash-fill" style="font-size: 16px"></i></button>
                    </div>
                    <div class="modal fade" id="editPostModal" aria-hidden="true" data-toggle="modal" tabindex="-1" aria-labelledby="editPostModal">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" style="font-weight: bold">Joke Editor</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="/update" method="post">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="category">Category</label>
                                                <input id="category" type="text" name="category" placeholder="Enter a category name.." class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="title">Title</label>
                                                <input id="title" type="text" class="form-control" placeholder="Joke title.." name="title">
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <input id="description" type="text" class="form-control" placeholder="Tell your joke.." name="description">
                                            </div>
                                            <button type="submit" class="btn btn-warning btn-lg d-block mx-auto">Update</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>                    <div class="modal fade" id="deletePostModal" aria-hidden="true" data-toggle="modal" tabindex="-1" aria-labelledby="deletePostModal">
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
                                            <p class="text-center">Are you sure you want to delete this post?</p>
                                            <button name="deletePost" value="${posts.id}" type="submit" class="btn btn-danger btn-lg d-block mx-auto">Yes, delete</button>
                                        </div>
                                    </form>
<%--                                    <form action="/single" method="get">--%>
<%--                                        <button>Click Here For Details!</button>--%>
<%--                                        <input type = "hidden" name = "singlePost" value="${posts.id}">--%>
<%--                                    </form>--%>
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
