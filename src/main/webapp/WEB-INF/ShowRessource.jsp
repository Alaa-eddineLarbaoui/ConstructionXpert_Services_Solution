<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gestion des Ressources</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .card-header h2 {
            font-size: 1.5em;
            margin: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif; /* Exemple de font-family professionnelle */
        }

        .card-body h3, .card-body h4 {
            font-size: 1.1em;
            margin: 0.5em 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif; 
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .btn {
            font-size: 1em;
            padding: 0.375rem 0.75rem;
        }
        .card-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .resource-container {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
        }
        .card {
            display: flex;
            flex-direction: row;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            padding: 1rem;
            flex: 1 1 calc(50% - 1rem);
            max-width: calc(50% - 1rem);
            flex-wrap: wrap;
            justify-content: left;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-img-container {
            flex: 0 0 150px;
            margin-right: 1rem;
        }
        .card-img-container img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }
        .card-content {
            flex: 1;
        }
        .imgRessource {
            display: flex;
        }

        /* Responsive styles */
        @media (max-width: 1200px) {
            .card {
                flex: 1 1 calc(50% - 1rem);
                max-width: calc(50% - 1rem);
            }
            .card-header h2 {
                font-size: 1.4em;
            }
            .card-body h3, .card-body h4 {
                font-size: 1em;
            }
        }

        @media (max-width: 834px) {
            .card {
                flex: 1 1 calc(100% - 1rem);
                max-width: calc(100% - 1rem);
            }
            .card-header h2 {
                font-size: 1.3em;
            }
            .card-body h3, .card-body h4 {
                font-size: 0.9em;
            }
        }

        @media (max-width: 600px) {
            .card {
                flex: 1 1 calc(100% - 1rem);
                max-width: calc(100% - 1rem);
            }
            .card-header h2 {
                font-size: 1.2em;
            }
            .card-body h3, .card-body h4 {
                font-size: 0.8em;
            }
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <a href="/ConstructionXpert_Services_Solution_war_exploded/AddRessource?id=${idtache}" class="btn btn-primary mb-3">
        <i class="bi bi-plus-circle me-2"></i> Ajouter une ressource
    </a>
    <div class="resource-container">
        <c:forEach var="Ressources" items="${Ressources}">
            <div class="card mb-4">
                <div class="card-content">
                    <div class="card-header">
                        <h2 class="card-title">Ressource N°: ${Ressources.getRessource_id()}</h2>
                    </div>
                    <div class="imgRessource">
                        <div class="card-body">
                            <h3>Nom: ${Ressources.getRessource_nom()}</h3>
                            <h4>Type: ${Ressources.getType_ressource()}</h4>
                            <h4>Quantité: ${Ressources.getQuantite()}</h4>
                            <h4>Fournisseur: ${Ressources.getFournisseur()}</h4>
                            <h4>Tâche N°: ${Ressources.getTache_id()}</h4>
                        </div>
                        <div class="card-img-container">
                            <img src="https://cdn.webshopapp.com/shops/323035/files/400284862/image.jpg" alt="Image de la ressource">
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="UpdateRessourceTache?id=${Ressources.getRessource_id()}" class="btn btn-warning">
                            <i class="bi bi-pencil me-2"></i> Modifier
                        </a>
                        <form action="DeleteRessource" method="post" class="d-inline">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="RessourceId" value="${Ressources.getRessource_id()}">
                            <input type="hidden" name="TacheId" value="${Ressources.tache_id}">
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cette ressource ?')">
                                <i class="bi bi-trash me-2"></i> Supprimer
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
