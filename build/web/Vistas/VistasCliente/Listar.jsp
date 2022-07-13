
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Clientes"%>
<%@page import="ModeloDatos.ClienteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./Vistas/VistasCliente/listarClientes.css">
    <title>Listar</title>
    </head>

<body>
    
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorCliente?accion=Index">Volver</a>
        <a href="ControladorCliente?accion=Agregar">Agregar</a>
        <a href="ControladorCliente?accion=Listar">Listar</a>

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
            <h1 class="heading"> LISTA  <span>CLIENTES</span> </h1>

            <div class="boxOp">
                

                            <div class="rowtable">


                                <table class="table table-bordered table-striped ">
                                    
                                    <thead class="encabezadoTabla ">
                                        <tr>
                                            <th> Codigo</th>
                                            <th> T. Documento </th>
                                            <th> Documento</th>
                                            <th>  Nombre</th>
                                            <th> Editar</th>
                                            <th> Elimianr </th>
                                        </tr>           
                                    </thead>
                                    <%
                    ClienteDao cliD = new ClienteDao();
                    List<Clientes> list=cliD.listar();
                    Iterator<Clientes>iter=list.iterator();
                    Clientes cli = null;
                    while(iter.hasNext()){
                        cli=iter.next();
                    
                                    %>
                                    <tbody class="cuerpoTabla">
                                        <tr>
                                             <td><%= cli.getCodigo() %></td>
                                             <td><%= cli.getTipoDocumento() %></td>
                                             <td><%= cli.getNumeroDocumento()%></td>
                                             <td><%= cli.getNombre() %></td>
                                             <td> 
                                                 <a href="ControladorCliente?accion=Editar&codigo=<%= cli.getCodigo() %>" class="btnListas">EDITAR</a>
                                             </td>
                                             <td> <a href="ControladorCliente?accion=Eliminar&codigo=<%= cli.getCodigo() %>" class="btnListas">ELIMINAR</a></td>
                                        </tr> 
                                        <%} %>
                                    </tbody>
                                    
                                </table>
                            </div>

            </div>
    
                    
                    
                </div>
            </section>
        </div>
    </div>

    <!-- custom js file link  -->
    <script src="js/script.js"></script>
</body> 
</html>
