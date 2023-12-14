package utile;
import java.sql.Timestamp;

public class Journal_coupure{
    int id_journale_coupure;
    Timestamp date_heure_coupure_vrai;
    Timestamp date_heure_coupure_prevision;
    int id_section;

    public Journal_coupure() {
    }

    public Journal_coupure(int id_journale_coupure, Timestamp date_heure_coupure_vrai, Timestamp date_heure_coupure_prevision, int id_section) {
        this.id_journale_coupure = id_journale_coupure;
        this.date_heure_coupure_vrai = date_heure_coupure_vrai;
        this.date_heure_coupure_prevision = date_heure_coupure_prevision;
        this.id_section = id_section;
    }

    public int getId_journale_coupure() {
        return this.id_journale_coupure;
    }

    public void setId_journale_coupure(int id_journale_coupure) {
        this.id_journale_coupure = id_journale_coupure;
    }

    public Timestamp getDate_heure_coupure_vrai() {
        return this.date_heure_coupure_vrai;
    }

    public void setDate_heure_coupure_vrai(Timestamp date_heure_coupure_vrai) {
        this.date_heure_coupure_vrai = date_heure_coupure_vrai;
    }

    public Timestamp getDate_heure_coupure_prevision() {
        return this.date_heure_coupure_prevision;
    }

    public void setDate_heure_coupure_prevision(Timestamp date_heure_coupure_prevision) {
        this.date_heure_coupure_prevision = date_heure_coupure_prevision;
    }

    public int getId_section() {
        return this.id_section;
    }

    public void setId_section(int id_section) {
        this.id_section = id_section;
    }

    
}   