package com.octest.DAO;

import com.octest.beans.Projet;


import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProjetDAOImpl implements ProjetDAO{
    @Override
    public ArrayList<Projet> ShowProjet(Integer projectId) throws SQLException, ClassNotFoundException {
        ArrayList<Projet> projets=new ArrayList<>();
        String sql="SELECT * FROM Projet where  projet_id=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1,projectId);
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
            String picture_Url=resultat.getString("picture_Url");
            Projet prt=new Projet(projet_id,nom_projet,description_projet,date_debut,date_fin,budget,picture_Url);
            System.out.println(prt.getNom());
            projets.add(prt);
        }
        projets.forEach(projet -> System.out.println(projet.getNom()));
        return projets;
    }

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
            String picture_Url=resultat.getString("picture_Url");
            Projet prt=new Projet(projet_id,nom_projet,description_projet,date_debut,date_fin,budget,picture_Url);
            System.out.println(prt.getNom());
            projets.add(prt);
        }
        projets.forEach(projet -> System.out.println(projet.getNom()));
        return projets;
    }

    @Override
    public void AddProjet(Projet Projet) throws SQLException, ClassNotFoundException {

        String sql = "INSERT INTO projet (nom_projet,description_projet, date_debut,date_fin,budget) VALUES (?,?,?,?,?)";
        PreparedStatement Add = ConnectionDAO.getConnection().prepareStatement(sql);
        Add.setString(1,Projet.getNom() );
        Add.setString(2,Projet.getDescription_projet() );
        Add.setDate(3,Projet.getDateDebut());
        Add.setDate(4,Projet.getDateFin() );
        Add.setInt(5,Projet.getBudget() );
        Add.executeUpdate();

    }



    @Override

        public void SupprimerProjet(Integer projet_id) throws SQLException, ClassNotFoundException {
            String sql = "DELETE FROM Projet WHERE projet_id= ?";
            PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
            statement.setInt(1, projet_id);
            statement.executeUpdate();

        }




    @Override
    public void ModifierProjet(Integer idProjet, Projet projet) {

    }
}
