package com.octest.DAO;


import com.octest.beans.Ressource;
import com.octest.beans.Tache;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RessourceDAOImpl implements RessourceDAO{
    @Override
    public ArrayList<Ressource> ShowRessources(Integer idTache) throws SQLException, ClassNotFoundException {
        ArrayList<Ressource> ressources=new ArrayList<>();
        String sql="SELECT * FROM ressource WHERE tache_id=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1,idTache);
        ResultSet resultat = statement.executeQuery();


        while (resultat.next()) {
            Integer ressource_id=resultat.getInt("ressource_id");
            String ressource_nom=resultat.getString("ressource_nom");
            String type_ressource = resultat.getString("type_ressource");
            Integer quantite = resultat.getInt("quantite");
            String fournisseur = resultat.getString("fournisseur");
            Integer tache_id = resultat.getInt("tache_id");

            Ressource rs=new Ressource(ressource_id,ressource_nom,type_ressource,quantite,fournisseur,tache_id);
            ressources.add(rs);

        }
        return ressources;
    }


    @Override
    public void AddRessources(Ressource ressource) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO Ressource (ressource_nom, type_ressource, quantite, fournisseur, tache_id) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setString(1, ressource.getRessource_nom());
        s.setString(2, ressource.getType_ressource());
        s.setInt(3, ressource.getQuantite());
        s.setString(4, ressource.getFournisseur());
        s.setInt(5, ressource.getTache_id());
        s.executeUpdate();
    }






}
