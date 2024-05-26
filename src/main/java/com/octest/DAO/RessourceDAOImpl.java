package com.octest.DAO;


import com.octest.beans.Ressource;

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
            Integer idRessource=resultat.getInt("ressource_id");
            String nomRessource=resultat.getString("ressource_nom");
            String typeRessource = resultat.getString("type_ressource");
            Integer quantiteRessource = resultat.getInt("quantite");
            String infoFournisseur = resultat.getString("fournisseur");
            Ressource rs=new Ressource(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,idTache);
            ressources.add(rs);


        }
        return ressources;
    }









}
