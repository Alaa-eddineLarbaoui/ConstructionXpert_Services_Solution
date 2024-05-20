package com.octest.beans;


import java.util.Date;

public class Projet {

    private int id;
    private String nom_projet ;
    private String description_projet;
    private Date dateDebut;
    private Date dateFin;
    private Integer budget;

    // Constructeurs
    public Projet() {
    }



    // Getters et Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom_projet;
    }

    public void setNom(String nom) {
        this.nom_projet = nom;
    }
    public String getDescription_projet() {
        return description_projet;
    }

    public void setDescription_projet(String description_projet) {
        this.description_projet = description_projet;
    }
    public Date getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(Date dateDebut) {
        this.dateDebut = dateDebut;
    }

    public Date getDateFin() {
        return dateFin;
    }

    public void setDateFin(Date dateFin) {
        this.dateFin = dateFin;
    }

    public Integer getBudget() {
        return budget;
    }

    public void setBudget(Integer budget) {
        this.budget = budget;
    }
}