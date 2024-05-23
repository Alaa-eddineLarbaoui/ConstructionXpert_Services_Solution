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


    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #container {
            background-color: white;
            padding: 2px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 55%;
            height: 98%;
        }

        #container h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="date"], input[type="text"],
        input[type="number"],
        textarea {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
            height: 75px;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            align-self: flex-end;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
        }
    </style>
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
        <input type="date" id="dateDebut" name="dateDebut" required><br>

        <label for="dateFin">Date de Fin:</label>
        <input type="date" id="dateFin" name="dateFin" required><br>

        <label for="budget">Budget:</label>
        <input type="number" id="budget" name="budget" required><br>

        <a href="/ConstructionXpert_Services_Solution_war_exploded/add">
            <button type="submit">Ajouter</button>
        </a>
    </form>
</div>
</body>
</html>