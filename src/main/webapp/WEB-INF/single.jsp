<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: adaminaflores
  Date: 12/13/21
  Time: 4:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${posts.title}</title>
    <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Single Post"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbars/profile-navbar.jsp"/>
    <div class = "container">
        <h1>Title: ${singlePost.title}</h1>
        <h2>Description: ${singlePost.description}</h2>
        <h3>Category: ${singlePost.category}</h3>

    </div>

    

</body>
</html>
