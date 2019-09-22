

package modelo;

public class cliente {
    int idCliente;
    String nombClien;
    String correoClien;
    String dirClien;
    int CategClien;

    public cliente() {
    }

    public cliente(int idCliente, String nombClien, String correoClien, String dirClien, int CategClien) {
        this.idCliente = idCliente;
        this.nombClien = nombClien;
        this.correoClien = correoClien;
        this.dirClien = dirClien;
        this.CategClien = CategClien;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombClien() {
        return nombClien;
    }

    public void setNombClien(String nombClien) {
        this.nombClien = nombClien;
    }

    public String getCorreoClien() {
        return correoClien;
    }

    public void setCorreoClien(String correoClien) {
        this.correoClien = correoClien;
    }

    public String getDirClien() {
        return dirClien;
    }

    public void setDirClien(String dirClien) {
        this.dirClien = dirClien;
    }

    public int getCategClien() {
        return CategClien;
    }

    public void setCategClien(int CategClien) {
        this.CategClien = CategClien;
    }
  
    
}
