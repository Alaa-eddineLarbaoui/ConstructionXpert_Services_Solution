package Dao;

import com.octest.beans.Projet;

import java.sql.SQLException;
import java.util.List;

public interface ProjetDAO {
    List<Projet> ShowFilms() throws SQLException, ClassNotFoundException;
    //List<Films> SearchFilms(String Title) throws SQLException, ClassNotFoundException;

    List<Projet> addFilms(Projet filmToAdd) throws SQLException, ClassNotFoundException;
//    List<Films> ShowMovie(Integer id) throws SQLException, ClassNotFoundException;
//    void cancelFilm(int filmId) throws SQLException, ClassNotFoundException;
//    void updateFilm(Films updatedFilm) throws SQLException, ClassNotFoundException;
}
