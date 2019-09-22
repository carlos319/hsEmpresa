
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.spi.DirStateFactory;


public class personaDAO implements validar{
    
    Connection con;
    conexion cn=new conexion();
    PreparedStatement ps;
    ResultSet rs; 
    
  
    @Override
    public int validar(persona persona) {
        int r=0;
       String sql="Select * from persona where usuario=? and contrasena=?";
        try {
            con=(Connection) cn.getconnection(); // sin connection*
            ps= con.prepareStatement(sql);
            ps.setString(1, persona.getUsuario());
            ps.setString(2, persona.getContrasena());
            rs=ps.executeQuery();
            while (rs.next()) {
                r=r+1;
                persona.setUsuario(rs.getString("usuario"));
                persona.setContrasena(rs.getString("contrasena"));
            }
            if (r==1) {
                return 1;
            }else {
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    
    
    }

    @Override
    public int validar(cliente client) {
      
          int c=0;
           int n=0;
       String sql="Select * from persona where usuario=? and contrasena=?";
        try {
            con=(Connection) cn.getconnection(); // sin connection*
            ps= con.prepareStatement(sql);
            ps.setString(1, client.getNombClien());
            ps.setString(2, client.getCorreoClien());
            ps.setString(3, client.getDirClien());
            ps.setInt(4, client.getCategClien());
                     
            rs=ps.executeQuery();
            while (rs.next()) {
                c=c+1;
                client.setNombClien("nombClien");
                client.setCorreoClien("correoClien");
                client.setDirClien("dirClien");                
                client.setCategClien(n);
         
            }
            if (c==1) {
                return 1;
            }else {
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
    
    
}
}

