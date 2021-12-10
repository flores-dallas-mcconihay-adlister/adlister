<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaughLister</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbars/navbar.jsp"/>

    <container id="main" class="d-flex justify-content-sm-center align-items-center">
        <jsp:include page="partials/form.jsp"/>
    </container>
    <jsp:include page="partials/registerModal.jsp"/>

    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>

</body>
</html>