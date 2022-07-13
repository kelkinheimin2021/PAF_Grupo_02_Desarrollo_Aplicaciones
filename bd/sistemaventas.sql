-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2022 a las 01:43:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCategoriaProducto` (IN `DescripcionCategoria` VARCHAR(50), IN `Codigo` VARCHAR(6))   UPDATE categoriaproducto c SET
c.DescripcionCategoria = DescripcionCategoria
WHERE c.CodigoCategoria = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCliente` (IN `TipoDocumento` VARCHAR(20), IN `NumeroDocumento` INT(13), IN `Nombre` VARCHAR(200), IN `Codigo` VARCHAR(6))   UPDATE cliente SET 
TipoDocumento=TipoDocumento,
NumeroDocumento= NumeroDocumento,
Nombre=Nombre
WHERE CodigoCliente = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarEmpleado` (IN `TipoDocumento` VARCHAR(50), IN `NumeroDocumento` INT(13), IN `Nombres` VARCHAR(200), IN `ApellidoPaterno` VARCHAR(100), IN `ApellidoMaterno` VARCHAR(100), IN `Direccion` VARCHAR(200), IN `FechaNacimiento` DATE, IN `Genero` VARCHAR(10), IN `Correo` VARCHAR(80), IN `Telefono` INT, IN `CodigoTipoempleado` VARCHAR(7), IN `Codigo` VARCHAR(6))   UPDATE empleado SET
 TipoDocumento = TipoDocumento, 
 NumeroDocumento = NumeroDocumento, 
 Nombres = Nombres, 
 ApellidoPaterno = ApellidoPaterno, 
 ApellidoMaterno = ApellidoMaterno, 
 Direccion = Direccion, 
 FechaNacimiento = FechaNacimiento, 
 Genero = Genero, 
 Correo = Correo, 
 Telefono = Telefono,
 CodigoTipoEmpleado = CodigoTipoEmpleado
WHERE CodigoEmpleado = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarMarca` (IN `DescripcionMarca` VARCHAR(50), IN `Codigo` VARCHAR(6))   UPDATE marcaproducto m SET
m.DescripcionMarca = DescripcionMarca
WHERE m.CodigoMarca = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarProducto` (IN `Nombre` VARCHAR(50), IN `Descripcion` VARCHAR(200), IN `Stock` INT, IN `Precio` DOUBLE, IN `Categoria` VARCHAR(6), IN `Marca` VARCHAR(6), IN `Proveedor` VARCHAR(7), IN `Codigo` VARCHAR(7))   UPDATE producto SET
NombreProducto = Nombre,
DescripcionProducto = Descripcion,
Stock = Stock,
Precio = Precio,
CodigoCategoria = Categoria,
CodigoMarca = Marca,
Codigoproveedor = Proveedor
WHERE CodigoProducto = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarProveedores` (IN `TipoDocumento` VARCHAR(20), IN `NumeroDocumento` INT(13), IN `RUC` INT(13), IN `NombreProveedor` VARCHAR(50), IN `RazonSocial` VARCHAR(100), IN `Direccion` VARCHAR(200), IN `Correo` VARCHAR(50), IN `Telefono` INT(10), IN `Codigo` VARCHAR(7))   UPDATE proveedor SET 
TipoDocumento = TipoDocumento,
NumeroDocumento = NumeroDocumento,
Ruc = RUC,
NombreProveedor = NombreProveedor,
RazonSocial = RazonSocial,
Direccion = Direccion,
Correo = Correo,
Telefono = Telefono
WHERE CodigoProveedor = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarTipoEmpleado` (IN `DescripcionEmpleado` VARCHAR(50), IN `Codigo` VARCHAR(7))   UPDATE tipoempleado SET 
DescripcionEmpleado = DescripcionEmpleado
WHERE Codigotipoempleado = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCategoriaProducto` (IN `Codigo` VARCHAR(6))   UPDATE categoriaproducto c SET
c.Estado = 0
WHERE c.CodigoCategoria = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCliente` (IN `Codigo` VARCHAR(6))   UPDATE cliente SET 
Estado = 0
WHERE CodigoCliente = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarEmpleado` (IN `Codigo` VARCHAR(6))   UPDATE empleado SET 
Estado = 0
WHERE CodigoEmpleado = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarMarca` (IN `Codigo` VARCHAR(6))   UPDATE marcaproducto m SET
m.Estado = 0
WHERE m.CodigoMarca = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarProducto` (IN `Codigo` VARCHAR(7))   UPDATE producto SET
Estado = 0
WHERE CodigoProducto = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarProveedores` (IN `Codigo` VARCHAR(7))   UPDATE proveedor p SET 
p.Estado = 0
WHERE p.CodigoProveedor = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTipoEmpleado` (IN `Codigo` VARCHAR(7))   UPDATE tipoempleado SET
Estado = 0
WHERE Codigotipoempleado = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCategoriaProducto` (IN `DescripcionCategoria` VARCHAR(50), IN `Estado` INT(1))   INSERT INTO categoriaproducto 
(DescripcionCategoria, Estado)
VALUES
(DescripcionCategoria, Estado)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarClientes` (IN `TipoDocumento` VARCHAR(20), IN `NumeroDocumento` INT(13), IN `Nombre` VARCHAR(200), IN `Estado` INT(1))   INSERT INTO cliente 
(TipoDocumento,NumeroDocumento,Nombre,Estado)
VALUES
(TipoDocumento,NumeroDocumento,Nombre,Estado)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEmpleado` (IN `TipoDocumento` VARCHAR(50), IN `NumeroDocumento` INT(13), IN `Nombres` VARCHAR(200), IN `ApellidoPaterno` VARCHAR(100), IN `ApellidoMaterno` VARCHAR(100), IN `Direccion` VARCHAR(200), IN `FechaNacimiento` DATE, IN `Genero` VARCHAR(10), IN `Correo` VARCHAR(80), IN `Telefono` INT, IN `Estado` INT(1), IN `CodigoTipoEmpleado` VARCHAR(7))   Insert into empleado 
(TipoDocumento, NumeroDocumento, Nombres, ApellidoPaterno, ApellidoMaterno, Direccion, 
 FechaNacimiento, Genero, Correo, Telefono, Estado, CodigoTipoEmpleado)
 VALUES
 (TipoDocumento, NumeroDocumento, Nombres, ApellidoPaterno, ApellidoMaterno, Direccion, 
 FechaNacimiento, Genero, Correo, Telefono, Estado, CodigoTipoEmpleado)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarMarca` (IN `DescripcionMarca` VARCHAR(50), IN `Estado` INT(1))   INSERT INTO marcaproducto
