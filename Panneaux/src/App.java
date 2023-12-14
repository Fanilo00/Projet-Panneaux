import utile.Consommation;
import utile.Journal_coupure;
import utile.Journal_etudiant;
import utile.Journal_lumiere;
import utile.Panneau;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp;


        public class App {
    public static void main(String[] args) throws Exception {
        String url = "jdbc:mysql://localhost:3306/solaire";
        String user = "postgres";
        String password = "root";

        try 
        {
            // Journal_lumiere j = new Journal_lumiere();
            // Journal_lumiere[] lumiere = j.niveau_lumiere();

            Journal_coupure j = new Journal_coupure();
            Journal_coupure[] get_coupure = j.select_journale_coupure();

            // Journal_etudiant etu = new Journal_etudiant();
            // Journal_etudiant[] j_etu = etu.journale_etudiant_matin();

            Consommation cons = new Consommation();
            cons.besoin_etudiant();

            // Panneau p = new Panneau();
            // Panneau[] panneau = p.puissance_total_panneau();

            // Timestamp prevision = journal.estimationCoupure(vraieCoupure);
            // System.out.println("La prévision de coupure est : " + prevision);
            
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
}
