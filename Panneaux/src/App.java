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

            
            // Connection connection = DriverManager.getConnection(url, user, password) {
            // Journal_coupure journal = new Journal_coupure();
            // Timestamp vraieCoupure = Timestamp.valueOf("2023-12-14 16:00:00");


            // Timestamp prevision = journal.estimationCoupure(vraieCoupure);
            // System.out.println("La prévision de coupure est : " + prevision);
            
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
    }
}