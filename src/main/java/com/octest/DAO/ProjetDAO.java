package com.octest.DAO;

import com.octest.beans.Projet;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ProjetDAO {
    ArrayList<Projet> ShowProjet() throws SQLException, ClassNotFoundException;
    void AddProjet(Projet Projet) throws SQLException, ClassNotFoundException;
    void SupprimerProjet(Integer projet_id) throws SQLException, ClassNotFoundException;



    void ModifierProjet(Integer idProjet, Projet projet);
}
