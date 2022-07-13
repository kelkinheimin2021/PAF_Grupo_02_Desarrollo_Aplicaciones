
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./Vistas/VistasCliente/agregarCliente.css">
        <title>AGREGAR CLIENTE</title>
    </head>
    <body> 
        
        <header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorCliente?accion=Index">Inicio</a>
        <a href="ControladorCliente?accion=Listar">Listar</a>
        <a href="ControladorCliente?accion=Agregar">Agregar</a>

    </nav>


    <div class="row">
   
        <form class="">

            <div class="inputBox">
                <span class="fas fa-search"></span>
            </div>
            
        </form>  
         
    </div>

</header>
        
        
        
        <section class="contact" id="contact">

    <h1 class="heading"> <span>Registrar</span> Cliente </h1>
    
    <section class="about" id="about">

    
        <div class="row">
    
            <div class="image">
                <img src="images/blog-1.jpg" alt="">
            </div>
    
            <div class="content">
                    <div class="row">

        <form action="">
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Tipo Documento" name="txtTipoDoc">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number" placeholder="Ingresar número documento" name="txtNumeroDoc">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar nombre" name="txtNombre">
            </div>

            <input type="submit" name="accion" value="Registrar" class="btnListas">
        </form>

        <div class="inputbox">

        </div>

    </div>
            </div>
    
        </div>
    
    </section>


</section>
        
        
    </body>
</html>
