package com.octest.servlets;

import com.octest.DAO.ProjetDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SupprimerProjet", value = "/Cancel")
public class SupprimerProjet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {






    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer projet_id = Integer.valueOf(request.getParameter("projectId"));
        ProjetDAOImpl rr = new ProjetDAOImpl();
        try {
            rr.SupprimerProjet(projet_id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/Acceuil.jsp").forward(request, response);
        response.sendRedirect("");
    }
}
