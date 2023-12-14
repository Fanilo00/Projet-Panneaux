package utile;

public class Classe{
    int id_classe;   
    String nom_claee;

    public Classe() {
    }


    public Classe(int id_classe, String nom_claee) {
        this.id_classe = id_classe;
        this.nom_claee = nom_claee;
    }

    public int getId_classe() {
        return this.id_classe;
    }

    public void setId_classe(int id_classe) {
        this.id_classe = id_classe;
    }

    public String getNom_claee() {
        return this.nom_claee;
    }

    public void setNom_claee(String nom_claee) {
        this.nom_claee = nom_claee;
    }
}