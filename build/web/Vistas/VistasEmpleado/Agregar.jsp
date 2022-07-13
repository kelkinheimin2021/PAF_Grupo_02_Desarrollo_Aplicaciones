

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.CategoriaProductos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDatos.CategoriaProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./Vistas/VistasEmpleado/agregarEmpleado.css">
        <title>AGREGAR CLIENTE</title>
    </head>
    <body> 
        
        <header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorEmpleado?accion=Index">Inicio</a>
        <a href="ControladorEmpleado?accion=Listar">Listar</a>
        <a href="ControladorEmpleado?accion=Agregar">Agregar</a>

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

        <h1 class="heading"> <span>Registrar</span> Empleados </h1>
    
        <section class="about" id="about">

    
            <div class="row">
    
    
                <div class="content">
                
                    <div class="row">

                        <form action="">
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Tipo Documento" name="txtTipoDocEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="number" placeholder="Ingresar número documento" name="txtNumeroDocEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                 <input type="text" placeholder="Ingresar nombre" name="txtNombreEmpleado">
                            </div>
                            
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Apellido Paterno" name="txtApellidoPatEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Apellido Materno" name="txtApellidoMatEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Dirección" name="txtDireccionEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="date" placeholder="Ingresar Fecha Nacimiento" name="txtFechaNacimientoEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar género" name="txtGeneroEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Email" name="txtEmailEmpleado">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="number" placeholder="Ingresar telefono" name="txtTelefonoEmpleado">
                            </div>
                          
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Tipo Empleado" name="txtTipoEmpleado">
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
