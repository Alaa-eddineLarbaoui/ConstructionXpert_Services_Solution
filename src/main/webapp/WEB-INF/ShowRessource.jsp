<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card-header h2, .card-body h2, .card-body h3, .card-body h4 {
            font-size: 14px;
        }
        .btnAjou .add-project-btn {
            font-size: 14px;
            padding: 0.375rem 0.75rem;
        }
    </style>
</head>
<body>
<a href="/ConstructionXpert_Services_Solution_war_exploded/AddRessource?id=${idtache}" class="btn btn-primary mb-3">Ajouter une ressource</a>
<div class="container mt-4">
    <c:forEach var="Ressources" items="${Ressources}">
        <div class="card mb-4">
            <div class="card-header">
                <h2 class="card-title">Ressource N°: ${Ressources.getRessource_id()}</h2>
            </div>
            <div class="card-body">
                <h3>Nom: ${Ressources.getRessource_nom()}</h3>
                <h4>Type: ${Ressources.getType_ressource()}</h4>
                <h4>Quantité: ${Ressources.getQuantite()}</h4>
                <h4>Fournisseur: ${Ressources.getFournisseur()}</h4>
                <h4>Tâche N°: ${Ressources.getTache_id()}</h4>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
