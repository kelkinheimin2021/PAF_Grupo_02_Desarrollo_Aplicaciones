

<%@page import="Modelo.Proveedor"%>
<%@page import="ModeloDatos.ProveedorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./Vistas/VistasProveedores/agregarProveedor.css">
        <title>JSP Page</title>
    </head>
    <body>
       
           
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorProveedor?accion=Index">Inicio</a>
        <a href="ControladorProveedor?accion=Listar">Listar</a>
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

    <h1 class="heading"> <span>Actualizar</span> Empleado </h1>
    
    <section class="about" id="about">

        <%
                ProveedorDao proD = new ProveedorDao();
                String codigo = (String)request.getAttribute("codigoListar");
                Proveedor pro = (Proveedor)proD.listarCodigo(codigo);
                
        %>
        
        <div class="row">
    
            <div class="image">
                <img src="images/blog-1.jpg" alt="">
            </div>
    
            <div class="content">
                    <div class="row">

        <form action="">
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtTipoDoc" value="<%= pro.getTipoDocumento()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number"  name="txtNumeroDoc" value="<%= pro.getNumeroDocumento()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtRuc" value="<%= pro.getRuc()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtNombre" value="<%= pro.getNombreProveedor()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtRazonSocial" value="<%= pro.getRazonSocial()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtDireccion" value="<%= pro.getDireccion()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtEmail" value="<%= pro.getCorreo()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number"  name="txtTelefono" value="<%= pro.getTelefono()%>">
            </div>

             <input type="hidden" name="txtCodigo" value="<%= pro.getCodigo()%>">
             
            <input type="submit" name="accion" value="ACTUALIZAR" class="btnListas">
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
