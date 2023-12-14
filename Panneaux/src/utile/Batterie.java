package utile;

public class Batterie{
    int id_batterie;
    int puissance_batterie;

    public int getId_batterie() {
        return this.id_batterie;
    }

    public void setId_batterie(int id_batterie) {
        this.id_batterie = id_batterie;
    }

    public int getPuissance_batterie() {
        return this.puissance_batterie;
    }

    public void setPuissance_batterie(int puissance_batterie) {
        this.puissance_batterie = puissance_batterie;
    }
    

    public Batterie() {
    }

    public Batterie(int id_batterie, int puissance_batterie) {
        this.id_batterie = id_batterie;
        this.puissance_batterie = puissance_batterie;
    }
    
}