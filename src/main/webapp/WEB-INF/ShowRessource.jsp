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
        .BtnOfRessource{
            display: flex;
        }
        .card-footer{
            width: 50%;
        }
        .card-header{
            width: 50%;
        }
    </style>
</head>
<body>
<a href="/ConstructionXpert_Services_Solution_war_exploded/AddRessource?id=${idtache}" class="btn btn-primary mb-3">Ajouter une ressource</a>
<div class="container mt-4">
    <c:forEach var="Ressources" items="${Ressources}">
        <div class="card mb-4">
            <div class="BtnOfRessource">


            <div class="card-header">
                <h2 class="card-title">Ressource N°: ${Ressources.getRessource_id()}</h2>
            </div>
            <div class="card-footer">
                <a href="UpdateRessourceTache?id=${Ressources.getRessource_id()}" class="btn">
                    <i class="bi bi-pencil me-2"></i> Edit
                </a>

                <form action="DeleteRessource" method="post" class="d-inline">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="RessourceId" value="${Ressources.getRessource_id()}">
                    <input type="hidden" name="TacheId" value="${Ressources.tache_id}">
                    <button type="submit" class="btn" onclick="return confirm('Are you sure you want to delete this project?')">
                        <i class="bi bi-trash me-2"></i> Delete
                    </button>
                </form>
            </div>
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
