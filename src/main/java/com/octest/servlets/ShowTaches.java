package com.octest.servlets;

import com.octest.DAO.ProjetDAOImpl;

import com.octest.DAO.TacheDAOImpl;


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
        ProjetDAOImpl pr=new ProjetDAOImpl();
        try {
            request.setAttribute("Projets",pr.ShowProjet());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
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
    }
}