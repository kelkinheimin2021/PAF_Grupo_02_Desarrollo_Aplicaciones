

<%@page import="Modelo.CategoriaProductos"%>
<%@page import="ModeloDatos.CategoriaProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./Vistas/VistasCategoriaProducto/agregarCategoriaProducto.css">
        <title>JSP Page</title>
    </head>
    <body>
       
           
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorCategoriaProducto?accion=Index">Inicio</a>
        <a href="ControladorCategoriaProducto?accion=Listar">Listar</a>
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

    <h1 class="heading"> <span>Actualizar</span> Categoría del producto </h1>
    
    <section class="about" id="about">

        <%
                CategoriaProductoDao catD = new CategoriaProductoDao();
                String codigo = (String)request.getAttribute("codigoListar");
                CategoriaProductos cat = (CategoriaProductos)catD.listarCodigo(codigo);
                
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
                <input type="text"  name="txtDescripcion" value="<%= cat.getDescripcion()%>">
            </div>
            
             <input type="hidden" name="txtCodigo" value="<%= cat.getCodigo()%>">
             
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
