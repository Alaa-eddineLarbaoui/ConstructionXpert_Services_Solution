package com.octest.DAO;

import com.octest.beans.Projet;
import com.octest.beans.Tache;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TacheDAOImpl implements TacheDAO {

    @Override
    public ArrayList<Tache> ShowTaches(Integer idProjet) throws SQLException, ClassNotFoundException {
        ArrayList<Tache> taches=new ArrayList<>();
        String sql="SELECT * FROM Tache WHERE projet_id=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1,idProjet);
        ResultSet resultat = statement.executeQuery();


        while (resultat.next()) {
            Integer tache_id = resultat.getInt("tache_id");
            String description_tache=resultat.getString("description_tache");
            Date date_debutT = resultat.getDate("date_debutT");
            Date date_finT = resultat.getDate("date_finT");
            String statut = resultat.getString("statut");
            Tache th=new Tache(tache_id,description_tache,date_debutT,date_finT,statut);
            taches.add(th);


        }


        return taches;
    }
    @Override
    public void AddTaches(Tache tache) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO tache (descriptionTache, dateDebutTache,dateFinTache,statutTache,idProjet) VALUES (?,?,?,?,?)";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setString(1,tache.getDescription_tache() );
        s.setDate(2,tache.getDate_debut());
        s.setDate(3,tache.getDate_fin());
        s.setString(4, tache.getStatut());
        //s.setInt(5,tache.getProjet_id());
        s.executeUpdate();

    }
}
