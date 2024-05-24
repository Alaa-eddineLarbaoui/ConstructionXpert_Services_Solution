<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24/05/2024
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>




<div id="container">
    <h1>Add projet </h1>
    <form action="ShowTaches" method="post">


        <label for="description_tache">Description  description_tache:</label>
        <textarea id="description_tache" name="description_tache" rows="4" required></textarea><br>

        <label for="date_debutT">Date de Début:</label>
        <input type="date" id="date_debutT" name="date_debutT" required><br>




            <button type="submit">Ajouter</button>

    </form>
</div>



</body>
</html>
