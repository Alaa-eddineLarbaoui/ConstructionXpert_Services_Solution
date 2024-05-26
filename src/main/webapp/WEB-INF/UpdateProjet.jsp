<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Projet</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
body{
    font-family: Arial, sans-serif;

    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 1px 23px 1px 23px;
}

        label {
            font-weight: bold;
        }
        .form1{
            display: flex;
            gap: 23px;
        }
        .form-group{
            width: 100%;
        }


    </style>
</head>
<body>
<div class="container mt-5">
    <h5>Modifier Projet</h5>
    <form action="UpdateProjet" method="post" class="mb-4">
        <input type="hidden" name="id" value="${Projet.projet_id}">


        <div class="form1">

            <div class="form-group">
                <label for="Name">Nom du projet</label>
                <input type="text" class="form-control" id="Name" name="Name" value="${Projet.getNom()}" placeholder="Entrer nom">
            </div>

            <div class="form-group">
                <label for="Budget">Budget</label>
                <input type="number" class="form-control" id="Budget" name="Budget" value="${Projet.budget}" placeholder="Entrer budget">
            </div>

        </div>

        <div class="form1">
            <div class="form-group">
                <label for="DateDebut">Date de début</label>
                <input type="date" class="form-control" id="DateDebut" name="DateDebut" value="${Projet.dateDebut}">
            </div>
            <div class="form-group">
                <label for="DateFin">Date de fin</label>
                <input type="date" class="form-control" id="DateFin" name="DateFin" value="${Projet.dateFin}">
            </div>


        </div>



        <div class="form-group">
            <label for="Description">Description</label>
            <textarea class="form-control" id="Description" name="Description" placeholder="Entrer description">${Projet.description_projet}</textarea>
        </div>
        <div class="form-group">
            <label for="Picture_Url">Url d'image</label>
            <input type="text" class="form-control" id="Picture_Url" name="Picture_Url" value="${Projet.picture_Url}">
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
