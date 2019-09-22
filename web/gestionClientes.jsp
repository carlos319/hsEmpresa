

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Clientes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body background="img/F5.jpg" > 
        <div align='center'>
            <br>
            <br>
            <h1 text-center >Registrar Cliente Nuevo</h1><br>
        </div>
                    
        <div class="container col-lg-3" >

        <form action="" method="post">
            
            IdCliente:
            <input  type="text" name="idcliente">
            <br/>
            <br>
            Nombre:
            <input type="text" name="nombre">
            <br/>
            <br>
            Correo:
            <input type="text" name="Correo">
            <br/>
            <br>
            Direccion:
            <input type="text" name="Direccion">
            <br/> 
            <br>
            Categoria:

            <input type="Radio" name="categoria" value= "0"checked>0

            <input type="Radio" name= "categoria"value="1">1

            <input type="Radio" name= "categoria"value="2">2

            <input type="Radio" name= "categoria"value="3">3            
            
            <input type="Radio" name= "categoria"value="4">4
            
            <input type="Radio" name= "categoria"value="5">5
            <br>
            <input class="btn btn-primary" type="submit" value="Enviar ">            
                      
             <a href="Principal.jsp" class="btn btn-primary" role="button" aria-pressed="true">Cancelar</a>
             
        </form>
      </div>  
        
    </body>
</html>

<%
       //CONECTANOD A LA BASE DE DATOS:
       Connection con;
       String url="jdbc:mysql://localhost:3306/registro_clientes";
       String Driver="com.mysql.jdbc.Driver";
       String user="root";
       String clave="1111cccc";
       Class.forName(Driver);
       con=DriverManager.getConnection(url,user,clave);
       PreparedStatement ps;
       String nombre, Correo, Direccion, categoria;
       
       nombre=request.getParameter("nombre");
       Correo=request.getParameter("Correo");
       Direccion=request.getParameter("Direccion");
       categoria=request.getParameter("categoria");
       if(nombre!=(null)){
           ps=con.prepareStatement("insert into cliente(nombClien, correoClien, dirClien, CategClien)values('"+nombre+"','"+Correo+"','"+Direccion+"',"+categoria+")");
           ps.executeUpdate();               
            
           
       }
       
       
%>