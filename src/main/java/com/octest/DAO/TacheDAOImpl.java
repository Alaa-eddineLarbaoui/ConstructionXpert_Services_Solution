package com.octest.DAO;

import com.octest.beans.Projet;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TacheDAOImpl {

//    @Override
//    public ArrayList<Projet> ShowTache() throws SQLException, ClassNotFoundException {
//        ArrayList<Projet> projets = new ArrayList<>();
//        String sql = "SELECT * FROM Tache";
//        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
//        ResultSet resultat = statement.executeQuery();
//        System.out.println(resultat);
//        while (resultat.next()) {
//            Integer projet_id = resultat.getInt("projet_id");
//            String nom_projet = resultat.getString("nom_projet");
//            String description_projet = resultat.getString("description_projet");
//            Date date_debut = resultat.getDate("date_debut");
//            Date date_fin = resultat.getDate("date_fin");
//            Integer budget = resultat.getInt("budget");
//            String picture_Url = resultat.getString("picture_Url");
//            Projet prt = new Projet(projet_id, nom_projet, description_projet, date_debut, date_fin, budget, picture_Url);
//            System.out.println(prt.getNom());
//            projets.add(prt);
//        }
//        projets.forEach(projet -> System.out.println(projet.getNom()));
//        return projets;
//    }
}
