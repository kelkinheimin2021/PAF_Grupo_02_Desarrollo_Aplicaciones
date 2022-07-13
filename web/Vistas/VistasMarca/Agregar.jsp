
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./Vistas/VistasMarca/agregarMarca.css">
        <title>AGREGAR CATEGORIA DEL PRODUCTO</title>
    </head>
    <body> 
        
        <header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorMarca?accion=Index">Inicio</a>
        <a href="ControladorMarca?accion=Listar">Listar</a>
        <a href="ControladorMarca?accion=Agregar">Agregar</a>

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

    <h1 class="heading"> <span>Registrar</span> Categoría del producto </h1>
    
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
                <input type="text" placeholder="Ingresar Marca" name="txtDescripcion">
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
