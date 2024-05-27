<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Liste des chambres</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style><%@ include file="Style.css"%></style>
</head>
<body>
<header class="header">

    <nav class="navbar navbar-expand-lg navbar-light" id="nav">
        <div class="container">
            <div class="logo">
                <img src="https://i.ibb.co/FqvDG8v/Design-sans-titre-6.png" alt="image de logo" style="width: 50px; height: 50px;">
                <a class="navbar-brand" href="#">ConstructionXpert</a>
            </div>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Accueil</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="/ConstructionXpert_Services_Solution_war_exploded/AfficherProjet">Projets</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link nav-link-shadow" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="title">
        <h1> Gestion de Projets de Construction Efficace </h1>
        <p class="description">Planifiez, organisez et gérez vos projets de construction avec précision et efficacité grâce à une interface intuitive qui permet de visualiser, mettre à jour et supprimer des projets, des tâches et des ressources, tout en assurant la sécurité et l'intégrité de vos données.</p>


        <a href="/ConstructionXpert_Services_Solution_war_exploded/AfficherProjet" class="btn">GET STARTED</a>
    </div>


</header>


<div class="container text-center my-5">
    <h2>What we offer to our clients</h2>
    <p class="text-muted">Who are in extremely love with eco friendly system..</p>
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Interior Design</h5>
                    <p class="card-text">
                        Sony laptops are among the most well known laptops on today’s market. Sony is a name that over time has established itself as creating a solid product.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Architecture Design</h5>
                    <p class="card-text">
                        Computer users and programmers have become so accustomed to using Windows, even for the changing capabilities and the appearances of the graphical.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card1">
                <div class="card-body">
                    <h5 class="card-title">Concept Design</h5>
                    <p class="card-text">
                        Can you imagine what we will be downloading in another twenty years? I mean who would have ever thought that you could record sound.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script>
    window.addEventListener("scroll", function () {
        let navbar = document.querySelector(".navbar");
        if (window.scrollY > 150) {
            navbar.classList.add("bgadd");
        } else {
            navbar.classList.remove("bgadd");
        }
    });
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>