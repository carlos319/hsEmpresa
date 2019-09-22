

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Módulo Principal</title>
    </head>
    <body background= "img/F3.jpg">
        <nav class="navbar navbar-dark bg-dark"> 
            <a style=" color: white" class="navbar-toggler"><span class="navbar-toggler-icon"></span>Principal</a>
            <div class="dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" style=" color: white"> Cerrar Sesión</a>
                <div class="dropdown-menu text-center">
                    <a><img src="img/Usr1.png" height="70" width="50"></a><br>
                    <a>${usuario}</a><br>                    
                    
                    <div class="dropdown-divider"></div>
                    <a>My perfil</a>                    
                    <div class="dropdown-divider"></div>                    
                    <a href="controlador?accion=Salir"  class="dropdown-item">Salir</a>
                    
                </div>
            </div> 
        </nav>
        
        <div>
            
          <h2 style=" color: white"> Bienvenido al Sistema de High Security <strong> Asesor: ${usuario}</strong></h2>
          <br>
              <div class="dropdown text-center">
                  <a href="gestionClientes.jsp" class="btn btn-primary" role="button" aria-pressed="true">Gestion clientes  <div>
                <img src="img/REGISTRODECLIENTS.png" height="100" width="100"/>
                    </div></a>
                
                   
                </div>
            </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>     
    </body>
</html>
