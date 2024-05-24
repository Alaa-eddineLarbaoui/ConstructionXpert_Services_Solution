package com.octest.DAO;

import com.octest.beans.Projet;
import com.octest.beans.Tache;

import java.sql.SQLException;
import java.util.ArrayList;

public interface TacheDAO {
    ArrayList<Tache> ShowTaches(Integer id) throws SQLException, ClassNotFoundException;
    void AddTaches(Tache tache) throws SQLException, ClassNotFoundException;
    //void DeleteTaches(Integer idTache) throws SQLException, ClassNotFoundException;
    //Tache RecupererTache(Integer idTache) throws SQLException, ClassNotFoundException;
    //void UpdateTache(Integer idTache, Tache tache) throws SQLException, ClassNotFoundException;
}
