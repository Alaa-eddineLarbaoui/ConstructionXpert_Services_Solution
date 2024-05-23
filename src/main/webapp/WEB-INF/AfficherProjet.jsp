<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@ include file="Style.css"%></style>

    <style>body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    .main {
        display: flex;
        flex-wrap: wrap;
        justify-content: left;
        padding: 20px;
    }

    .card {
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 15px;
        flex: 1 1 calc(33.333% - 30px); /* Adapt the width and margin */
        max-width: calc(33.333% - 30px);
        display: flex;
        flex-direction: column;
    }

    .imgCard {
        width: 100%;
        height: auto;
        border-bottom: 1px solid #ddd;
    }

    .card-body {
        padding: 15px;
        flex-grow: 1;
    }

    .card-text {
        font-size: 16px;
        color: #333;
        margin: 0 0 10px;
    }

    form {
        padding: 15px;
        text-align: right;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        border: none;
        padding: 10px 15px;
        font-size: 14px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    /* Responsive adjustments */
    @media (max-width: 1200px) {
        .card {
            flex: 1 1 calc(50% - 30px);
            max-width: calc(50% - 30px);
        }
    }

    @media (max-width: 768px) {
        .card {
            flex: 1 1 calc(100% - 30px);
            max-width: calc(100% - 30px);
        }
    }
    </style>
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
                <a href="/ConstructionXpert_Services_Solution_war_exploded/Showdetails?projectId=${projet.projet_id}">

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
        </div>

</body>
</html>
