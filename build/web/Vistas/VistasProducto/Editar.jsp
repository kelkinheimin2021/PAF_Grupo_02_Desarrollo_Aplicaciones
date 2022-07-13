<%@page import="Modelo.Producto"%>
<%@page import="ModeloDatos.ProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./Vistas/VistasProducto/agregarProducto.css">
        <title>JSP Page</title>
    </head>
    <body>
       
           
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorProducto?accion=Index">Inicio</a>
        <a href="ControladorProducto?accion=Listar">Listar</a>
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

    <h1 class="heading"> <span>Actualizar</span> Producto </h1>
    
    <section class="about" id="about">

        <%
                ProductoDao proD = new ProductoDao();
                String codigo = (String)request.getAttribute("codigoListar");
                Producto pro = (Producto)proD.listarCodigo(codigo);
                
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
                <input type="text"  name="txtNombre" value="<%= pro.getNombre()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtDescripcion" value="<%= pro.getDescripcion()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number"  name="txtStock" value="<%= pro.getStock()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number"  name="txtPrecio" value="<%= pro.getPrecio()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtCategoria" value="<%= pro.getCategoria()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtMarca" value="<%= pro.getMarca() %>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtProveedor" value="<%= pro.getProveedor() %>">
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
