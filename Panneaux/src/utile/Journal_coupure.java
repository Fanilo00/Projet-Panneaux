package utile;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Journal_coupure{

    int id_journale_coupure;
    Timestamp date_heure_coupure_vrai;
    Timestamp date_heure_coupure_prevision;
    Date date_coupure_vrai;
    Time heure_coupure_vrai;
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

    public Date getDate_coupure_vrai() {
        return date_coupure_vrai;
    }

    public void setDate_coupure_vrai(Date date_coupure_vrai) {
        this.date_coupure_vrai = date_coupure_vrai;
    }


    public Time getHeure_coupure_vrai() {
        return heure_coupure_vrai;
    }

    public void setHeure_coupure_vrai(Time heure_coupure_vrai) {
        this.heure_coupure_vrai = heure_coupure_vrai;
    }

    public Journal_coupure(Date date_coupure_vrai, Time heure_coupure_vrai) {
        this.date_coupure_vrai = date_coupure_vrai;
        this.heure_coupure_vrai = heure_coupure_vrai;
    }



    //function get coupure
    public Journal_coupure[] select_journale_coupure()
    {
        List<Journal_coupure> resultatList = new ArrayList<>();

        try 
        {
            String url = "jdbc:postgresql://localhost:5432/panneauv1";
            String utilisateur = "postgres";
            String motDePasse = "123";
            Class.forName("org.postgresql.Driver");

            try (Connection connection = DriverManager.getConnection(url, utilisateur, motDePasse))
            {
                Statement stmnt = connection.createStatement();
                ResultSet result = stmnt.executeQuery("select date_coupure_vrai,heure_coupure_vrai from journale_coupure order by(date_coupure_vrai)");

                while (result.next()) 
                {
                    Date date_coupure_vrai = result.getDate("date_coupure_vrai");
                    Time heure_coupure_vrai = result.getTime("heure_coupure_vrai");
                    
                    Journal_coupure journal_coupure = new Journal_coupure(date_coupure_vrai,heure_coupure_vrai);
                    resultatList.add(journal_coupure);

                    System.out.println(" " +journal_coupure.getDate_coupure_vrai()+ "  " + journal_coupure.getHeure_coupure_vrai());

                }
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return resultatList.toArray(new Journal_coupure[resultatList.size()]);

    }





        
        
    
}   