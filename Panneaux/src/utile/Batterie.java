package utile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

    public Batterie(int puissance_batterie)
    {
        this.setPuissance_batterie(puissance_batterie);
    }

    //select view(puissance batterie * nombre batterie)
    public Batterie[] select_Batterie()
    {
        List<Batterie> resultatList = new ArrayList<>();

        try 
        {
            String url = "jdbc:postgresql://localhost:5432/panneauv1";
            String utilisateur = "postgres";
            String motDePasse = "123";
            Class.forName("org.postgresql.Driver");

        try (Connection connection = DriverManager.getConnection(url, utilisateur, motDePasse))
        {
            Statement stmnt = connection.createStatement();
            ResultSet result = stmnt.executeQuery("select * from puissance_total_panneau_par_section");

            while (result.next()) 
            {
                int id_section = result.getInt("id_section");
                int total_puissance_batterie = result.getInt("total_puissance");
                
                Batterie b = new Batterie(total_puissance_batterie);
                resultatList.add(b);
            }
        }

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return resultatList.toArray(new Batterie[resultatList.size()]);

    }
    
}