package com.octest.DAO;

import com.octest.beans.Projet;


import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProjetDAOImpl implements ProjetDAO{
    @Override
    public ArrayList<Projet> ShowProjet() throws SQLException, ClassNotFoundException {
        ArrayList<Projet> projets=new ArrayList<>();
        String sql="SELECT * FROM Projet";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();
        System.out.println(resultat);
        while (resultat.next()) {
            Integer projet_id = resultat.getInt("projet_id");
            String nom_projet=resultat.getString("nom_projet");
            System.out.println("jjjjjjjjjjjjjjjjjjjjjjjjjjjj");
            String description_projet=resultat.getString("description_projet");
            Date date_debut = resultat.getDate("date_debut");
            Date date_fin = resultat.getDate("date_fin");
            Integer budget = resultat.getInt("budget");
            Projet prt=new Projet(projet_id,nom_projet,description_projet,date_debut,date_fin,budget);
            System.out.println(prt.getNom());
            projets.add(prt);
        }
        projets.forEach(projet -> System.out.println(projet.getNom()));
        return projets;
    }

    @Override
    public void AddProjet(Projet Projet) throws SQLException, ClassNotFoundException {

        String sql = "INSERT INTO projet (nomProjet,descriptionProjet, dateDebutProjet,dateFinProjet,Budget) VALUES (?,?,?,?,?)";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setString(1,Projet.getNom() );
        s.setString(2,Projet.getDescription_projet() );
        //s.setDate(3,Projet.getDateDebut());
      //  s.setDate(4,Projet.getDateFin() );
        s.setInt(5,Projet.getBudget() );
        s.executeUpdate();

    }

    @Override
    public void DeleteProjet(Integer idProjet) {

    }

    @Override
    public Projet RecupererProjet(Integer idProjet) {
        return null;
    }

    @Override
    public void UpdateProjet(Integer idProjet, Projet projet) {

    }
}
