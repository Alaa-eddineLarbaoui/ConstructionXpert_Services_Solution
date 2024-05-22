package com.octest.beans;


import java.util.Date;

public class Projet {

    private Integer projet_id;
    private String nom_projet ;
    private String description_projet;
    private Date dateDebut;
    private Date dateFin;
    private Integer budget;


    private String projet_Url;

    // Constructeurs

    public Projet(Integer projet_id, String nom_projet, String description_projet, Date dateDebut, Date dateFin, Integer budget, String projet_Url) {
        this.projet_id = projet_id;
        this.nom_projet = nom_projet;
        this.description_projet = description_projet;
        this.dateDebut = dateDebut;
        this.dateFin = dateFin;
        this.budget = budget;
        this.projet_Url = projet_Url;
    }


    // Getters et Setters



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
    public String getProjet_Url() {
        return projet_Url;
    }

    public void setProjet_Url(String projet_Url) {
        this.projet_Url = projet_Url;
    }

}