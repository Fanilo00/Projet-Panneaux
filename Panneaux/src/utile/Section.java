package utile;
import java.util.Objects;

public class Section{
    int id_section;
    String nom_section;

    public Section() {
    }

    public Section(int id_section, String nom_section) {
        this.id_section = id_section;
        this.nom_section = nom_section;
    }

    public int getId_section() {
        return this.id_section;
    }

    public void setId_section(int id_section) {
        this.id_section = id_section;
    }

    public String getNom_section() {
        return this.nom_section;
    }

    public void setNom_section(String nom_section) {
        this.nom_section = nom_section;
    }

}