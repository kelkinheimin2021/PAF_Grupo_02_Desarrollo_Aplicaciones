
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Empleados"%>
<%@page import="ModeloDatos.EmpleadoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./Vistas/VistasEmpleado/listarEmpleado.css">
    <title>Listar</title>
    </head>

<body>
    
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorEmpleado?accion=Index">Volver</a>
        <a href="ControladorEmpleado?accion=Agregar">Agregar</a>
        <a href="ControladorEmpleado?accion=Listar">Listar</a>

    </nav>

        


    <div class="rowLista">
   
        <form class="formBuscar">

            <div class="inputBox">
                <span class="fas fa-search"></span>
                <input type="search" placeholder="Ingresar nombre...">
            </div>
            
            <input type="submit" value="Buscar" class="btnListas">

        </form>
        
         
    </div>


</header>
    
    
    
    
    <div class="wraper">
            
        <div class="mainCliente">
            <section class="review" id="review">
                <div class="box-container">
                    <div class="icons">
                <a href="#" class="fas fa-shopping-cart"></a>
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="icons">
                <a href="#" class="fas fa-shopping-cart"></a>
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                    </div>
            <h1 class="heading"> LISTA  <span>EMPLEADOS</span> </h1>

            
                                 <%
                    EmpleadoDao emD = new EmpleadoDao();
                    List<Empleados> list=emD.listar();
                    Iterator<Empleados>iter=list.iterator();
                    Empleados em = null;
                    while(iter.hasNext()){
                        em=iter.next();
                    
                                    %>
            <div class="boxOp">
              
                    <div class="rowtable">
                        <table class="table1 table-bordered table-striped ">
                            <thead class="encabezadoTabla ">
                                <tr>
                                    <th> Codigo</th>
                                    <th>Tipo Documento</th>
                                    <th>Documento</th>
                                    <th>Nombre</th>
                                    <th>Apellido P.</th>
                                    <th>Apellido M.</th>
                                </tr>           
                            </thead>
                            
                            <tbody class="cuerpoTabla">
                                <tr>
                                    <td><%= em.getCodigo() %></td>
                                    <td><%= em.getTipoDocumento() %></td>
                                    <td><%= em.getNumeroDocumento()%></td>
                                    <td><%= em.getNombres() %></td>
                                    <td><%= em.getApellidoP()%></td>
                                    <td><%= em.getApellidoM()%></td>
                                </tr>
                            </tbody>
                        </table>
                                
                        <table class="table1 table-bordered table-striped ">
                            <thead class="encabezadoTabla ">
                                <tr>
                                    <th> Direccion</th>
                                    <th>Fecha Nacimiento</th>
                                    <th>Genero</th>
                                    <th>Correo</th>
                                    <th>Telefono</th>
                                    <th>Tipo empleado</th>
                                </tr>           
                            </thead>
                            
                            <tbody class="cuerpoTabla">
                                <tr>
                                    <td><%= em.getDireccion()%></td>
                                    <td><%= em.getFechaNacimiento()%></td>
                                    <td><%= em.getGenero()%></td>
                                    <td><%= em.getCorreo()%></td>
                                    <td><%= em.getTelefono()%></td>
                                    <td><%= em.getTipoEmpleado()%></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                                
                                <div class="opciones">
                                    <a href="ControladorEmpleado?accion=Editar&codigo=<%= em.getCodigo() %>" class="btnListas">EDITAR</a>
                                             
                                <a href="ControladorEmpleado?accion=Eliminar&codigo=<%= em.getCodigo() %>" class="btnListas">ELIMINAR</a>           
                                 
                                </div>
                                
                
                 
                                
            </div>
                                
                                <%} %>
    
                    
                    
                </div>
            </section>
        </div>
    </div>

    <!-- custom js file link  -->
    <script src="js/script.js"></script>
</body> 
</html>
