
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
         <link rel="stylesheet" href="navigator.css">
        <title>PRINCIPAL</title>
    </head>
    <body>
             
<header class="header">

    <a href="#" class="logo">
        <img src="./images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="#home">Inicio</a>
        <a href="#blogs">Opciones</a>
        <a href="#review">Integrantes</a>

    </nav>

    <div class="icons">
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-bars" id="menu-btn"></div>
    </div>

    <div class="search-form">
    <!-- custom css file link  -->
         <link rel="stylesheet" href="navigator.css">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </div>

</header>


<section class="home" id="home">

    <div class="content">
        <h3>SISTEMA DE VENTAS</h3>
        <p>SISTEMA DE CONTROL DE VENTAS</p>
    </div>

</section>


<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"> OPERACIONES <span> SISTEMA</span> </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">EMPLEADOS</a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorEmpleado?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">CLIENTES</a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorCliente?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>
        
        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">PRODUCTOS </a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorProducto?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>
        
        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">TIPO DE EMPLEADOS </a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorTipoEmpleado?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>
        
        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">CATEGORIA PRODUCTOS </a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorCategoriaProducto?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>
        
        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">MARCA </a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorMarca?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>
        
        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">PROVEEDOR </a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorProveedor?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>


        <div class="box">
            <div class="image">
                <img src="./images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="title">VENTAS </a>
                <span>CRUD (LISTAR / MODIFICAR / ELIMINAR)</span>
                <a href="ControladorVentas?accion=Listar" class="btn">INGRESAR</a>
            </div>
        </div>
    </div>

</section>



<section class="review" id="review">

    <h1 class="heading"> Integrantes <span> PROYECTO</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="./images/quote-img.png" alt="" class="quote">
            <h3>Luis Neyra Urteaga</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        
        
        <div class="box">
            <img src="./images/quote-img.png" alt="" class="quote">
            <h3>Jessenia Sempertegui bereche</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        
        
        <div class="box">
            <img src="./images/quote-img.png" alt="" class="quote">
            <h3>Wilmer Cunyarata Roña</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        
        
        <div class="box">
            <img src="./images/quote-img.png" alt="" class="quote">
            <h3>Kelkin Lozano Delgado</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
        
        
        <div class="box">
            <img src="./images/quote-img.png" alt="" class="quote">
            <h3>Ernesto Huaman Mio</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>
    </div>

</section>



<!-- blogs section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="#home">Inicio</a>
        <a href="#blog">Opciones</a>
        <a href="#review">Integrantes</a>
        
    </div>

    <div class="credit">Ing. Sistemas<span>proyecto web</span> | sistema de ventas</div>

</section>

    </body>
</html>
