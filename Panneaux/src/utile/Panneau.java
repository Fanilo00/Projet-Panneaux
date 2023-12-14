package utile;

public class Panneau {
     int id_panneau;
     int puissance_panneau;
     int id_batterie;
    
     public int getId_panneau() {
        return id_panneau;
    }

    public void setId_panneau(int id_panneau) {
        id_panneau = id_panneau;
    }

    public int getPuissance_panneau() {
        return puissance_panneau;
    }

    public void setPuissance_panneau(int puissance_panneau) {
        puissance_panneau = puissance_panneau;
    }

    public int getId_Batterie() {
        return id_batterie;
    }

    public void setId_Batterie(int id_batterie) {
        id_batterie = id_batterie;
    }

    public Panneaux() {
    }

    public Panneaux(int id_panneau, int puissance_panneau, int id_batterie) {
        id_panneau = id_panneau;
        puissance_panneau = puissance_panneau;
        id_batterie = id_batterie;
    }
}
