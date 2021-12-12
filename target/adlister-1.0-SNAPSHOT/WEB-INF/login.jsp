<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaughLister</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body class="d-flex flex-column">
    <div id="loginContainer" class="content container">
        <div class="row">
            <div class="mx-auto">
                <div class="logo-box ">
                    <div class="container">
                        <h1 class="display-1">Laughlister!</h1>
                        <p class="lead"><em>It's like Craigslist, but for jokes!</em></p>
                        <hr>
                        <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#register-Modal">Join</button>
                    </div>
                </div>
            </div>
            <div id="main" class="mx-auto d-flex justify-content-sm-center align-items-center">
                <jsp:include page="partials/form.jsp"/>
            </div>
        </div>
    </div>



    <jsp:include page="partials/modals/registerModal.jsp"/>
    <jsp:include page="partials/footer.jsp"/>

    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>

</body>
</html>