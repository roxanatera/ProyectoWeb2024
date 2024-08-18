-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 02-12-2023 a las 12:45:17
-- Versión del servidor: 10.10.2-MariaDB
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `donasolidaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Donando', 'La mejor forma de Ayudar es', 'hero.webp', '2023-10-18 03:04:04', 'Portada', 1),
(2, 'Donaciones', 'Tu ayuda cuenta', 'hand-517114_1280.jpg', '2023-10-08 00:47:10', 'Cancer', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Fernando Herrera', 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2023-08-30 04:06:18'),
(4, 'Alberto', 'alegarman86@gmail.com', 'jahskqdkqhwdhqwdhqkdh', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-17 17:10:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 1, 2, '200.00', 1),
(2, 1, 1, '100.00', 2),
(3, 2, 1, '100.00', 3),
(4, 3, 4, '12.00', 2),
(5, 4, 4, '12.00', 1),
(6, 5, 2, '25.00', 1),
(7, 5, 1, '10.00', 1),
(8, 6, 3, '10.00', 1),
(9, 7, 2, '15.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(17, 4, 'pro_6de01ab7dc6ffab3872981340474e622.jpg'),
(18, 3, 'pro_8da42b862f2ce3f72670c8b9cafef4d2.jpg'),
(19, 2, 'pro_bf0b277ccd556b7f437424e3910b6991.jpg'),
(20, 1, 'pro_1ae0bcbb83b2a9b96773b3b2959f5e59.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) DEFAULT NULL,
  `datospaypal` text DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(1, '4561654687', NULL, NULL, 3, '2023-11-20 03:41:57', '2.00', '15.00', 3, 'Calle Taraje, 22 Cadiz', 'Completo'),
(2, NULL, '8XD37465755620710', '{\"id\":\"4S6284553D668511R\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-6z0da4580133@business.example.com\",\"merchant_id\":\"ULNZF7CTTE748\"},\"description\":\"Compra de artículos en Tienda Virtual por $350 \",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Guatemala City\",\"admin_area_1\":\"Guatemala City\",\"postal_code\":\"01001\",\"country_code\":\"GT\"}},\"payments\":{\"captures\":[{\"id\":\"8XD37465755620710\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-08-20T09:48:38Z\",\"update_time\":\"2021-08-20T09:48:38Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-iimwo4579006@personal.example.com\",\"payer_id\":\"ZTA3QXTY5JS6Q\",\"address\":{\"country_code\":\"GT\"}},\"create_time\":\"2021-08-20T09:46:25Z\",\"update_time\":\"2021-08-20T09:48:38Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4S6284553D668511R\",\"rel\":\"self\",\"method\":\"GET\"}]}', 3, '2023-11-20 03:48:39', '50.00', '10.00', 1, 'Guatemala, Guatemala', 'Completo'),
(3, NULL, NULL, NULL, 1, '2023-11-10 18:34:08', '5.00', '29.00', 3, 'Calle Sueño del patricio 12, 2D, 41007', 'Pendiente'),
(4, NULL, NULL, NULL, 1, '2023-11-10 18:34:48', '5.00', '17.00', 2, 'Calle Carceleras 1E, 4D, 41007', 'Pendiente'),
(5, NULL, NULL, NULL, 5, '2023-11-20 11:29:37', '5.00', '40.00', 3, 'Calle Carceleras 1E, 4D, Sevilla', 'Pendiente'),
(6, NULL, NULL, NULL, 1, '2023-12-01 17:32:45', '5.00', '15.00', 2, 'Calle Sueño del patricio 12, 2D, 41007', 'Pendiente'),
(7, NULL, NULL, NULL, 21, '2023-12-02 12:13:48', '2.00', '17.00', 3, 'Calle Gonzo 15 4D, Sevilla', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Julia Roxana', 'Natera', 632546987, 'donasolidaria@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'DonaSolidaria_Smile', 'Ciudad', NULL, 1, '2023-11-19 01:34:15', 1),
(2, '24091990', 'Alex', 'Arana', 456878977, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 2, '2023-10-22 02:58:47', 1),
(3, '84654864', 'Ricardo', 'Hernández Pérez', 4687987, 'hr@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 3, '2023-10-22 03:41:28', 1),
(4, '798465877', 'Fernando', 'Guerra', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2023-10-22 18:07:00', 1),
(5, 'Y3456708M', 'Juana', 'Rodriguez', 632156978, 'juanachrodriguez@info.es', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1236455', 'Juana Rodriguez', 'Calle Macedonia 5 Cadiz', '7bf50d4c099bfa4add73-7b86b662b6a2d634ec5f-4b18088eae503c38440e-a17c7be0fe01c8c117ab', 3, '2023-11-20 11:23:55', 1),
(21, NULL, 'Rosa', 'Mancha Urdaneta', 236978564, 'rosaurdaneta@info.es', '9fff2219fe64e3e2c2937c716fa7f13afb711d0cee08449d2b2bc64accae19a3', NULL, NULL, NULL, NULL, 3, '2023-12-02 12:08:05', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2023-10-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2023-10-10 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2023-11-19 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p>Hab&iacute;a una vez un grupo de individuos con un prop&oacute;sito claro: marcar la diferencia en la lucha contra el c&aacute;ncer. Inspirados por experiencias personales, decidieron unir fuerzas y crear algo que no solo recaudara fondos, sino que tambi&eacute;n conectara a las personas de todo el mundo en esta causa com&uacute;n.</p> <p>La chispa de la idea surgi&oacute; en una reuni&oacute;n casual entre amigos que compart&iacute;an historias de seres queridos afectados por el c&aacute;ncer. Fue entonces cuando se dieron cuenta de la necesidad de una plataforma que no solo facilitara las donaciones, sino que tambi&eacute;n sirviera como un punto de encuentro para la comunidad unida por la lucha contra esta enfermedad.</p> <p>Con determinaci&oacute;n y pasi&oacute;n, el equipo se puso manos a la obra. No eran solo desarrolladores y dise&ntilde;adores, eran individuos con un prop&oacute;sito compartido. Crearon la tienda virtual de donaciones desde cero, dando vida a un espacio en l&iacute;nea donde la esperanza y la solidaridad pudieran florecer.</p> <p>Cada l&iacute;nea de c&oacute;digo, cada dise&ntilde;o, y cada funci&oacute;n de la tienda virtual ten&iacute;a un prop&oacute;sito claro: hacer que la experiencia de donar fuera f&aacute;cil, significativa y, sobre todo, impactante. Quer&iacute;an que cada usuario se sintiera parte de algo m&aacute;s grande, contribuyendo directamente a la investigaci&oacute;n y el apoyo a aquellos que luchan contra el c&aacute;ncer.</p> <p>A medida que la tienda virtual de donaciones cobraba vida, la comunidad empez&oacute; a crecer. Personas de todos los rincones del mundo se un&iacute;an para hacer donaciones, compartir historias de esperanza y brindar apoyo mutuo. La tienda virtual se convirti&oacute; en un faro de solidaridad, iluminando la oscuridad que el c&aacute;ncer hab&iacute;a arrojado sobre muchas vidas.</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p>En nuestra tienda virtual de donaciones contra el c&aacute;ncer, nos dedicamos apasionadamente a transformar vidas y crear un impacto positivo en la lucha contra esta enfermedad devastadora. Nuestra misi&oacute;n es proporcionar un espacio digital que va m&aacute;s all&aacute; de la simple transacci&oacute;n financiera; buscamos construir una comunidad unida por la esperanza, la solidaridad y el compromiso con un futuro libre de c&aacute;ncer.</p> <p>Nos comprometemos a:</p> <ol> <li> <p><strong>Recaudar Fondos Significativos:</strong> Facilitamos donaciones directas que respaldan la investigaci&oacute;n innovadora, el acceso a tratamientos y el apoyo integral para pacientes y sus familias.</p> </li> <li> <p><strong>Conectar Comunidades:</strong> Fomentamos un ambiente donde las historias personales se comparten, inspirando empat&iacute;a y solidaridad entre aquellos afectados por el c&aacute;ncer y aquellos que desean marcar la diferencia.</p> </li> <li> <p><strong>Promover la Conciencia:</strong> Educar y concientizar sobre la importancia de la detecci&oacute;n temprana, la prevenci&oacute;n y el apoyo continuo en la lucha contra el c&aacute;ncer.</p> </li> <li> <p><strong>Facilitar Experiencias Significativas:</strong> Crear una plataforma f&aacute;cil de usar que no solo permite donar, sino tambi&eacute;n participar en eventos, colaborar en campa&ntilde;as y ser parte activa de nuestra comunidad solidaria.</p> </li> <li> <p><strong>Transparencia y Responsabilidad:</strong> Garantizar que cada donaci&oacute;n se utilice eficientemente y se destine directamente a iniciativas que contribuyan a la mejora de la calidad de vida de aquellos afectados por el c&aacute;ncer.</p> </li> </ol> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2023-11-19 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d12679.596627230007!2d-5.97268415!3d37.39221704999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1701276425177!5m2!1ses!2ses\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2023-11-19 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2023-11-20 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2023-11-21 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Noticias', '<section class=\"py-5 text-center\"> <div class=\"container\">&nbsp;</div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><br /> <div class=\"card-body\"><a title=\"C&aacute;ncer de cuello uterino: un desaf&iacute;o de g&eacute;nero\" href=\"https://elpais.com/elpais/2014/12/04/planeta_futuro/1417709295_566158.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://imagenes.elpais.com/resizer/DBjOaooR085xwJYFalIbjIKQ4NU=/980x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/VYKRJTFVY3SLASXKML4R6TAXO4.jpg\" alt=\"\" width=\"759\" height=\"427\" /></a></div> <div class=\"card-body\">Cada a&ntilde;o m&aacute;s de 500.000 mujeres desarrollan la enfermedad en el mundo, y alrededor de 266.000 mujeres mueren por esta causa. Una cada dos minutos. El 90% de estas muertes ocurren en pa&iacute;ses en v&iacute;as de desarrollo</div> <div class=\"card-body\">&nbsp;</div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><a title=\"Jeff Bezos se compromete a donar la mayor parte de su fortuna antes de morir\" href=\"https://cincodias.elpais.com/cincodias/2022/11/14/fortunas/1668442834_100620.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://imagenes.elpais.com/resizer/17cYc_rPa1gCleU_bDTszK3i4CA=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/MOSEH5BON5NXHPFEJQJEOJHVKA.jpg\" alt=\"imagen2\" width=\"695\" height=\"427\" /></a> <div class=\"card-body\"> <p class=\"card-text\">El fundador de Amazon,&nbsp;<strong>Jeff Bezos</strong>, ha asegurado que&nbsp;<strong>donar&aacute; la mayor parte de su fortuna a obras de caridad durante su vida</strong>, en una entrevista con CNN difundida el lunes. El multimillonario respond&oacute; \"s&iacute;\", cuando le preguntaron si preve&iacute;a donar la mayor parte de su fortuna en vida.</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><a title=\"Circunstancias extraordinarias requieren de medidas excepcionales\" href=\"https://cincodias.elpais.com/cincodias/2020/05/13/legal/1589400464_780889.html\" target=\"_blank\" rel=\"noopener\"><img src=\"https://d500.epimg.net/cincodias/imagenes/2020/05/13/legal/1589400464_780889_1589400536_noticia_normal_recorte1.jpg\" alt=\"imagen3\" width=\"640\" height=\"427\" /></a> <div class=\"card-body\"> <p>Las iniciativas filantr&oacute;picas tienen un papel fundamental en la b&uacute;squeda de soluciones a los grandes problemas de la humanidad: completan la labor de las instituciones p&uacute;blicas y de las entidades del tercer sector, consiguen trabajar en territorios donde los poderes p&uacute;blicos y los mercados de capitales no llegan y permiten desarrollar proyectos de forma din&aacute;mica y efectiva.</p> <p>&nbsp;</p> </div> </div> </div> </div> </div> </div>', '', '2023-11-20 02:26:45', 'noticias', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2023-11-20 02:30:49', 'not-found', 1),
(12, 'Apoyo', '<table style=\"border-collapse: collapse; width: 100%; height: 376px;\" border=\"0\"> <tbody> <tr style=\"height: 91px;\"> <td style=\"width: 29.6231%; text-align: center; height: 91px;\"> <h2 style=\"text-align: center;\"><strong>ATENCI&Oacute;N SANITARIA&nbsp; </strong></h2> </td> <td style=\"width: 39.6438%; text-align: center; height: 91px;\"> <h2 style=\"text-align: center;\"><strong> APOYO EMOCIONAL</strong></h2> </td> <td style=\"width: 28.5395%; height: 91px;\"> <h2 style=\"text-align: center;\"><strong>TRATAMIENTOS</strong></h2> </td> </tr> <tr style=\"height: 285px;\"> <td style=\"width: 29.6231%; text-align: center; height: 285px;\"><img src=\"https://img.freepik.com/fotos-premium/doctor-salud-medicina-enfermera-equipo-grupo-personas-ocupacion-medica-sonriendo_488220-37980.jpg\" alt=\"Atenci&oacute;n mediva\" width=\"460\" height=\"306\" /></td> <td style=\"width: 39.6438%; text-align: center; height: 285px;\"> <h2 style=\"text-align: left;\"><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://img.freepik.com/foto-gratis/hombre-sentado-oficina-psicologo-hablando-sobre-problemas_1157-28359.jpg?w=1060&amp;t=st=1701445057~exp=1701445657~hmac=323c8ab47cbb4631e2d1970e5dc200cfa9e2e89170ad0f72a41bb7c99a6d477d\" alt=\"\" width=\"459\" height=\"305\" /></strong></h2> </td> <td style=\"width: 28.5395%; height: 285px;\"> <h2 style=\"text-align: left;\"><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://img.freepik.com/foto-gratis/doctora-irreconocible-dando-medicamentos-al-paciente_1098-17466.jpg?w=1060&amp;t=st=1701448654~exp=1701449254~hmac=664e325eb0ccd02e56f9d8f6032c5ede7ab726867a7e39b6d6e9f3db9c02896d\" alt=\"\" width=\"460\" height=\"307\" /><br /></strong></h2> </td> </tr> </tbody> </table> <h2 style=\"text-align: left;\">&nbsp;</h2> <h2 style=\"text-align: left;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></h2> <h2>&nbsp;</h2> <h2>&nbsp;</h2> <p style=\"text-align: left;\">&nbsp;</p> <p>&nbsp;</p> <h2 style=\"text-align: left;\">&nbsp;</h2> <p>&nbsp;</p>', 'img_afecb21afa4dd03de7de8a4745b2dd0b.jpg', '2023-11-17 17:19:47', 'apoyo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '2417984565', 'Llavero', '<p style=\"text-align: justify;\"><span style=\"font-family: Open Sans, Arial, sans-serif;\"><span style=\"font-size: 14px; background-color: #ffffff;\">Llavero Solidario, con la compra de este ariculo donas el 50% a la ayuda contra el cancer.</span></span></p>', '6.00', 50, NULL, '2023-11-19 03:12:14', 'llavero', 1),
(2, 1, '456879878', 'Camiseta', '<p>Regala nuestras camisetas solidarias y aportar&aacute;s tu granito de arena a nuestro proyecto solidario.&nbsp;<br />Con la compra de esta camiseta estaras regalando el 50% a la ayuda contra el cancer.</p>', '15.00', 100, NULL, '2023-11-05 03:14:10', 'camiseta', 1),
(3, 2, '4658798787', 'Agenda', '<p><span class=\"a-list-item\">Agenda dise&ntilde;ada para optimizar tu organizaci&oacute;n personal, haciendo tu vida m&aacute;s pr&aacute;ctica, c&oacute;moda y a la vez m&aacute;s bella. Comprando esta, adquieres productos de calidad, sostenibles y respetuosos con el medio ambiente. y por la compra estas donando el 50% del dinero a la ayuda contra el cancer.</span></p>', '10.00', 100, NULL, '2023-11-10 00:48:21', 'agenda', 1),
(4, 1, '13654236', 'Bolsa Artesanal', '<p>Bolsa Organica, con la compra de este producto estaras donando el 15% a la ayuda contra el cancer.</p>', '15.00', 10, NULL, '2023-11-10 18:33:08', 'bolsa-artesanal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

DROP TABLE IF EXISTS `reembolso`;
CREATE TABLE IF NOT EXISTS `reembolso` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de Sistema', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2023-11-15 04:05:10'),
(2, 'Juana Catalina', 'juanachrodriguez@gmail.com', '2023-11-20 11:28:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reembolso_ibfk_2` FOREIGN KEY (`id`) REFERENCES `reembolso` (`pedidoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
