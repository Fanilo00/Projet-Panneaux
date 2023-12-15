package utile;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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

    public Journal_etudiant(Timestamp date_heure, int nbr_etudiant) {
    this.date_heure = date_heure;
    this.nbr_etudiant = nbr_etudiant;
    }

    public Journal_etudiant[] journale_etudiant_matin()
    {
         List<Journal_etudiant> resultatList = new ArrayList<>();

         try 
         {
            
            String url = "jdbc:postgresql://localhost:5432/panneauv1";
            String utilisateur = "postgres";
            String motDePasse = "123";
            Class.forName("org.postgresql.Driver");

            try (Connection connection = DriverManager.getConnection(url, utilisateur, motDePasse))
            {
                Statement stmnt = connection.createStatement();
                ResultSet result = stmnt.executeQuery("select date_heure,nbr_etudiant from journale_etudiant where statut = 0");

                while (result.next()) {
                   Timestamp date = result.getTimestamp("date_heure");
                   int nbr_etudiant = result.getInt("nbr_etudiant"); 

                   Journal_etudiant etudiant = new Journal_etudiant(date,nbr_etudiant);
                   resultatList.add(etudiant);

                   System.out.println(etudiant.getNbr_etudiant());
                }    
            }

         } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
         }

         return resultatList.toArray(new Journal_etudiant[resultatList.size()]);

    }



     public Journal_etudiant[] journale_etudiant_aprem()
    {
         List<Journal_etudiant> resultatList = new ArrayList<>();

         try 
         {
            
            String url = "jdbc:postgresql://localhost:5432/panneauv1";
            String utilisateur = "postgres";
            String motDePasse = "123";
            Class.forName("org.postgresql.Driver");

            try (Connection connection = DriverManager.getConnection(url, utilisateur, motDePasse))
            {
                Statement stmnt = connection.createStatement();
                ResultSet result = stmnt.executeQuery("select date_heure,nbr_etudiant from journale_etudiant where statut = 1");

                while (result.next()) {
                   Timestamp date = result.getTimestamp("date_heure");
                   int nbr_etudiant = result.getInt("nbr_etudiant"); 

                   Journal_etudiant etudiant = new Journal_etudiant(date,nbr_etudiant);
                   resultatList.add(etudiant);
                }    
            }

         } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
         }

         return resultatList.toArray(new Journal_etudiant[resultatList.size()]);

    }
}