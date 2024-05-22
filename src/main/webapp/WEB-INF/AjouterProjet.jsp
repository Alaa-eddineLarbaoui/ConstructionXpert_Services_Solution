<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style><%@ include file="Style.css"%></style>

</head>
<body>
<div id="container">
    <h1>Add projet </h1>
    <form action="add" method="post">
        <label for="nom_projet">Nom du Projet:</label>
        <input type="text" id="nom_projet" name="nom_projet" required><br>

        <label for="description_projet">Description du Projet:</label>
        <textarea id="description_projet" name="description_projet" rows="4" required></textarea><br>

        <label for="dateDebut">Date de Début:</label>
        <input type="text" id="dateDebut" name="dateDebut" required><br>

        <label for="dateFin">Date de Fin:</label>
        <input type="text" id="dateFin" name="dateFin" required><br>

        <label for="budget">Budget:</label>
        <input type="number" id="budget" name="budget" required><br>

        <a href="/ConstructionXpert_Services_Solution_war_exploded/add">
            <button type="submit">Ajouter</button>
        </a>
    </form>
</div>
</body>
</html>
