<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23/05/2024
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    
</head>
<body>
<c:forEach var="projet" items="${Projets}">
    <div class="card">
        <a href="/ConstructionXpert_Services_Solution_war_exploded/Showdetails?projectId=${projet.getProjet_id()}">

            <img src="https://allenif.com/wp-content/uploads/2020/11/hard-hat-plans-tape-measure_website.jpg" class="imgCard" alt="Image de la chambre">
        </a>

        <div class="card-body">
            <p class="card-text">Type: ${projet.getNom()}</p>
        </div>

        <form action="Cancel" method="post">
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="projectId" value="${projet.getProjet_id()}">
            <button type="submit">Cancel</button>
        </form>


    </div>

</c:forEach>
</body>
</html>
