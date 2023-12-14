package utile;

import java.sql.*;

public class Consommation 
{
    Time heure_coupure;
    int nbr_etudiant_matin;
    int nbr_etudiant_aprem;

    public Time getHeure_coupure() {
        return heure_coupure;
    }

    public void setHeure_coupure(Time heure_coupure) {
        this.heure_coupure = heure_coupure;
    }

    public int getNbr_etudiant_matin() {
        return nbr_etudiant_matin;
    }

    public void setNbr_etudiant_matin(int nbr_etudiant_matin) {
        this.nbr_etudiant_matin = nbr_etudiant_matin;
    }

    public int getNbr_etudiant_aprem() {
        return nbr_etudiant_aprem;
    }

    public void setNbr_etudiant_aprem(int nbr_etudiant_aprem) {
        this.nbr_etudiant_aprem = nbr_etudiant_aprem;
    }



    public Consommation besoin_etudiant() {
        Consommation cons = new Consommation();
    
        try {
            Journal_etudiant journal_etudiant = new Journal_etudiant();
            Journal_etudiant[] journale_etudiant_matin = journal_etudiant.journale_etudiant_matin();
            Journal_etudiant[] journal_etudiants_aprem = journal_etudiant.journale_etudiant_aprem();
    
            Journal_coupure journal_coupure = new Journal_coupure();
            Journal_coupure[] get_heure_coupure = journal_coupure.select_journale_coupure();
    
            Panneau p = new Panneau();
            Panneau[] puissance_panneau = p.puissance_total_panneau();
    
            int min = 0;
            int max = 100;
    
            for (int i = 0; i < puissance_panneau.length; i++) 
            {
                double puissance_panneau_total = puissance_panneau[i].getNiveau(); 
                while (min <= max) 
                {
                    int valeur_intermediaire = (min+max)/2;
                    for (int j = 0; j < journale_etudiant_matin.length; j++) 
                    {
                        int besoin_matin = valeur_intermediaire * journale_etudiant_matin[j].getNbr_etudiant();
                        
                        for (int k = 0; k < journal_etudiants_aprem.length; k++) {
                            int besoin_aprem = valeur_intermediaire *  journal_etudiants_aprem[k].getNbr_etudiant();
                            
                            int besoin_total = besoin_matin + besoin_aprem;
                        }
                    }    
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return cons;
    }
    
 
}
