 

package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class conexion {
    Connection con;

    public Connection getconnection() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/registro", "root","1111cccc");
        } catch (Exception e) {
        }
        
        return con;
    }
        
}







/*



public class conexion {  
    
public DriverManagerDataSource conectar(){
 DriverManagerDataSource datasourse =new DriverManagerDataSource();
datasourse.setDriverClassName("com.mysql.jdbc.Driver");
datasourse.setUrl("jdbc:mysql://localhotst:3306/registro");
datasourse.setUsername("root");
datasourse.setPassword("");
    return datasourse;

} 


}

*/