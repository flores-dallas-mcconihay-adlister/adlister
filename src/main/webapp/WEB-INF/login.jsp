<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaughLister</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
<div id="loginContainer" class="container">
    <div class="row">
        <div class="mx-auto">
            <jsp:include page="/WEB-INF/partials/loginJumbotron.jsp"/>
        </div>
        <div id="main" class="mx-auto d-flex justify-content-sm-center align-items-center">
            <jsp:include page="partials/form.jsp"/>
        </div>
    </div>
</div>



<jsp:include page="partials/modals/registerModal.jsp"/>

    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>

</body>
</html>