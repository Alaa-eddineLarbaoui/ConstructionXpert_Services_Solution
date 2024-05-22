<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@ include file="Style.css"%></style>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="body">
<header class="header2">

    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">test</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Accueil</a>
                    </li>

                    <li class="nav-item">
                        <a></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="titleProjet">
        <h1> Projets</h1>

    </div>
</header>

<div class="para">
    <h1 class="titre"> Voyez Vos Derniers Travaux </h1>
</div>

<a href="/ConstructionXpert_Services_Solution_war_exploded/add">
    <div class="btnAjou">
        <button class="add-project-btn">Ajouter un Projet</button>
    </div>
</a>


        <div  class="main">
            <c:forEach var="projet" items="${Projets}">
            <div class="card">
                <img src="https://allenif.com/wp-content/uploads/2020/11/hard-hat-plans-tape-measure_website.jpg" class="imgCard" alt="Image de la chambre">
                <div class="card-body">

                    <p class="card-text">Type: ${projet.getNom()}</p>

                </div>
            </div>
                <form action="Cancel" method="post">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="projectId" value="${projet.getProjet_id()}">
                    <input type="submit">
                </form>
            </c:forEach>
        </div>

</body>
</html>
