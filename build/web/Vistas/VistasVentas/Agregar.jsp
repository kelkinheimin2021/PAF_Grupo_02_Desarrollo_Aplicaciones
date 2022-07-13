
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./Vistas/VistasMarca/agregarMarca.css">
        <title>AGREGAR VENTAS</title>
    </head>
    <body> 
        
        <header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorVentas?accion=Index">Inicio</a>
        <a href="ControladorVentas?accion=Listar">Listar</a>
        <a href="ControladorVentas?accion=Agregar">Agregar</a>

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

    <h1 class="heading"> <span>Registrar</span> Ventas </h1>
    
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
                <input type="Date" placeholder="Ingresar Fecha" name="txtFecha">
            </div>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Codigo Cliente" name="txtCliente">
            </div>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Codigo Empleado" name="txtEmpleado">
            </div>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Codigo Pago" name="txtPago">
            </div>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Cantidad" name="txtCantidad">
            </div>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Codigo del Producto" name="txtProducto">
            </div>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="Ingresar Precio Del producto" name="txtPrecio">
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
