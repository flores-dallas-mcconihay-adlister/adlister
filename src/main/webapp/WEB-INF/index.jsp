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
<jsp:include page="partials/divs/main-header.jsp"/>
<div class="container index-container">
    <jsp:include page="partials/modals/addPostModalBtnTrigger.jsp"/>
    <container class="flex-column d-flex">
        <c:forEach var="posts" items="${posts}">
            <div class="card cards">
                <div class="card-body">
                    <h3 class="card-title"> ${posts.title}</h3>
                    <div class="my-3 d-flex flex-column" style="height: fit-content">
                        <p class="invisible card-text hide-joke ">${posts.description}</p>
                        <button id="show-joke-btn" class="btn btn-dark show-button btn-sm align-self-center">Show</button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </container>
</div>
<jsp:include page="partials/footer.jsp"/>

<jsp:include page="partials/scripts.jsp"/>
</body>
</html>