(DescripcionMarca, Estado)
VALUES
(DescripcionMarca, Estado)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarProducto` (IN `NombreProducto` VARCHAR(50), IN `DescripcionProducto` VARCHAR(200), IN `Stock` INT, IN `Precio` DOUBLE, IN `Estado` INT, IN `CodigoCategoria` VARCHAR(6), IN `CodigoMarca` VARCHAR(6), IN `Codigoproveedor` VARCHAR(7))   INSERT INTO producto
(NombreProducto, DescripcionProducto, Stock, Precio, Estado, 
 CodigoCategoria, CodigoMarca, CodigoProveedor)
VALUES
(NombreProducto, DescripcionProducto, Stock, Precio, Estado, 
 CodigoCategoria, CodigoMarca, CodigoProveedor)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarProveedor` (IN `TipoDocumento` VARCHAR(20), IN `NumeroDocumento` INT(13), IN `RUC` INT(13), IN `NombreProveedor` VARCHAR(50), IN `RazonSocial` VARCHAR(100), IN `Direccion` VARCHAR(200), IN `Correo` VARCHAR(50), IN `Telefono` INT(10), IN `Estado` INT(1))   INSERT INTO proveedor 
(TipoDocumento, NumeroDocumento, Ruc, NombreProveedor, 
 RazonSocial, Direccion, Correo, Telefono, Estado)
 VALUES
 (TipoDocumento, NumeroDocumento, Ruc, NombreProveedor, 
 RazonSocial, Direccion, Correo, Telefono, Estado)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarTipoEmpleado` (IN `DescripcionEmpleado` VARCHAR(50), IN `Estado` INT(1))   INSERT INTO tipoempleado
(DescripcionEmpleado, Estado)
VALUES
(DescripcionEmpleado, Estado)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarVenta` (IN `FechaVenta` DATE, IN `CodigoCliente` VARCHAR(6), IN `Codigoempleado` VARCHAR(6), IN `CodigoPago` VARCHAR(7), IN `Cantidad` INT, IN `Producto` VARCHAR(7), IN `Precio` DOUBLE, IN `Total` DOUBLE)   INSERT INTO venta 
(FechaVenta, CodigoCliente, CodigoEmpleado,CodigoPago,Cantidad, CodigoProducto, Precio, Total)
values
(FechaVenta, CodigoCliente, CodigoEmpleado,CodigoPago,Cantidad, Producto, Precio, Total)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarCategoriaProducto` ()   SELECT * FROM categoriaproducto c WHERE c.Estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarCategoriaProductoCodigo` (IN `Codigo` VARCHAR(6))   SELECT * FROM categoriaproducto c WHERE c.CodigoCategoria = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarClienteCodigo` (IN `Codigo` VARCHAR(6))   SELECT * FROM cliente WHERE CodigoCliente = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarClientes` ()   SELECT * FROM cliente WHERE Estado = 1 order by CodigoCliente ASC$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarEmpleado` ()   SELECT * FROM empleado e INNER JOIN tipoempleado t on e.CodigoTipoempleado = t.Codigotipoempleado WHERE e.Estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarEmpleadosCodigo` (IN `Codigo` VARCHAR(6))   SELECT * FROM empleado WHERE CodigoEmpleado = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarMarca` ()   SELECT * FROM marcaproducto m WHERE m.Estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarMarcaCodigo` (IN `Codigo` VARCHAR(6))   SELECT * FROM marcaproducto m WHERE m.CodigoMarca = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProducto` ()   SELECT p.CodigoProducto,p.NombreProducto, p.DescripcionProducto, p.Stock,p.Precio,c.DescripcionCategoria, m.DescripcionMarca, 
pr.NombreProveedor
from producto p 
INNER JOIN categoriaproducto c 
on p.Codigocategoria = c.CodigoCategoria
INNER JOIN marcaproducto m 
on p.CodigoMarca = m.CodigoMarca
INNER JOIN proveedor pr
on p.CodigoProveedor = pr.CodigoProveedor
WHERE p.Estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProductoCodigo` (IN `Codigo` VARCHAR(7))   SELECT * FROM producto 
WHERE CodigoProducto = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProveedores` ()   SELECT * FROM proveedor p WHERE p.Estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarProveedoresCodigo` (IN `Codigo` VARCHAR(7))   SELECT * FROM proveedor  WHERE CodigoProveedor = Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarTipoEmpleado` ()   SELECT * from tipoempleado WHERE Estado = 1$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarTipoEmpleadosCodigo` (IN `Codigo` VARCHAR(7))   SELECT * FROM tipoempleado t WHERE t.Codigotipoempleado= Codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarVenta` ()   SELECT v.CodigoVenta, v.FechaVenta, c.Nombre,
e.Nombres, t.Descripcion, v.Cantidad, p.NombreProducto,
p.Precio, v.Total
FROM venta v
INNER JOIN cliente c
on v.CodigoCliente = c.CodigoCliente
INNER JOIN empleado e
on v.CodigoEmpleado = e.CodigoEmpleado
INNER JOIN tipopago t
on v.CodigoPago = t.CodigoTipoPago
INNER JOIN producto p ON
v.CodigoProducto = p.CodigoProducto$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE `categoriaproducto` (
  `CodigoCategoria` varchar(6) NOT NULL,
  `DescripcionCategoria` varchar(50) NOT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`CodigoCategoria`, `DescripcionCategoria`, `Estado`) VALUES
('CAT001', 'Libro', 1),
('CAT002', 'Cuaderno', 1),
('CAT003', 'Lapicero', 1);

--
-- Disparadores `categoriaproducto`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoCategoriaProducto` BEFORE INSERT ON `categoriaproducto` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoCategoria, 4),signed integer)), 0) FROM 			categoriaproducto)+1;
    SET new.CodigoCategoria = concat('CAT', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `CodigoCliente` varchar(6) NOT NULL,
  `TipoDocumento` varchar(20) NOT NULL,
  `NumeroDocumento` int(13) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`CodigoCliente`, `TipoDocumento`, `NumeroDocumento`, `Nombre`, `Estado`) VALUES
