package utile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Panneau {

    int id_panneau;
    int puissance_panneau;
    int id_batterie;
    double niveau;

    public int getId_panneau() {
        return id_panneau;
    }
    public void setId_panneau(int id_panneau) {
        this.id_panneau = id_panneau;
    }

    public int getPuissance_panneau() {
        return puissance_panneau;
    }
    public void setPuissance_panneau(int puissance_panneau) {
        this.puissance_panneau = puissance_panneau;
    }
    
    public int getId_batterie() {
        return id_batterie;
    }
    public void setId_batterie(int id_batterie) {
        this.id_batterie = id_batterie;
    }
    
    public double getNiveau() {
        return niveau;
    }
    public void setNiveau(double niveau) {
        this.niveau = niveau;
    }

    
    public Panneau() 
    {

    }

    public Panneau(int id_panneau, int puissance_panneau, int id_batterie) 
    {
        this.id_panneau = id_panneau;
        this.puissance_panneau = puissance_panneau;
        this.id_batterie = id_batterie;
    }

    public Panneau(int puissance_panneau)
    {
        this.setPuissance_panneau(puissance_panneau);
    }

    public Panneau(double niveau)
    {
        this.setNiveau(niveau);
    }


    //select view (puissance panneau * nombre de panneau)
    public Panneau[] select_Panneau()
    {
        List<Panneau> resultatList = new ArrayList<>();

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

                while (result.next()) {
                    int id_section = result.getInt("id_section");
                    int total_puissance_panneau = result.getInt("total_puissance");

                    Panneau panneau = new Panneau(total_puissance_panneau);   
                    resultatList.add(panneau);
                    
                    System.out.println(panneau.getPuissance_panneau());
                }        
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        return resultatList.toArray(new Panneau[resultatList.size()]);

    }
    
 
    //puissance total panneau(fonction view(puissance panneau * nombre panneau)* niveau lumiere)

    public Panneau[] puissance_total_panneau()
    {
        List<Panneau> resultatList = new ArrayList<>();

        try 
        {
            Panneau[] puissance_panneau = this.select_Panneau();

            Journal_lumiere j = new Journal_lumiere();
            Journal_lumiere[] niveau_lumiere = j.niveau_lumiere();

            for (int i = 0; i < puissance_panneau.length; i++) 
            {
                for (int k = 0; k < niveau_lumiere.length; k++) 
                {
                   int panneau = puissance_panneau[i].getPuissance_panneau();
                   double cast_panneau = (double)panneau;
                   double lumiere = niveau_lumiere[k].getNiveau();

                //    System.out.println(cast_panneau);

                //    System.out.println(lumiere);
                    
                    double puissance_total_panneau = cast_panneau * lumiere;

                    Panneau panneau_total_puissance = new Panneau(puissance_total_panneau);
                    resultatList.add(panneau_total_puissance);

                    System.out.println(niveau_lumiere[k].getDate_heure_lumiere()+" "+panneau_total_puissance.getNiveau());
                }
            }


        } catch (Exception e) {
            // TODO: handle exception
        }

        return resultatList.toArray(new Panneau[resultatList.size()]);

    }
   

}
