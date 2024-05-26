<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <form action="UpdateTache" method="post" class="card p-4">
        <input type="hidden" name="idTache" value="${Tache.getTache_id()}">
        <div class="form-group">
            <label>Description</label>
            <input type="text" name="descriptionTache" class="form-control" value="${Tache.getDescription_tache()}" placeholder="Entrer Description">
        </div>
        <div class="form-group">
            <label>Date Debut</label>
            <input type="date" name="DateDebutTache" class="form-control" value="${Tache.getDate_debut()}" placeholder="Entrer Date Debut">
        </div>
        <div class="form-group">
            <label>Date Fin</label>
            <input type="date" name="DateFinTache" class="form-control" value="${Tache.getDate_fin()}" placeholder="Entrer Date Fin">
        </div>
        <div class="form-group">
            <label>Statut Tache</label>
            <input type="text" name="StatutTache" class="form-control" value="${Tache.getStatut()}" placeholder="Entrer Statut Tache">
        </div>
        <input type="hidden" name="idProjet" value="${Tache.getProjet_id()}">
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
</body>
</html>