('CLI001', 'Dni', 12345678, 'Alonso', 1);

--
-- Disparadores `cliente`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoCliente` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoCliente, 4),signed integer)), 0) FROM 			cliente)+1;
    SET new.CodigoCliente = concat('CLI', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `CodigoEmpleado` varchar(6) NOT NULL,
  `TipoDocumento` varchar(50) NOT NULL,
  `NumeroDocumento` int(13) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `ApellidoPaterno` varchar(40) NOT NULL,
  `ApellidoMaterno` varchar(40) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Fechanacimiento` date NOT NULL,
  `Genero` varchar(10) NOT NULL,
  `Correo` varchar(80) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Estado` int(1) NOT NULL,
  `CodigoTipoempleado` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`CodigoEmpleado`, `TipoDocumento`, `NumeroDocumento`, `Nombres`, `ApellidoPaterno`, `ApellidoMaterno`, `Direccion`, `Fechanacimiento`, `Genero`, `Correo`, `Telefono`, `Estado`, `CodigoTipoempleado`) VALUES
('EMP001', 'Dni', 70227867, 'Ernesto', 'Huaman', 'Mio', 'Chiclayo', '1999-10-02', 'Masculino', 'ernesto@gmail.com', 93652147, 1, 'TEMP001');

--
-- Disparadores `empleado`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoEmpelado` BEFORE INSERT ON `empleado` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoEmpleado, 4),signed integer)), 0) FROM 			empleado)+1;
    SET new.CodigoEmpleado = concat('EMP', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `Codigo` varchar(6) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contra` varchar(20) NOT NULL,
  `Estado` int(1) NOT NULL,
  `CodigoEmpleado` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcaproducto`
--

CREATE TABLE `marcaproducto` (
  `CodigoMarca` varchar(6) NOT NULL,
  `DescripcionMarca` varchar(50) NOT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcaproducto`
--

INSERT INTO `marcaproducto` (`CodigoMarca`, `DescripcionMarca`, `Estado`) VALUES
('MAR001', 'Bruño', 1),
('MAR002', 'Standford', 1),
('MAR003', 'Justus', 1),
('MAR004', 'Pilot', 1);

--
-- Disparadores `marcaproducto`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoMarca` BEFORE INSERT ON `marcaproducto` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoMarca , 4),signed integer)), 0) FROM 			marcaproducto m)+1;
    SET new.CodigoMarca = concat('MAR', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `CodigoProducto` varchar(7) NOT NULL,
  `NombreProducto` varchar(50) NOT NULL,
  `DescripcionProducto` varchar(200) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `Estado` int(1) NOT NULL,
  `Codigocategoria` varchar(6) NOT NULL,
  `CodigoMarca` varchar(6) NOT NULL,
  `CodigoProveedor` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`CodigoProducto`, `NombreProducto`, `DescripcionProducto`, `Stock`, `Precio`, `Estado`, `Codigocategoria`, `CodigoMarca`, `CodigoProveedor`) VALUES
