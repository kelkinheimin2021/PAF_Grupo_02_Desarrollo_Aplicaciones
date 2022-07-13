

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDatos.ProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./Vistas/VistasProducto/agregarProducto.css">
        <title>AGREGAR PRODUCTO</title>
    </head>
    <body> 
        
        <header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorProducto?accion=Index">Inicio</a>
        <a href="ControladorProducto?accion=Listar">Listar</a>
        <a href="ControladorProducto?accion=Agregar">Agregar</a>

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

        <h1 class="heading"> <span>Registrar</span> Producto </h1>
    
        <section class="about" id="about">

    
            <div class="row">
    
    
                <div class="content">
                
                    <div class="row">

                        <form action="">
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Nombre Producto" name="txtNombre">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Descripción Producto" name="txtDescripcion">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                 <input type="number" placeholder="Ingresar Stock" name="txtStock">
                            </div>
                            
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="number" placeholder="Ingresar Precio" name="txtPrecio">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Categoria" name="txtCategoria">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Marca" name="txtMarca">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Proveedor" name="txtProveedor">
                            </div>
                            
                            <input type="submit" name="accion" value="Registrar" class="btnListas">
                              
                        </form>       
                    </div>  
                </div>
            </div>
        </section>

    </section>
         
    </body>
</html>
