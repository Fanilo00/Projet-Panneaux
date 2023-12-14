package utile;

public class Panneau {

    int id_panneau;
    int puissance_panneau;
    int id_batterie;

    public int getId_panneau() {
        return id_panneau;
    }
    public void setId_panneau(int id_panneau) {
        this.id_panneau = id_panneau;
    }

    public int getPuissance_panneau() {
        return puissance_panneau;
    }
    public void setPuissance_panneau(int puissance_panneau) {
        this.puissance_panneau = puissance_panneau;
    }
    
    public int getId_batterie() {
        return id_batterie;
    }
    public void setId_batterie(int id_batterie) {
        this.id_batterie = id_batterie;
    }
    
    
    public Panneau() 
    {

    }

    public Panneau(int id_panneau, int puissance_panneau, int id_batterie) 
    {
        this.id_panneau = id_panneau;
        this.puissance_panneau = puissance_panneau;
        this.id_batterie = id_batterie;
    }

    
 
}
