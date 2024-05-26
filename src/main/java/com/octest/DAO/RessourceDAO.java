package com.octest.DAO;




import com.octest.beans.Ressource;

import java.sql.SQLException;
import java.util.ArrayList;

public interface RessourceDAO {
    ArrayList<Ressource> ShowRessources(Integer idTache) throws SQLException, ClassNotFoundException;
   // ArrayList<Ressource> ShowRessources() throws SQLException, ClassNotFoundException;
    //void AddRessources(Projet Projet) throws SQLException, ClassNotFoundException;
    //void DeleteRessource(Integer idRessource) throws SQLException, ClassNotFoundException;
   // Ressource RecupererRessource(Integer idRessource) throws SQLException, ClassNotFoundException;
    //void UpdateRessource(Integer idRessource, Ressource Ressource) throws SQLException, ClassNotFoundException;
   // void AssocierRessource(Integer idRessource , Integer idTache)throws SQLException, ClassNotFoundException;
}

