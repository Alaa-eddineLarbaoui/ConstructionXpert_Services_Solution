package com.octest.servlets;

import com.octest.DAO.RessourceDAOImpl;
import com.octest.DAO.TacheDAOImpl;
import com.octest.beans.Ressource;
import com.octest.beans.Tache;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "AddRessource", value = "/AddRessource")
public class AddRessource extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id = Integer.valueOf(request.getParameter("id"));

        request.setAttribute("idtache",id);




        this.getServletContext().getRequestDispatcher("/WEB-INF/AddRessource.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ressource_nom = request.getParameter("ressource_nom");
        String type_ressource = request.getParameter("type_ressource");
        Integer quantite = Integer.valueOf(request.getParameter("quantite"));
        String fournisseur = request.getParameter("fournisseur");
        Integer tache_id = Integer.valueOf(request.getParameter("tache_id"));

        Ressource ressource = new Ressource(ressource_nom, type_ressource, quantite, fournisseur, tache_id);
        RessourceDAOImpl ressourceDAO = new RessourceDAOImpl();

        try {
            ressourceDAO.AddRessources(ressource);
            request.setAttribute("Ressources", ressourceDAO.ShowRessources(tache_id));
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowRessource.jsp").forward(request, response);
    }
}
