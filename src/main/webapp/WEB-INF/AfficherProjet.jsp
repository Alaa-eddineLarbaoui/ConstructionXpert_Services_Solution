<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@ include file="Style.css"%></style>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
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
            margin: 0px;
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




        .card-footer {
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px; /* Add gap between buttons */
        }

        .card-footer a,
        .card-footer form {
            display: flex;
            align-items: center;
        }

        .btn {
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-warning {
            background-color: #ffc107;
            color: white;
        }

        .btn-info {
            background-color: #17a2b8;
            color: white;
        }

        .btn-danger {
            background-color: #dc3545;
            color: white;
        }

        .d-inline {
            display: inline;
            padding: 0px;
        }
        .card-footer:last-child{
            background-color: transparent;
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

</head>
<body class="body">
<header class="header2" >

    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">test</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item active">
                        <a class="nav-link text-black Bold text." href="#">Accueil</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item active">
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

                <img src="${projet.getPicture_Url()}" class="imgCard" alt="Image de la chambre">
            </a>

            <div class="card-body">
                <p class="card-text">Name of Projet : ${projet.getNom()}</p>



            <div class="card-footer">
                <a href="UpdateProjet?id=${projet.projet_id}" class="btn btn-warning">
                    <i class="bi bi-pencil me-2"></i> Edit
                </a>
                <a href="ShowTaches?id=${projet.projet_id}" class="btn btn-info">
                    <i class="bi bi-list-check me-2"></i> View Tasks
                </a>

                <form action="Cancel" method="post" class="d-inline">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="projectId" value="${projet.projet_id}">
                    <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this project?')">
                        <i class="bi bi-trash me-2"></i> Delete
                    </button>
                </form>

                <form action="UpdateProjet" method="post" class="d-inline">
                    <input type="hidden" name="itemId" value="${projet.projet_id}">
                    <button type="submit" class="btn btn-danger">
                        <i class="bi bi-trash me-2"></i> Update
                    </button>
                </form>

            </div>
            </div>

        </div>

    </c:forEach>

</div>

</body>
</html>