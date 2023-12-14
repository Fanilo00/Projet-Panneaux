package utile;
import java.sql.Timestamp;

public class Journal_etudiant {
    int id_journal_etudiant;
    Timestamp date_heure;
    int nbr_etudiant;
    int statut;
    int id_classe;

    public int getId_journal_etudiant() {
        return this.id_journal_etudiant;
    }

    public void setId_journal_etudiant(int id_journal_etudiant) {
        this.id_journal_etudiant = id_journal_etudiant;
    }

    public Timestamp getDate_heure() {
        return this.date_heure;
    }

    public void setDate_heure(Timestamp date_heure) {
        this.date_heure = date_heure;
    }

    public int getNbr_etudiant() {
        return this.nbr_etudiant;
    }

    public void setNbr_etudiant(int nbr_etudiant) {
        this.nbr_etudiant = nbr_etudiant;
    }

    public int getStatut() {
        return this.statut;
    }

    public void setStatut(int statut) {
        this.statut = statut;
    }

    public int getId_classe() {
        return this.id_classe;
    }

    public void setId_classe(int id_classe) {
        this.id_classe = id_classe;
    }

    public Journal_etudiant() {
    }

    public Journal_etudiant(int id_journal_etudiant, Timestamp date_heure, int nbr_etudiant, int statut, int id_classe) {
        this.id_journal_etudiant = id_journal_etudiant;
        this.date_heure = date_heure;
        this.nbr_etudiant = nbr_etudiant;
        this.statut = statut;
        this.id_classe = id_classe;
    }

    
}