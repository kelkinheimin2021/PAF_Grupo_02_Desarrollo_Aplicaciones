
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDatos.ProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./Vistas/VistasProducto/listarProducto.css">
    <title>Listar</title>
    </head>

<body>
    
<header class="header">

    <a href="#" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="ControladorProducto?accion=Index">Volver</a>
        <a href="ControladorProducto?accion=Agregar">Agregar</a>
        <a href="ControladorProducto?accion=Listar">Listar</a>

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
            <h1 class="heading"> LISTA  <span>PRODUCTOS</span> </h1>

            <div class="boxOp">
                

                            <div class="rowtable">


                                <table class="table table-bordered table-striped ">
                                    
                                    <thead class="encabezadoTabla ">
                                        <tr>
                                            <th> Codigo</th>
                                            <th>Nombre</th>
                                            <th>Descripcion</th>
                                            <th>Stock</th>
                                            <th>Precio</th>
                                            <th>Categoria</th>
                                            <th>Marca</th>
                                            <th>Proveedor</th>
                                        </tr>           
                                    </thead>
                    <%
                    ProductoDao proD = new ProductoDao();
                    List<Producto> list=proD.listar();
                    Iterator<Producto>iter=list.iterator();
                    Producto pro= null;
                    while(iter.hasNext()){
                        pro=iter.next();
                    
                                    %>
                                    <tbody class="cuerpoTabla">
                                        <tr>
                                            <td><%= pro.getCodigo() %></td>
                                            <td><%= pro.getNombre()%></td>
                                            <td><%= pro.getDescripcion()%></td>
                                            <td><%= pro.getStock()%></td>
                                            <td><%= pro.getPrecio()%></td>
                                            <td><%= pro.getCategoria()%></td>
                                            <td><%= pro.getMarca()%></td>
                                            <td><%= pro.getProveedor()%></td>
                                            <td>
                                            <a href="ControladorProducto?accion=Editar&codigo=<%= pro.getCodigo() %>" class="btnListas">EDITAR</a>
                                            </td>
                                            <td>
                                            <a href="ControladorProducto?accion=Eliminar&codigo=<%= pro.getCodigo() %>" class="btnListas">ELIMINAR</a>           
                                            </td>
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
