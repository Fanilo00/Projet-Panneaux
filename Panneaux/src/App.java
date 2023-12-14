import utile.Journal_lumiere;
import utile.Panneau;

public class App {
    public static void main(String[] args) throws Exception {
        
        try 
        {
            // Journal_lumiere j = new Journal_lumiere();
            // Journal_lumiere[] lumiere = j.niveau_lumiere();

            Panneau p = new Panneau();
            Panneau[] puissance_panneau = p.puissance_total_panneau();


            
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }
}
