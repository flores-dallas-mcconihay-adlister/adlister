<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaughLister</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <div id="loginContainer" class="content">
        <div class="logo-box">
            <div class="adjust-box-margin">
                <h1 class="main-header brand-font">Laughlister!</h1>
                <p class="lead main-p"><em>It's like Craigslist, but for jokes!</em></p>
                <hr class="main-break">
                <div class="emoji-pic">
                    <img class="center-pic" src="../images/laughing-emoji.png" alt="emoji">
                </div>
                <button type="button" class="btn btn-outline-secondary join-button" data-toggle="modal" data-target="#register-Modal">Join</button>
            </div>
        </div>
        <div id="main" class="form-container">
            <jsp:include page="partials/form.jsp"/>
        </div>
    </div>
    <jsp:include page="partials/modals/registerModal.jsp"/>
    <jsp:include page="partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>