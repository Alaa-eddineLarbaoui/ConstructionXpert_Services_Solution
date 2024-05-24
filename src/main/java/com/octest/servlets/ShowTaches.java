package com.octest.servlets;

import com.octest.DAO.ProjetDAOImpl;

import com.octest.DAO.TacheDAOImpl;
import com.octest.beans.Tache;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "ShowTaches", value = "/ShowTaches")
public class ShowTaches extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id=Integer.valueOf(request.getParameter("id"));
        request.setAttribute("idProjet",id);
        TacheDAOImpl ta=new TacheDAOImpl();
        try {
            request.setAttribute("Tache",ta.ShowTaches(id));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowTaches.jsp").forward(request, response);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Integer id=Integer.valueOf(request.getParameter("id"));
        String description=request.getParameter("description_tache");
        Date dateDebut=Date.valueOf(request.getParameter("date_debutT"));
        Date DateFinTache=Date.valueOf(request.getParameter("DateFinTache"));
        String StatutTache=request.getParameter("StatutTache");
        Tache tach=new Tache(id,description,dateDebut,DateFinTache,StatutTache);
        TacheDAOImpl td=new TacheDAOImpl();
        try {
            td.AddTaches(tach);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAddTaches.jsp").forward(request, response);

    }
}