('PROD001', 'Cuaderno ', 'Cuaderno 100 hojas cuadriculado', 10, 2.5, 1, 'CAT002', 'MAR003', 'PROV001');

--
-- Disparadores `producto`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoProducto` BEFORE INSERT ON `producto` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoProducto, 5),signed integer)), 0) FROM 			producto)+1;
    SET new.CodigoProducto = concat('PROD', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `CodigoProveedor` varchar(7) NOT NULL,
  `TipoDocumento` varchar(20) NOT NULL,
  `NumeroDocumento` int(13) NOT NULL,
  `Ruc` int(13) NOT NULL,
  `NombreProveedor` varchar(50) NOT NULL,
  `RazonSocial` varchar(100) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`CodigoProveedor`, `TipoDocumento`, `NumeroDocumento`, `Ruc`, `NombreProveedor`, `RazonSocial`, `Direccion`, `Correo`, `Telefono`, `Estado`) VALUES
('PROV001', 'Ruc', 87654321, 1234567891, 'Jose', 'Ventas SAC', 'Chiclayo', 'ventassac.com', 123456789, 1);

--
-- Disparadores `proveedor`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoProveedor` BEFORE INSERT ON `proveedor` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoProveedor , 5),signed integer)), 0) FROM 			proveedor)+1;
    SET new.CodigoProveedor  = concat('PROV', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempleado`
--

CREATE TABLE `tipoempleado` (
  `Codigotipoempleado` varchar(7) NOT NULL,
  `DescripcionEmpleado` varchar(50) NOT NULL,
  `Estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoempleado`
--

INSERT INTO `tipoempleado` (`Codigotipoempleado`, `DescripcionEmpleado`, `Estado`) VALUES
('TEMP001', 'Administrador', 1),
('TEMP002', 'Vendedor', 1);

--
-- Disparadores `tipoempleado`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoTipoEmpleado` BEFORE INSERT ON `tipoempleado` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoTipoempleado, 5),signed integer)), 0) FROM 			tipoempleado)+1;
    SET new.CodigoTipoempleado = concat('TEMP', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `CodigoTipoPago` varchar(7) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`CodigoTipoPago`, `Descripcion`) VALUES
