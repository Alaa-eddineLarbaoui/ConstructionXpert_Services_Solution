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
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .navbar-light .navbar-brand {
            margin-top: 5px;
        }
        .nav-link-shadow {
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .logo {
            display: flex;
            gap: 10px;
        }
        .imgdeprojet{
            height: 72%;

        }
        .nav-link {
            font-weight: bold;
            color: white;
            display: flex;
            gap: 5px;
        }

        .main {
            display: flex;
            flex-wrap: wrap;
            justify-content: left;
            padding: 20px;
        }

        .card-footer {
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px; /* Add gap between buttons */
        }

        .card {
            background-color: #dca63d;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 15px;
            flex: 1 1 calc(33.333% - 30px); /* Adapt the width and margin */
            max-width: calc(33.333% - 30px);
            display: flex;
            flex-direction: column;
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(255, 255, 255, 0.4); /* Ombre plus intense au survol */
        }

        .imgCard {
            width: 100%;
            height: 100%;
            border-bottom: 1px solid #ddd;
            border-radius: 9px;
        }

        .card-body {
            padding: 15px;
            flex-grow: 1;
        }


         .card-text {
             font-size: 16px;
             color: #333;
             margin: 0 0 10px;
             font-family: 'Roboto', sans-serif; /* Appliquer la police Roboto */
         }

        form {
            padding: 15px;
            text-align: right;
            margin: 0px;
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
            background-color: #444; /* Couleur de fond simple */
            color: white; /* Couleur du texte */
        }

        .btn:hover {
            background-color: #666; /* Couleur de fond au survol */
            box-shadow: 0 4px 8px rgba(255, 255, 255, 0.2); /* Ombre au survol */
        }

        .d-inline {
            display: inline;
            padding: 0px;
        }

        .card-footer:last-child {
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
        @media (max-width: 768px) {
            .logo img {
                width: 40px;
                height: 40px;
            }

            .navbar-brand {
                font-size: 18px;
            }

            .nav-link {
                font-size: 14px;
            }

            .title h1 {
                font-size: 24px;
            }

            .description {
                font-size: 14px;
            }

            .btn {
                padding: 8px 16px;
                font-size: 14px;
            }
        }

        /* Media query pour les écrans de taille moyenne à grande (par exemple, tablettes et ordinateurs portables) */
        @media (min-width: 768px) {
            .logo img {
                width: 50px;
                height: 50px;
            }

            .navbar-brand {
                font-size: 24px;
            }

            .nav-link {
                font-size: 16px;
            }

            .title h1 {
                font-size: 32px;
            }


            .btn {
                padding: 10px 20px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body class="body">
<header class="header2">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <div class="logo">
                <img src="https://i.ibb.co/FqvDG8v/Design-sans-titre-6.png" alt="image de logo" style="width: 50px; height: 50px;">
                <a class="navbar-brand" href="#">ConstructionXpert</a>
            </div>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="/ConstructionXpert_Services_Solution_war_exploded/Acceuil">Accueil</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Projets</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Contact</a>
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

<div class="main">
    <c:forEach var="projet" items="${Projets}">
        <div class="card">
            <div class="imgdeprojet">
                <a href="/ConstructionXpert_Services_Solution_war_exploded/Showdetails?projectId=${projet.projet_id}">
                    <img src="${projet.getPicture_Url()}" class="imgCard" alt="Image de la chambre">
                </a>
            </div>

            <div class="card-body">
                <p class="card-text">Name of Projet : ${projet.getNom()}</p>
                <div class="card-footer">
                    <a href="UpdateProjet?id=${projet.projet_id}" class="btn">
                        <i class="bi bi-pencil me-2"></i> Edit
                    </a>
                    <a href="ShowTaches?id=${projet.projet_id}" class="btn">
                        <i class="bi bi-list-check me-2"></i> View Tasks
                    </a>
                    <form action="Cancel" method="post" class="d-inline">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="projectId" value="${projet.projet_id}">
                        <button type="submit" class="btn" onclick="return confirm('Are you sure you want to delete this project?')">
                            <i class="bi bi-trash me-2"></i> Delete
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
