package com.octest.servlets;

import com.octest.DAO.RessourceDAOImpl;
import com.octest.beans.Ressource;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateRessourceTache", value = "/UpdateRessourceTache")
public class UpdateRessourceTache extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer idRessource=Integer.valueOf(request.getParameter("id"));
        RessourceDAOImpl rc=new RessourceDAOImpl();
        try {
            request.setAttribute("Ressource",rc.RecupererRessource(idRessource));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/UpdateRessource.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer idRessource=Integer.valueOf(request.getParameter("idRessource"));
        String nomRessource=request.getParameter("nomRessource");
        String typeRessource=request.getParameter("typeRessource");
        Integer quantiteRessource=Integer.valueOf(request.getParameter("quantiteRessource"));
        String infoFournisseur=request.getParameter("infoFournisseur");
        Integer idTache=Integer.valueOf(request.getParameter("idTache"));
        Ressource rc=new Ressource(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,idTache);
        RessourceDAOImpl re=new RessourceDAOImpl();

        try {
            re.UpdateRessource(idRessource,rc);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowRessource.jsp").forward(request, response);

    }}