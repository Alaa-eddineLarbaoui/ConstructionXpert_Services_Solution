<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Tâches</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card-custom {
            margin-bottom: 20px;
        }
        .card-footer-custom {
            display: flex;
            justify-content: space-between;
        }
        .btn-custom {
            display: inline-flex;
            align-items: center;
        }
        .btn-custom i {
            margin-right: 5px;
        }
    </style>
</head>
<body>
<a href="/ConstructionXpert_Services_Solution_war_exploded/addTache?id=${idProjet}">
    <div class="btnAjou">
        <button class="add-project-btn">Ajouter une tache</button>
    </div>
</a>
<div class="container mt-5">
    <h2 class="mb-4">Liste des Tâches</h2>
    <c:forEach var="tache" items="${Tache}">
        <div class="card card-custom">
            <div class="card-body">
                <p class="card-text"><strong>Description :</strong> ${tache.description_tache}</p>
                <p><strong>Date début :</strong> ${tache.date_debut}</p>
                <p><strong>Date fin :</strong> ${tache.date_fin}</p>
                <p class="card-text"><strong>Statut :</strong> ${tache.statut}</p>
            </div>


            <div class="card-footer card-footer-custom">
                <a href="UpdateTache?id=${tache.tache_id}" class="btn btn-warning btn-custom">
                    <i class="bi bi-pencil"></i> Edit
                </a>
                <form action="DeleteTache" method="post" class="d-inline">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="tacheId" value="${tache.tache_id}">
                    <input type="hidden" name="projet_id" value="${tache.projet_id}">
                    <button type="submit" class="btn btn-danger btn-custom" onclick="return confirm('Are you sure you want to delete this project?')">
                        <i class="bi bi-trash"></i> Delete
                    </button>
                </form>
            </div>


        </div>
    </c:forEach>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>



