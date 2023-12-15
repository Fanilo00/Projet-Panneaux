package utile;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class Journal_lumiere{
    int id_journale_lumiere;
    Timestamp date_heure_lumiere;
    double niveau;   

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

    public double getNiveau() {
        return niveau;
    }

    public void setNiveau(double niveau) {
        this.niveau = niveau;
    }

   

    public Journal_lumiere() {
    }

    public Journal_lumiere(int id_journale_lumiere, Timestamp date_heure_lumiere, double niveau) {
        this.id_journale_lumiere = id_journale_lumiere;
        this.date_heure_lumiere = date_heure_lumiere;
        this.niveau = niveau;
    }

    public Journal_lumiere(Timestamp date_heure_lumiere, double niveau)
    {
        this.setDate_heure_lumiere(date_heure_lumiere);
        this.setNiveau(niveau);
    }

    //maka an niveau ana lumiere
    public Journal_lumiere[] niveau_lumiere()
    {
        List<Journal_lumiere> resultatList = new ArrayList<>();

        try 
        {
            String url = "jdbc:postgresql://localhost:5432/panneauv1";
            String utilisateur = "postgres";
            String motDePasse = "123";
            Class.forName("org.postgresql.Driver");

            try (Connection connection = DriverManager.getConnection(url, utilisateur, motDePasse))
            {
                Statement stmnt = connection.createStatement();
                ResultSet result = stmnt.executeQuery("select * from journale_lumiere order by(date_heure_lumiere)");

                while (result.next()) 
                {
                    double niveau = result.getDouble("niveau");
                    Timestamp date = result.getTimestamp("date_heure_lumiere");                   
                    Journal_lumiere niveau_lumiere = new Journal_lumiere(date,niveau);
                    resultatList.add(niveau_lumiere);

                    //System.out.println(niveau_lumiere.getNiveau());

                }
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return resultatList.toArray(new Journal_lumiere[resultatList.size()]);


    }
}

