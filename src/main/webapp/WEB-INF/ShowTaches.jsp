<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>ezhdhjsdhahdshdh</p>

<c:forEach var="tache" items="${Tache}">
    <p class="card-text">DESCRIPTION   ${tache.description_tache}</p>
    <p><strong>Date début</strong> :${tache.date_debut}</p>
    <p><strong>Date fin</strong>:${tache.date_fin}</p>
    <p class="card-text">STATUT   ${tache.statut}</p>

    <div class="card-footer">
        <a href="UpdateProjet?id=${tache.projet_id}" class="btn btn-warning">
            <i class="bi bi-pencil me-2"></i> Edit
        </a>

        <form action="DeleteTache" method="post" class="d-inline">
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="tacheId" value="${tache.tache_id}">
            <input type="hidden" name="projet_id" value="${tache.projet_id}">
            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this project?')">
                <i class="bi bi-trash me-2"></i> Delete
            </button>
        </form>
    </div>


</c:forEach>

<a href="/ConstructionXpert_Services_Solution_war_exploded/addTache?id=${idProjet}">
    <div class="btnAjou">
        <button class="add-project-btn">Ajouter une tache</button>
    </div>
</a>
</body>
</html>
