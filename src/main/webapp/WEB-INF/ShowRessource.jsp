<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

<c:forEach var="Ressources" items="${Ressources}">
    <a href="/ConstructionXpert_Services_Solution_war_exploded/AddRessource?id=${Ressources.tache_id}">
        <div class="btnAjou">
            <button class="add-project-btn">Ajouter une ressource</button>
        </div>
    </a>


    <div class="container mt-4">
        <div class="cardd">
            <div class="card-header">
                <h2 class="card-title">Ressource N°: ${Ressources.getRessource_id()}</h2>
            </div>
            <div class="card-body">
                <h2>${Ressources.getRessource_nom()}</h2>
                <h3>${Ressources.getType_ressource()}</h3>
                <h4>${Ressources.getQuantite()}</h4>
                <h4>${Ressources.getFournissuer()}</h4>
                <h4> Tache N°${Ressources.getTache_id()}</h4>

            </div>
        </div>
    </div>
</c:forEach>

</body>

</html>
