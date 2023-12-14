package utile;
import java.sql.Timestamp;

public class Journal_lumiere{
    int id_journale_lumiere;
    Timestamp date_heure_lumiere;
    int niveau;   

    public int getId_journale_lumiere() {
        return this.id_journale_lumiere;
    }

    public void setId_journale_lumiere(int id_journale_lumiere) {
        this.id_journale_lumiere = id_journale_lumiere;
    }

    public Timestamp getDate_heure_lumiere() {
        return this.date_heure_lumiere;
    }

    public void setDate_heure_lumiere(Timestamp date_heure_lumiere) {
        this.date_heure_lumiere = date_heure_lumiere;
    }

    public int getNiveau() {
        return this.niveau;
    }

    public void setNiveau(int niveau) {
        this.niveau = niveau;
    }

    public Journal_lumiere() {
    }

    public Journal_lumiere(int id_journale_lumiere, Timestamp date_heure_lumiere, int niveau) {
        this.id_journale_lumiere = id_journale_lumiere;
        this.date_heure_lumiere = date_heure_lumiere;
        this.niveau = niveau;
    }
}

