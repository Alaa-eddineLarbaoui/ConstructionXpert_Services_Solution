<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>ezhdhjsdhahdshdh</p>
<a href="/ConstructionXpert_Services_Solution_war_exploded/addTache">
    <div class="btnAjou">
        <button class="add-project-btn">Ajouter un Projet</button>
    </div>
</a>

<c:forEach var="tache" items="${Tache}">



            <p class="card-text">Name of Projet  ${tache.description_tache}</p>

    <p><strong>Date début</strong> :${tache.date_debut}</p>
    <p><strong>Date fin</strong>:${tache.date_fin}</p>
    <p class="card-text">Name of Projet  ${tache.statut}</p>




</c:forEach>
</body>
</html>
