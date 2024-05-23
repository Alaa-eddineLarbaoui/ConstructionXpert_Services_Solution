package com.octest.DAO;

import com.octest.beans.Projet;

import java.sql.SQLException;
import java.util.ArrayList;

public interface TacheDAO {
    ArrayList<Projet> ShowTache() throws SQLException, ClassNotFoundException;
    void AddTache(Projet Projet) throws SQLException, ClassNotFoundException;
    void CancelTache(Integer projet_id) throws SQLException, ClassNotFoundException;

}
