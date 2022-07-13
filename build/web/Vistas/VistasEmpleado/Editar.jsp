<%@page import="Modelo.Empleados"%>
<%@page import="ModeloDatos.EmpleadoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./Vistas/VistasEmpleado/agregarEmpleado.css">
        <title>JSP Page</title>
    </head>
    <body>
       
           
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorEmpleado?accion=Index">Inicio</a>
        <a href="ControladorEmpleado?accion=Listar">Listar</a>
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
                EmpleadoDao emD = new EmpleadoDao();
                String codigo = (String)request.getAttribute("codigoListar");
                Empleados em = (Empleados)emD.listarCodigo(codigo);
                
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
                <input type="text"  name="txtTipoDocEmpleado" value="<%= em.getTipoDocumento()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number"  name="txtNumeroDocEmpleado" value="<%= em.getNumeroDocumento()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtNombreEmpleado" value="<%= em.getNombres()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtApellidoPatEmpleado" value="<%= em.getApellidoP()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtApellidoMatEmpleado" value="<%= em.getApellidoM()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtDireccionEmpleado" value="<%= em.getDireccion()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="date"  name="txtFechaNacimientoEmpleado" value="<%= em.getFechaNacimiento()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtGeneroEmpleado" value="<%= em.getGenero()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtEmailEmpleado" value="<%= em.getCorreo()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="number"  name="txtTelefonoEmpleado" value="<%= em.getTelefono()%>">
            </div>
            
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text"  name="txtTipoEmpleado" value="<%= em.getTipoEmpleado()%>">
            </div>
            
             <input type="hidden" name="txtCodigo" value="<%= em.getCodigo()%>">
             
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
