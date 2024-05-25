<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>ezhdhjsdhahdshdh</p>


<c:forEach var="tache" items="${Tache}">
    <a href="/ConstructionXpert_Services_Solution_war_exploded/addTache?id=${tache.projet_id}">
        <div class="btnAjou">
            <button class="add-project-btn">Ajouter un Projet</button>
        </div>
    </a>


            <p class="card-text">DESCRIPTION   ${tache.description_tache}</p>

    <p><strong>Date début</strong> :${tache.date_debut}</p>
    <p><strong>Date fin</strong>:${tache.date_fin}</p>
    <p class="card-text">STATUT   ${tache.statut}</p>




</c:forEach>
</body>
</html>
