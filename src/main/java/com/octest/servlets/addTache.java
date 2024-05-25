package com.octest.servlets;

import com.octest.DAO.TacheDAOImpl;
import com.octest.beans.Tache;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "addTache", value = "/addTache")
public class addTache extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        request.setAttribute("idProjet",id);
        TacheDAOImpl ta=new TacheDAOImpl();
        try {
            request.setAttribute("Tache",ta.ShowTaches(id));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/AddTache.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description_tache = request.getParameter("description_tache");
        Date date_debut = Date.valueOf(request.getParameter("date_debutT"));
        Date date_fin = Date.valueOf(request.getParameter("DateFinTache"));
        String statut = request.getParameter("StatutTache");
        Integer projet_id = Integer.valueOf(request.getParameter("projet_id"));

        Tache tache = new Tache(description_tache, date_debut, date_fin, statut, projet_id);
        TacheDAOImpl tacheDAO = new TacheDAOImpl();

        try {
            tacheDAO.AddTaches(tache);
            request.setAttribute("Tache", tacheDAO.ShowTaches(projet_id));
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowTaches.jsp").forward(request, response);
    }
}