
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Proveedor"%>
<%@page import="ModeloDatos.ProveedorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./Vistas/VistasProveedores/listarProveedor.css">
    <title>Listar</title>
    </head>

<body>
    
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorProveedor?accion=Index">Volver</a>
        <a href="ControladorProveedor?accion=Agregar">Agregar</a>
        <a href="ControladorProveedor?accion=Listar">Listar</a>

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
            <h1 class="heading"> LISTA  <span>PROVEEDORES</span> </h1>

            
                    <%
                    ProveedorDao proD = new ProveedorDao();
                    List<Proveedor> list=proD.listar();
                    Iterator<Proveedor>iter=list.iterator();
                    Proveedor pro = null;
                    while(iter.hasNext()){
                        pro=iter.next();
                    
                    %>
            <div class="boxOp">
              
                    <div class="rowtable">
                        <table class="table1 table-bordered table-striped ">
                            <thead class="encabezadoTabla ">
                                <tr>
                                    <th> Codigo</th>
                                    <th>Tipo Documento</th>
                                    <th>Documento</th>
                                    <th>Ruc</th>
                                    <th>Nombre Proveedor.</th>
                                </tr>           
                            </thead>
                            
                            <tbody class="cuerpoTabla">
                                <tr>
                                    <td><%= pro.getCodigo() %></td>
                                    <td><%= pro.getTipoDocumento() %></td>
                                    <td><%= pro.getNumeroDocumento()%></td>
                                    <td><%= pro.getRuc()%></td>
                                    <td><%= pro.getNombreProveedor()%></td>
                                </tr>
                            </tbody>
                        </table>
                                
                        <table class="table1 table-bordered table-striped ">
                            <thead class="encabezadoTabla ">
                                <tr>
                                    <th> Razón Social</th>
                                    <th>Direccion</th>
                                    <th>Correo</th>
                                    <th>Telefono</th>
                                </tr>           
                            </thead>
                            
                            <tbody class="cuerpoTabla">
                                <tr>
                                    <td><%= pro.getRazonSocial()%></td>
                                    <td><%= pro.getDireccion()%></td>
                                    <td><%= pro.getCorreo()%></td>
                                    <td><%= pro.getTelefono()%></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                                
                                <div class="opciones">
                                    <a href="ControladorProveedor?accion=Editar&codigo=<%= pro.getCodigo() %>" class="btnListas">EDITAR</a>
                                             
                                <a href="ControladorProveedor?accion=Eliminar&codigo=<%= pro.getCodigo() %>" class="btnListas">ELIMINAR</a>           
                                 
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
