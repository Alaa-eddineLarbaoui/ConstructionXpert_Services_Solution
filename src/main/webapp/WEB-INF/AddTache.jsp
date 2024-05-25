<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter une Tâche</title>
</head>
<body>
<c:forEach var="tache" items="${Tache}">









<div id="container">
    <h1>Ajouter une tâche</h1>
    <form action="addTache" method="post">
        <label for="description_tache">Description de la tâche:</label>
        <textarea id="description_tache" name="description_tache" rows="4" required></textarea><br>

        <label for="date_debutT">Date de Début:</label>
        <input type="date" id="date_debutT" name="date_debutT" required><br>

        <label for="DateFinTache">Date de Fin:</label>
        <input type="date" id="DateFinTache" name="DateFinTache" required><br>

        <label for="StatutTache">Statut:</label>
        <input type="text" id="StatutTache" name="StatutTache" required><br>

        <label for="projet_id">Projet ID:</label>
        <input type="hidden" id="projet_id" name="projet_id" value="${tache.projet_id}" required><br>

        <button type="submit">Ajouter</button>
    </form>
</div>
</c:forEach>
</body>
</html>
