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

            Panneau p = new Panneau();
            Panneau[] puissance_panneau = p.puissance_total_panneau();

            // Timestamp prevision = journal.estimationCoupure(vraieCoupure);
            // System.out.println("La prévision de coupure est : " + prevision);
            
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
}
