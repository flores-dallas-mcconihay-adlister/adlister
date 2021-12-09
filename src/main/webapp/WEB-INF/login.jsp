<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/8/21
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #main {
            background-color: #d9d6d6;
            height: 500px;
        }
    </style>
    <title>LaughLister</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>

    <container id="main" class="d-flex justify-content-sm-center align-items-center">
        <jsp:include page="partials/form.jsp"/>
    </container>

    <jsp:include page="/WEB-INF/partials/scripts.jsp"/>
</body>
</html>
