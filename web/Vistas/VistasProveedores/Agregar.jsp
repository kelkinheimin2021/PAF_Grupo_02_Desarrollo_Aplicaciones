

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="./Vistas/VistasProveedores/agregarProveedor.css">
        <title>AGREGAR PROVEEDORES</title>
    </head>
    <body> 
        
        <header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorProveedor?accion=Index">Inicio</a>
        <a href="ControladorProveedor?accion=Listar">Listar</a>
        <a href="ControladorProveedor?accion=Agregar">Agregar</a>

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

        <h1 class="heading"> <span>Registrar</span> Proveedores </h1>
    
        <section class="about" id="about">

    
            <div class="row">
    
    
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
                                 <input type="number" placeholder="Ingresar Ruc" name="txtRuc">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Nombre del proveedor" name="txtNombre">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Razón Social" name="txtRazonSocial">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Dirección" name="txtDireccion">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="text" placeholder="Ingresar Email" name="txtEmail">
                            </div>
                            
                            <div class="inputBox">
                                <span class="fas fa-user"></span>
                                <input type="number" placeholder="Ingresar telefono" name="txtTelefono">
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
