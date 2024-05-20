package com.octest.beans;

import java.util.Date;

public class Ressource {
    private int ressource_id;
    private String ressource_nom;
    private String type_ressource;
    private Integer quantite;
    private String fournissuer;




    //Getters et Setters
    public int getRessource_id() {
        return ressource_id;
    }

    public void setRessource_id(int ressource_id) {
        this.ressource_id = ressource_id;
    }

    public String getRessource_nom() {
        return ressource_nom;
    }

    public void setRessource_nom(String ressource_nom) {
        this.ressource_nom = ressource_nom;
    }

    public String getType_ressource() {
        return type_ressource;
    }

    public void setType_ressource(String type_ressource) {
        this.type_ressource = type_ressource;
    }

    public Integer getQuantite() {
        return quantite;
    }

    public void setQuantite(Integer quantite) {
        this.quantite = quantite;
    }

    public String getFournissuer() {
        return fournissuer;
    }

    public void setFournissuer(String fournissuer) {
        this.fournissuer = fournissuer;
    }



}