('TIPA001', 'Efectivo'),
('TIPA002', 'Yape'),
('TIPA003', 'Plin'),
('TIPA004', 'Transferencia');

--
-- Disparadores `tipopago`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoTipoPago` BEFORE INSERT ON `tipopago` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoTipoPago, 5),signed integer)), 0) FROM 			tipopago)+1;
    SET new.CodigoTipoPago = concat('TIPA', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `CodigoVenta` varchar(6) NOT NULL,
  `FechaVenta` date NOT NULL,
  `CodigoCliente` varchar(6) NOT NULL,
  `CodigoEmpleado` varchar(6) NOT NULL,
  `CodigoPago` varchar(7) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `CodigoProducto` varchar(7) NOT NULL,
  `Precio` double NOT NULL,
  `Total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`CodigoVenta`, `FechaVenta`, `CodigoCliente`, `CodigoEmpleado`, `CodigoPago`, `Cantidad`, `CodigoProducto`, `Precio`, `Total`) VALUES
('VEN001', '2022-07-12', 'CLI001', 'EMP001', 'TIPA002', 2, 'PROD001', 2.5, 5);

--
-- Disparadores `venta`
--
DELIMITER $$
CREATE TRIGGER `GenerarCodigoVenta` BEFORE INSERT ON `venta` FOR EACH ROW BEGIN 
	DECLARE siguientecodigo int;
    SET siguientecodigo = (SELECT IFNULL(MAX(CONVERT(substring(CodigoVenta , 4),signed integer)), 0) FROM 			venta m)+1;
    SET new.CodigoVenta = concat('VEN', LPAD(siguientecodigo, 3, '0'));
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD PRIMARY KEY (`CodigoCategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CodigoCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`CodigoEmpleado`),
  ADD KEY `CodigoTipoempleado` (`CodigoTipoempleado`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `CodigoEmpleado` (`CodigoEmpleado`);

--
-- Indices de la tabla `marcaproducto`
--
ALTER TABLE `marcaproducto`
  ADD PRIMARY KEY (`CodigoMarca`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CodigoProducto`),
  ADD KEY `Codigocategoria` (`Codigocategoria`,`CodigoMarca`,`CodigoProveedor`),
  ADD KEY `CodigoMarca` (`CodigoMarca`),
  ADD KEY `CodigoProveedor` (`CodigoProveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`CodigoProveedor`);

--
-- Indices de la tabla `tipoempleado`
--
ALTER TABLE `tipoempleado`
  ADD PRIMARY KEY (`Codigotipoempleado`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`CodigoTipoPago`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`CodigoVenta`),
  ADD KEY `CodigoCliente` (`CodigoCliente`,`CodigoEmpleado`,`CodigoPago`),
  ADD KEY `CodigoEmpleado` (`CodigoEmpleado`),
  ADD KEY `CodigoPago` (`CodigoPago`),
  ADD KEY `CodigoProducto` (`CodigoProducto`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`CodigoTipoempleado`) REFERENCES `tipoempleado` (`Codigotipoempleado`);

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`CodigoEmpleado`) REFERENCES `empleado` (`CodigoEmpleado`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Codigocategoria`) REFERENCES `categoriaproducto` (`CodigoCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`CodigoMarca`) REFERENCES `marcaproducto` (`CodigoMarca`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`CodigoProveedor`) REFERENCES `proveedor` (`CodigoProveedor`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`CodigoEmpleado`) REFERENCES `empleado` (`CodigoEmpleado`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`CodigoCliente`) REFERENCES `cliente` (`CodigoCliente`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`CodigoPago`) REFERENCES `tipopago` (`CodigoTipoPago`),
  ADD CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`CodigoProducto`) REFERENCES `producto` (`CodigoProducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
