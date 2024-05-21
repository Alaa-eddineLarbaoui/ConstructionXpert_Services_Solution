<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>



<c:forEach var="projet" items="${Projets}">
    <div class="ss">
        <h1>${projet.getDescription_projet()}</h1>
        <h2>${projet.getNom()}</h2>
    </div>
</c:forEach>
</body>
</html>
