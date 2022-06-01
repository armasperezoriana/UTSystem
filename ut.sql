-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2022 a las 22:23:03
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ut`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `cedula` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `usuario` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `operacion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `host` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `tabla` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `cedula`, `usuario`, `operacion`, `host`, `fecha`, `hora`, `tabla`, `status`) VALUES
(1, '2', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2021-08-29', '21:34:12', ' Seguridad Roles', NULL),
(2, '7403566', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-08-29', '21:34:50', 'Usuario', NULL),
(3, 'GAP173', 'root@localhost', 'Se inserto un vehiculo', 'localhost', '2021-09-13', '13:04:48', 'Vehiculo', NULL),
(4, 'SAR891', 'root@localhost', 'Se inserto un vehiculo', 'localhost', '2021-09-15', '18:33:21', 'Vehiculo', NULL),
(5, '95589666', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-10-13', '21:16:22', 'Chofer', NULL),
(6, '95589666', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2021-10-13', '21:37:00', 'Chofer', NULL),
(7, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-10-20', '14:22:42', 'Usuario', NULL),
(8, '123456', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-03', '10:49:08', 'Chofer', NULL),
(9, '9601788', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-03', '10:51:37', 'Chofer', NULL),
(10, '26779425', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-03', '10:52:11', 'Chofer', NULL),
(11, '3', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2021-12-03', '10:53:24', ' Seguridad Roles', NULL),
(12, '4', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2021-12-03', '10:54:34', ' Seguridad Roles', NULL),
(13, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2021-12-03', '10:54:55', 'Seguridad Roles', NULL),
(14, 'Preventi', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2021-12-03', '10:56:49', 'Tipos', NULL),
(15, 'Cambio d', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2021-12-03', '10:57:13', 'Tipos', NULL),
(16, 'Chequeo', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2021-12-03', '10:57:43', 'Tipos', NULL),
(17, 'Frenos', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2021-12-03', '10:58:07', 'Tipos', NULL),
(18, 'GAP173', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2021-12-03', '11:00:23', 'Ruta', NULL),
(19, 'VAS123', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2021-12-03', '11:00:42', 'Ruta', NULL),
(20, 'XAM368', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2021-12-03', '11:01:13', 'Ruta', NULL),
(21, 'SAR891', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2021-12-03', '11:01:50', 'Ruta', NULL),
(22, 'Cambio d', 'root@localhost', 'Se Modifico un campo de la tabla', 'localhost', '2021-12-03', '11:02:10', 'Tipos', NULL),
(23, '11456268', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-03', '11:02:49', 'Chofer', NULL),
(24, '123456', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2021-12-03', '11:02:57', 'Chofer', NULL),
(25, '27889456', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-03', '11:03:30', 'Chofer', NULL),
(26, 'GAP173', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2021-12-03', '11:04:03', 'Mantenimiento', NULL),
(27, 'PFS982', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2021-12-03', '11:04:36', 'Mantenimiento', NULL),
(28, 'XAM368', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2021-12-03', '11:05:14', 'Mantenimiento', NULL),
(29, 'Cauchos', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2021-12-03', '11:05:36', 'Tipos', NULL),
(30, 'GAP173', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2021-12-03', '11:06:05', 'Reparaciones', NULL),
(31, '01020304', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-16', '14:16:12', 'Chofer', NULL),
(32, '$%%$$%$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-16', '14:18:37', 'Chofer', NULL),
(33, '$%%$$%$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2021-12-16', '14:19:07', 'Chofer', NULL),
(34, '030201', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-17', '09:42:05', 'Chofer', NULL),
(35, '030201', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:09:33', 'Choferes', NULL),
(36, '$%%$$%$$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:09:40', 'Choferes', NULL),
(37, '$%%$$$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-17', '10:18:55', 'Chofer', NULL),
(38, '01020304', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(39, '11456268', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(40, '123456', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(41, '26779425', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(42, '27889456', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(43, '95589666', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(44, '9601788', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes', NULL),
(48, '01020304', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-17', '11:42:23', 'Usuario', NULL),
(49, '$%%$%$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-20', '10:11:31', 'Chofer', NULL),
(50, '050505', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-21', '19:43:57', 'Usuario', NULL),
(51, '$%%$$%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-22', '10:38:48', 'Chofer', NULL),
(52, '$%%$%$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-22', '10:39:40', 'Chofer', NULL),
(53, '$%%$$$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-22', '12:29:12', 'Chofer', NULL),
(54, '$%%$$$$$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-29', '19:07:15', 'Usuario', NULL),
(55, '$%%%$$%$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-29', '19:10:20', 'Usuario', NULL),
(56, '$%%$$%%$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '19:54:40', 'Usuario', NULL),
(57, '$$%%$$%%', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:03:18', 'Usuario', NULL),
(58, '$$$$$$$$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:03:39', 'Usuario', NULL),
(59, '01020304', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario', NULL),
(60, '050505', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario', NULL),
(61, '1234', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario', NULL),
(62, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario', NULL),
(63, '7403566', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario', NULL),
(64, '01020304', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario', NULL),
(65, '050505', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario', NULL),
(66, '1234', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario', NULL),
(67, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario', NULL),
(68, '7403566', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario', NULL),
(69, '$$$$$$$$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:46', 'Usuario', NULL),
(70, '$$%%$$%%', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario', NULL),
(71, '$%%$$$$$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario', NULL),
(72, '$%%$$%%$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario', NULL),
(73, '$%%%$$%$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario', NULL),
(74, '1234', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:27:58', 'Usuario', NULL),
(75, '01020304', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:29:10', 'Usuario', NULL),
(76, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:30:03', 'Usuario', NULL),
(77, '050505', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:30:06', 'Usuario', NULL),
(78, '7403566', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:30:36', 'Usuario', NULL),
(79, '$%%$$%%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:43:50', 'Usuario', NULL),
(80, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:56:13', 'Usuario', NULL),
(81, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:56:23', 'Usuario', NULL),
(82, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:56:33', 'Usuario', NULL),
(83, '123456', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-16', '12:21:38', 'Usuario', NULL),
(84, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:25:20', 'Usuario', NULL),
(85, '$%%$$$%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:25:51', 'Usuario', NULL),
(87, '$%%$$%%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:26:31', 'Usuario', NULL),
(88, '12345678', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:26:49', 'Usuario', NULL),
(89, '$%%$$%%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:27:41', 'Usuario', NULL),
(90, '$%%$%$$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-16', '12:41:39', 'Chofer', NULL),
(91, '$%%$%$$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-16', '12:41:50', 'Chofer', NULL),
(92, '26561638', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-16', '12:42:13', 'Chofer', NULL),
(93, 'OGA1703', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-02-16', '12:42:29', 'Ruta', NULL),
(94, 'EAP685', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-16', '12:46:38', 'Ruta', NULL),
(95, 'OGA1703', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-16', '12:55:28', 'Mantenimiento', NULL),
(96, '10847565', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-20', '15:47:04', 'Usuario', NULL),
(97, 'KVT47V', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-20', '15:48:07', 'Ruta', NULL),
(98, '12345678', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-20', '16:00:15', 'Usuario', NULL),
(99, '10847565', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '16:38:20', 'Usuario', NULL),
(100, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-02-21', '16:59:25', 'Seguridad Roles', NULL),
(101, '12345678', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '17:00:02', 'Usuario', NULL),
(102, '9601754', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '17:35:30', 'Usuario', NULL),
(103, '$$%$$%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:11:43', 'Chofer', NULL),
(104, '10847107', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-21', '19:14:47', 'Choferes', NULL),
(105, '26561633', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-21', '19:14:48', 'Choferes', NULL),
(106, '26561638', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-21', '19:14:48', 'Choferes', NULL),
(107, '$%%$$$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:15:16', 'Chofer', NULL),
(108, '$%%$%%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:15:47', 'Chofer', NULL),
(109, '$%%$%$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:16:21', 'Chofer', NULL),
(110, '12345678', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:19:54', 'Usuario', NULL),
(111, '17039811', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:19:59', 'Usuario', NULL),
(112, '$%%%$$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:21:55', 'Chofer', NULL),
(113, '$%%$%$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:22:40', 'Chofer', NULL),
(114, '10847565', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario', NULL),
(115, '123456', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario', NULL),
(116, '9601754', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario', NULL),
(117, '9601783', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario', NULL),
(118, '98765432', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario', NULL),
(119, '123456', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:23:55', 'Usuario', NULL),
(120, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:25:17', 'Usuario', NULL),
(121, '34567891', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:26:37', 'Usuario', NULL),
(122, '98765421', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:29:49', 'Usuario', NULL),
(123, '123456', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:32:34', 'Usuario', NULL),
(124, '10847565', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:33:28', 'Usuario', NULL),
(125, '123456', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:33:28', 'Usuario', NULL),
(126, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '19:36:06', 'Usuario', NULL),
(127, '10847565', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:49', 'Usuario', NULL),
(128, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:52', 'Usuario', NULL),
(129, '34567891', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:54', 'Usuario', NULL),
(130, '98765421', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:56', 'Usuario', NULL),
(131, '34567894', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:39:43', 'Usuario', NULL),
(132, '26561789', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:43:58', 'Usuario', NULL),
(133, 'VAS654', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-21', '19:54:16', 'Ruta', NULL),
(134, 'KVT47V', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-21', '19:54:57', 'Ruta', NULL),
(135, 'EAP685', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-21', '19:55:58', 'Ruta', NULL),
(136, '26561789', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '20:32:14', 'Usuario', NULL),
(137, '26561789', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '20:32:16', 'Usuario', NULL),
(138, '26561789', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '20:32:37', 'Usuario', NULL),
(139, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '20:33:18', 'Usuario', NULL),
(140, 'EAP685', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-21', '21:36:10', 'Mantenimiento', NULL),
(141, 'Prueba', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2022-02-23', '14:09:52', 'Tipos', NULL),
(142, '12345670', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-23', '14:20:36', 'Usuario', NULL),
(143, 'VAS654', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:28:50', 'Mantenimiento', NULL),
(144, 'KVT47V', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:29:24', 'Mantenimiento', NULL),
(145, 'YYLA891', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:30:06', 'Mantenimiento', NULL),
(146, 'KOWP145', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:30:34', 'Mantenimiento', NULL),
(147, 'EAP685', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-02-23', '14:31:34', 'Ruta', NULL),
(149, 'VAS654', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-02-23', '14:32:50', 'Ruta', NULL),
(153, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:05:49', 'Chofer', NULL),
(154, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:06:41', 'Chofer', NULL),
(155, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:08:55', 'Chofer', NULL),
(156, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:08:59', 'Chofer', NULL),
(157, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:10:57', 'Chofer', NULL),
(158, 'dfsdfds', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-23', '15:13:56', 'Chofer', NULL),
(159, 'dfsdfds', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:03', 'Chofer', NULL),
(160, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:09', 'Chofer', NULL),
(161, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:16', 'Chofer', NULL),
(162, 'dfsdfds', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:49', 'Chofer', NULL),
(163, 'dfsdfds', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-23', '15:24:04', 'Choferes', NULL),
(164, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:25:43', 'Chofer', NULL),
(165, '26561638', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-23', '15:29:50', 'Chofer', NULL),
(166, '26561638', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-23', '15:33:53', 'Choferes', NULL),
(167, '$$%$$%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-23', '15:34:58', 'Chofer', NULL),
(168, '$$%$$%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:35:08', 'Chofer', NULL),
(169, 'KOWP145', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:37:22', 'Reparaciones', NULL),
(170, 'KVT47V', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:37:40', 'Reparaciones', NULL),
(171, 'VAS654', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:38:28', 'Reparaciones', NULL),
(172, 'YYLA891', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:39:01', 'Reparaciones', NULL),
(175, '01010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '09:29:05', 'Usuario', NULL),
(176, '01010101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '09:33:35', 'Usuario', NULL),
(177, '12345670', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '09:33:39', 'Usuario', NULL),
(178, '010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '09:34:20', 'Usuario', NULL),
(179, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:23', 'Usuario', NULL),
(180, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:35', 'Usuario', NULL),
(181, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:36', 'Usuario', NULL),
(182, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:40', 'Usuario', NULL),
(183, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:42', 'Usuario', NULL),
(184, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:44', 'Usuario', NULL),
(185, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:46', 'Usuario', NULL),
(186, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:48', 'Usuario', NULL),
(187, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:49', 'Usuario', NULL),
(188, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:57', 'Usuario', NULL),
(189, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:40:00', 'Usuario', NULL),
(190, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:58:34', 'Usuario', NULL),
(191, '010101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '09:58:41', 'Usuario', NULL),
(192, '010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '09:59:02', 'Usuario', NULL),
(193, '010101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '10:05:18', 'Usuario', NULL),
(194, '0101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:05:41', 'Usuario', NULL),
(195, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '10:31:25', 'Usuario', NULL),
(196, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '10:33:30', 'Usuario', NULL),
(197, '0101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '10:34:16', 'Usuario', NULL),
(198, '0101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:34:32', 'Usuario', NULL),
(199, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:41:57', 'Usuario', NULL),
(200, '1111', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:55:34', 'Usuario', NULL),
(201, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:01:50', 'Usuario', NULL),
(202, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:02:58', 'Usuario', NULL),
(203, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:00', 'Usuario', NULL),
(204, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:05', 'Usuario', NULL),
(205, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:10', 'Usuario', NULL),
(206, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:24', 'Usuario', NULL),
(207, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:05:35', 'Usuario', NULL),
(208, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:05:39', 'Usuario', NULL),
(209, '1111', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-03-05', '20:06:11', 'Usuario', NULL),
(210, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-03-05', '20:07:07', 'Chofer', NULL),
(211, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:07:19', 'Usuario', NULL),
(212, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:07:22', 'Usuario', NULL),
(213, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:09:32', 'Usuario', NULL),
(214, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '22:20:42', 'Usuario', NULL),
(215, '365874', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-03-05', '22:21:22', 'Usuario', NULL),
(216, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '22:43:23', 'Usuario', NULL),
(217, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-06', '07:27:20', 'Usuario', NULL),
(218, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-03-06', '07:31:07', 'Usuario', NULL),
(219, '34567894', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-03-06', '07:31:11', 'Usuario', NULL),
(220, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '09:55:43', 'Usuario', NULL),
(221, '10847107', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-03-07', '09:56:09', 'Usuario', NULL),
(225, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:40:55', 'Usuario', NULL),
(226, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:41:01', 'Usuario', NULL),
(228, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:43:03', 'Usuario', NULL),
(229, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:43:15', 'Usuario', NULL),
(230, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:01:11', 'Usuario', NULL),
(233, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:05:18', 'Usuario', NULL),
(235, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:11:35', 'Usuario', NULL),
(236, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:12:27', 'Usuario', NULL),
(237, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:15:02', 'Usuario', NULL),
(241, '$%%%$$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-04-07', '19:19:05', 'Chofer', NULL),
(242, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:48:10', 'Usuario', NULL),
(243, '26398477', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:50:38', 'Usuario', NULL),
(244, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:51:04', 'Usuario', NULL),
(245, '26398477', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:51:08', 'Usuario', NULL),
(246, '26398477', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:53:58', 'Usuario', NULL),
(247, '26398477', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:54:53', 'Usuario', NULL),
(248, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:55:15', 'Usuario', NULL),
(249, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:55:22', 'Usuario', NULL),
(250, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:56:54', 'Usuario', NULL),
(251, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:57:20', 'Usuario', NULL),
(252, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:57:46', 'Usuario', NULL),
(253, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:58:04', 'Usuario', NULL),
(254, '95589666', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-12', '01:13:56', 'Usuario', NULL),
(255, '9558962', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-12', '21:19:12', 'Usuario', NULL),
(256, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-12', '21:32:25', 'Usuario', NULL),
(257, '30868382', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:33:08', 'Usuario', NULL),
(258, '10847107', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:36:03', 'Usuario', NULL),
(259, 'prueba', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:40:07', 'Usuario', NULL),
(260, 'prueba2', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:42:40', 'Usuario', NULL),
(261, '12345647', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:45:28', 'Usuario', NULL),
(262, '123456', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:15', 'Usuario', NULL),
(263, '12345647', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario', NULL),
(264, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario', NULL),
(265, 'prueba', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario', NULL),
(266, 'prueba2', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario', NULL),
(267, '10847107', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:22', 'Usuario', NULL),
(268, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:53:25', 'Usuario', NULL),
(269, 'PRUEBA', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:57:34', 'Usuario', NULL),
(270, 'HHHH', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:59:37', 'Usuario', NULL),
(271, 'PRUEBA', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:31', 'Usuario', NULL),
(272, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:38', 'Usuario', NULL),
(273, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:46', 'Usuario', NULL),
(274, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:52', 'Usuario', NULL),
(275, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:03:02', 'Usuario', NULL),
(276, '30868382', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:03:08', 'Usuario', NULL),
(277, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:04:00', 'Usuario', NULL),
(278, '95589666', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:04:07', 'Usuario', NULL),
(279, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-18', '15:55:48', 'Usuario', NULL),
(280, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:11:39', 'Mantenimiento', NULL),
(281, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:11:54', 'Mantenimiento', NULL),
(282, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:12:40', 'Mantenimiento', NULL),
(283, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:12:53', 'Mantenimiento', NULL),
(284, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:13:01', 'Mantenimiento', NULL),
(285, '30868382', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-24', '10:18:09', 'Usuario', NULL),
(286, 'Cambio d', 'root@localhost', 'Se Modifico un campo de la tabla', 'localhost', '2022-04-24', '16:00:23', 'Tipos', NULL),
(287, 'Chequeo', 'root@localhost', 'Se Modifico un campo de la tabla', 'localhost', '2022-04-24', '16:00:30', 'Tipos', NULL),
(288, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-24', '16:41:55', 'Mantenimiento', NULL),
(289, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-24', '16:42:04', 'Mantenimiento', NULL),
(290, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-24', '16:42:11', 'Mantenimiento', NULL),
(291, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:10:11', 'Reparacion', NULL),
(292, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:10:18', 'Reparacion', NULL),
(293, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:11:54', 'Reparacion', NULL),
(294, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:12:01', 'Reparacion', NULL),
(295, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:12:09', 'Reparacion', NULL),
(296, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-04-24', '18:18:49', 'Seguridad Roles', NULL),
(297, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-04-24', '18:18:56', 'Seguridad Roles', NULL),
(298, '3', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-04-24', '18:19:03', 'Seguridad Roles', NULL),
(299, '26561631', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-29', '16:06:10', 'Usuario', NULL),
(300, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-29', '16:06:43', 'Usuario', NULL),
(301, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-01', '17:25:41', 'Usuario', NULL),
(302, '95589666', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-02', '10:09:45', 'Usuario', NULL),
(303, '26561631', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:22:03', 'Usuario', NULL),
(304, '26561631', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:22:11', 'Usuario', NULL),
(305, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:43:54', 'Usuario', NULL),
(306, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:59:45', 'Usuario', NULL),
(307, '28946711', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-05', '11:46:38', 'Usuario', NULL),
(308, '95589666', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-05', '17:46:44', 'Usuario', NULL),
(309, '95589666', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-05', '17:47:16', 'Usuario', NULL),
(310, '3333385', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-05', '17:48:59', 'Usuario', NULL),
(311, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-05', '18:39:10', 'Usuario', NULL),
(312, '$$%$$%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-06', '15:22:36', 'Chofer', NULL),
(313, '$$%$$%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-06', '15:22:43', 'Chofer', NULL),
(314, '$%%%$$$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-06', '15:22:50', 'Chofer', NULL),
(315, '$%%$%$%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:09:46', 'Choferes', NULL),
(316, '$%%%$$$$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:11:29', 'Choferes', NULL),
(317, '$%%%$$$$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:11:47', 'Choferes', NULL),
(318, '$$%$$%%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:25', 'Choferes', NULL),
(319, '$%%$$$%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:25', 'Choferes', NULL),
(320, '$%%$%%%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:25', 'Choferes', NULL),
(321, '$%%$%$%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:26', 'Choferes', NULL),
(322, '$$%$$%%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:26', 'Choferes', NULL),
(323, '29398488', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-20', '09:19:23', 'Chofer', NULL),
(324, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:41', 'Usuario', NULL),
(325, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:45', 'Usuario', NULL),
(326, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:51', 'Usuario', NULL),
(327, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:54', 'Usuario', NULL),
(328, '898PAJ4', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '13:13:52', 'Ruta', NULL),
(329, '898PAJ4', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:14:14', 'Ruta', NULL),
(330, '898PAJ4', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '13:15:07', 'Ruta', NULL),
(331, 'KVT47V', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:27', 'Ruta', NULL),
(332, 'EAP685', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:29', 'Ruta', NULL),
(333, 'KVT47V', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:31', 'Ruta', NULL),
(334, 'VAS654', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:33', 'Ruta', NULL),
(335, 'EAP685', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:34', 'Ruta', NULL),
(336, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '13:15:37', 'Ruta', NULL),
(337, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:08:07', 'Chofer', NULL),
(338, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:08:24', 'Chofer', NULL),
(339, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:08:34', 'Chofer', NULL),
(340, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:13:25', 'Chofer', NULL),
(341, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:28', 'Chofer', NULL),
(342, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:31', 'Chofer', NULL),
(343, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:40', 'Chofer', NULL),
(344, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:42', 'Chofer', NULL),
(345, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:44', 'Chofer', NULL),
(346, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:45', 'Chofer', NULL),
(347, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:16:12', 'Chofer', NULL),
(348, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:16:15', 'Chofer', NULL),
(349, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:16:53', 'Chofer', NULL),
(350, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:17:30', 'Chofer', NULL),
(351, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:17:41', 'Chofer', NULL),
(352, 'SANTI03', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '22:46:28', 'Ruta', NULL),
(353, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:55:01', 'Chofer', NULL),
(354, '27290770', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-20', '22:58:55', 'Chofer', NULL),
(359, '27290770', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:04:35', 'Chofer', NULL),
(360, 'ROA126', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '23:12:17', 'Ruta', NULL),
(361, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:20:45', 'Ruta', NULL),
(362, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:20:52', 'Ruta', NULL),
(363, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:26:36', 'Ruta', NULL),
(364, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:26:52', 'Ruta', NULL),
(365, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:26:55', 'Ruta', NULL),
(366, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:27:16', 'Ruta', NULL),
(367, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:27:24', 'Ruta', NULL),
(368, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:28:15', 'Chofer', NULL),
(369, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:28:17', 'Chofer', NULL),
(370, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:28:24', 'Chofer', NULL),
(371, '20080946', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-20', '23:28:57', 'Chofer', NULL),
(372, 'GAP173', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '23:29:17', 'Ruta', NULL),
(373, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-21', '14:07:02', 'Usuario', NULL),
(374, 'SANTI03', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-05-21', '19:50:31', 'Mantenimiento', NULL),
(375, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:18', 'Mantenimiento', NULL),
(376, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:20', 'Mantenimiento', NULL),
(377, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:22', 'Mantenimiento', NULL),
(378, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:23', 'Mantenimiento', NULL),
(379, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:24', 'Mantenimiento', NULL),
(380, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:25', 'Mantenimiento', NULL),
(381, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:26', 'Mantenimiento', NULL),
(382, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:27', 'Mantenimiento', NULL),
(383, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:45', 'Mantenimiento', NULL),
(384, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:51', 'Mantenimiento', NULL),
(385, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:54', 'Mantenimiento', NULL),
(386, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:56', 'Mantenimiento', NULL),
(387, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:59', 'Mantenimiento', NULL),
(388, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:18:02', 'Mantenimiento', NULL),
(389, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:18:05', 'Mantenimiento', NULL),
(390, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:18:08', 'Mantenimiento', NULL),
(391, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:41:13', 'Mantenimiento', NULL),
(392, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:41:22', 'Mantenimiento', NULL),
(393, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:46:29', 'Mantenimiento', NULL),
(394, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:46:46', 'Mantenimiento', NULL),
(395, 'OGA1703', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-05-21', '21:53:09', 'Reparaciones', NULL),
(396, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:04:56', 'Reparacion', NULL),
(397, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:05:03', 'Reparacion', NULL),
(398, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:05:37', 'Reparacion', NULL),
(399, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:06:12', 'Reparacion', NULL),
(400, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:06:15', 'Reparacion', NULL),
(401, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:06:18', 'Reparacion', NULL),
(402, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-21', '22:06:33', 'Chofer', NULL),
(403, '27290770', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-21', '22:06:39', 'Chofer', NULL),
(404, '9243485', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-21', '22:07:06', 'Chofer', NULL),
(405, '9243485', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-21', '22:07:13', 'Chofer', NULL),
(406, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-21', '22:07:32', 'Ruta', NULL),
(407, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-21', '22:07:36', 'Ruta', NULL),
(408, 'ORIANA12', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-21', '22:07:59', 'Ruta', NULL),
(409, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:15:57', 'Reparacion', NULL),
(410, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:15:58', 'Reparacion', NULL),
(411, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:16:00', 'Reparacion', NULL),
(412, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:16:01', 'Reparacion', NULL),
(413, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:16:02', 'Reparacion', NULL),
(414, '29398488', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:13', 'Choferes', NULL),
(415, '27290770', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:15', 'Choferes', NULL),
(416, '9243485', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:16', 'Choferes', NULL),
(417, '20080946', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:17', 'Choferes', NULL),
(418, 'ROA126', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-21', '22:16:26', 'Ruta', NULL),
(419, 'SANTI03', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-21', '22:16:29', 'Ruta', NULL),
(420, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '12:07:39', 'Mantenimiento', NULL),
(421, 'ORIANA12', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-05-22', '12:09:06', 'Mantenimiento', NULL),
(422, '26561633', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-22', '12:14:49', 'Chofer', NULL),
(423, '95589666', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-22', '12:15:02', 'Chofer', NULL),
(424, '30', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-22', '12:15:42', 'Chofer', NULL),
(425, '30', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-22', '12:16:04', 'Chofer', NULL),
(426, 'YYLA891', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-22', '12:16:45', 'Ruta', NULL),
(427, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '12:27:14', 'Reparacion', NULL),
(428, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '12:33:39', 'Reparacion', NULL),
(429, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '12:40:07', 'Reparacion', NULL);
INSERT INTO `bitacora` (`id_bitacora`, `cedula`, `usuario`, `operacion`, `host`, `fecha`, `hora`, `tabla`, `status`) VALUES
(430, 'OGA1703', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-05-22', '12:48:45', 'Reparaciones', NULL),
(431, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:09:32', 'Reparacion', NULL),
(432, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:10:15', 'Reparacion', NULL),
(433, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:10:46', 'Reparacion', NULL),
(434, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:11:17', 'Reparacion', NULL),
(435, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:11:53', 'Reparacion', NULL),
(436, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:13:39', 'Reparacion', NULL),
(437, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:13:59', 'Reparacion', NULL),
(438, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:14:48', 'Reparacion', NULL),
(439, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:20:25', 'Reparacion', NULL),
(440, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:22:26', 'Reparacion', NULL),
(441, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:22:39', 'Reparacion', NULL),
(442, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:24:45', 'Reparacion', NULL),
(443, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:25:52', 'Reparacion', NULL),
(444, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:26:33', 'Reparacion', NULL),
(445, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:28:05', 'Reparacion', NULL),
(446, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:28:52', 'Reparacion', NULL),
(447, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:29:08', 'Reparacion', NULL),
(448, 'ROA126', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-05-22', '13:32:50', 'Mantenimiento', NULL),
(449, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:36:19', 'Mantenimiento', NULL),
(450, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:38:36', 'Mantenimiento', NULL),
(451, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:38:57', 'Mantenimiento', NULL),
(452, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:40:11', 'Mantenimiento', NULL),
(453, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:41:15', 'Mantenimiento', NULL),
(454, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:49:32', 'Mantenimiento', NULL),
(455, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:50:00', 'Mantenimiento', NULL),
(456, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:50:26', 'Mantenimiento', NULL),
(457, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:51:26', 'Mantenimiento', NULL),
(458, 'ROA126', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:52:11', 'Mantenimiento', NULL),
(459, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:53:56', 'Reparacion', NULL),
(460, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '14:11:00', 'Mantenimiento', NULL),
(461, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '14:11:22', 'Mantenimiento', NULL),
(462, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '14:31:14', 'Reparacion', NULL),
(463, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '14:32:08', 'Reparacion', NULL),
(464, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '14:55:36', 'Reparacion', NULL),
(465, 'OGA1703', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:00:14', 'Reparaciones', NULL),
(466, 'KVT47V', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:02:35', 'Reparaciones', NULL),
(467, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '15:03:38', 'Reparacion', NULL),
(468, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '15:04:41', 'Reparacion', NULL),
(469, 'VAS654', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:05:37', 'Reparaciones', NULL),
(470, 'KVT47V', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:06:01', 'Reparaciones', NULL),
(471, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '15:06:43', 'Reparacion', NULL),
(472, '4', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles', NULL),
(473, '1', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles', NULL),
(474, '2', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles', NULL),
(475, '3', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles', NULL),
(476, '95589666', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario', NULL),
(477, '9558962', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario', NULL),
(478, '30868382', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario', NULL),
(479, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario', NULL),
(480, 'PRUEBA', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(481, 'HHHH', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(482, '26561631', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(483, '95589666', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(484, '28946711', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(485, '95589666', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(486, '3333385', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario', NULL),
(487, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:18:16', 'Usuario', NULL),
(488, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:18:39', 'Usuario', NULL),
(489, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:19:03', 'Usuario', NULL),
(490, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:19:32', 'Usuario', NULL),
(491, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-29', '14:02:10', 'Mantenimiento', NULL),
(495, '1', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '09:53:08', ' Seguridad Roles', NULL),
(496, '2', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '09:53:08', ' Seguridad Roles', NULL),
(498, '26577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:04:25', 'Usuario', NULL),
(499, '365874', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:04:25', 'Usuario', NULL),
(500, '10847107', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:04:26', 'Usuario', NULL),
(501, '0101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:05:23', 'Usuario', NULL),
(502, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:05:23', 'Usuario', NULL),
(503, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '10:07:09', 'Usuario', NULL),
(504, '9601788', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '10:25:01', 'Usuario', NULL),
(505, '12345678', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '10:25:42', 'Usuario', NULL),
(506, '1', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-06-01', '10:27:59', 'Seguridad Roles', NULL),
(507, '2', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-06-01', '10:27:59', 'Seguridad Roles', NULL),
(508, '1', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:35:46', ' Seguridad Roles', NULL),
(509, '2', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:35:46', ' Seguridad Roles', NULL),
(510, '3', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:36:35', ' Seguridad Roles', NULL),
(511, '4', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:36:35', ' Seguridad Roles', NULL),
(512, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '11:17:47', 'Usuario', NULL),
(513, '010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '11:18:46', 'Usuario', NULL),
(516, 'KVT47V', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-01', '16:12:18', 'Ruta', NULL),
(517, 'KVT47V', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-01', '16:15:06', 'Ruta', NULL),
(518, 'ROA126', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-01', '16:19:07', 'Ruta', NULL),
(519, 'ROA126', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-01', '16:21:41', 'Ruta', NULL),
(520, 'ROA126', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-01', '16:21:43', 'Ruta', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `id_choferes` int(11) NOT NULL,
  `placa` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apellido` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `cedula` varchar(100) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `choferes`
--

INSERT INTO `choferes` (`id_choferes`, `placa`, `nombre`, `apellido`, `cedula`, `telefono`, `status`) VALUES
(1, 'EAP685', 'Oriana', 'Armas', '26561633', '04160360067', 1),
(2, 'GAP173', 'ERWIN ELIAS', 'ARMAS GONZALEZ', '95589666', '04160360067', 1),
(3, '898PAJ4', 'Elias', 'GOGOGOGOGOG', '308386512', '0412788593', 1);

--
-- Disparadores `choferes`
--
DELIMITER $$
CREATE TRIGGER `after_chofer_update` BEFORE UPDATE ON `choferes` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.cedula,'Chofer', 'Se Modificaron los datos de un chofer')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_chofer_insertar` AFTER INSERT ON `choferes` FOR EACH ROW INSERT INTO bitacora (host, usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),NEW.cedula, 'Chofer', 'Se inserto un nuevo chofer')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `choferes_delete` AFTER DELETE ON `choferes` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.cedula,'Choferes', 'Se elimino un Chofer del registro')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id_mantenimiento` int(11) NOT NULL,
  `nombre_tipo` varchar(30) COLLATE utf8_bin NOT NULL,
  `tiempo` varchar(20) COLLATE utf8_bin NOT NULL,
  `placa` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `costo` varchar(30) COLLATE utf8_bin NOT NULL,
  `fecha` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `rif` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id_mantenimiento`, `nombre_tipo`, `tiempo`, `placa`, `nombre`, `costo`, `fecha`, `status`, `rif`) VALUES
(1, 'Cambio de aceite', '1', 'OGA1703', '3 kilometros', '10.0', '2021-09-03', 0, 'E-12348369'),
(2, 'Chequeo', '3', 'EAP685', 'Mcqueen', '30.0', '2021-10-02', 1, 'E-12348369'),
(4, 'Frenos', '1', 'OGA1703', 'Liga de frenos', '15.0', '2022-02-15', 1, 'E-12348369'),
(5, 'Cambio de aceite', '1', 'EAP685', 'Amortiguador', '30.0', '2022-02-21', 1, 'E-9601788 '),
(6, 'Cambio de cauchos', '3', 'VAS654', 'Cauchos', '90.0', '2021-02-23', 0, 'E-12348369'),
(7, 'Chequeo', '3', 'KVT47V', 'Revision completa', '135.0', '2022-02-15', 1, 'E-12348369'),
(8, 'Preventivo', '2', 'YYLA891', 'Fernandez ', '150.0', '2020-01-01', 1, 'J-78455133'),
(9, 'Cambio de aceite', '1', 'KOWP145', 'Mcqueen', '60.0', '2022-03-23', 0, 'J-30868368'),
(10, 'Bujias', '2', 'SANTI03', 'Mantenimiento Bujias', '15.50', '2022-03-21', 1, 'E-12348369'),
(11, 'Cambio de pieza', '3', 'ORIANA123', 'Electroventilador', '9000', '2022-12-15', 1, 'J-26561633'),
(12, 'Liga de frenos', '5', 'ROA126', 'Frenos', '9000', '2022-05-12', 1, 'J-30868368');

--
-- Disparadores `mantenimientos`
--
DELIMITER $$
CREATE TRIGGER `after_mantenimientos_update` BEFORE UPDATE ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.placa,'Mantenimiento', 'Se modifico un mantenimiento')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_mantenimientos_insertar` AFTER INSERT ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.placa, NOW(), NOW(),'Mantenimiento', 'Se inserto un nuevo mantenimiento')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mantenimientos_delete` AFTER DELETE ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.placa,'Mantenimientos', 'Se elimino un mantenimiento asociado a la placa señalada')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `creado` date NOT NULL DEFAULT current_timestamp(),
  `modificado` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `nombre`, `status`, `creado`, `modificado`) VALUES
(1, 'usuarios', 1, '2022-06-01', '2022-06-01'),
(2, 'registrar usuario', 1, '2022-06-01', '2022-06-01'),
(3, 'editar usuario', 1, '2022-06-01', '2022-06-01'),
(4, 'eliminar usuario', 1, '2022-06-01', '2022-06-01'),
(5, 'vehiculos', 1, '2022-06-01', '2022-06-01'),
(6, 'registrar vehiculo', 1, '2022-06-01', '2022-06-01'),
(7, 'eliminar vehiculo', 1, '2022-06-01', '2022-06-01'),
(8, 'editar vehiculo', 1, '2022-06-01', '2022-06-01'),
(9, 'chofer', 1, '2022-06-01', '2022-06-01'),
(10, 'registrar chofer', 1, '2022-06-01', '2022-06-01'),
(11, 'editar chofer', 1, '2022-06-01', '2022-06-01'),
(12, 'eliminar chofer', 1, '2022-06-01', '2022-06-01'),
(13, 'ruta', 1, '2022-06-01', '2022-06-01'),
(14, 'registrar ruta', 1, '2022-06-01', '2022-06-01'),
(15, 'editar ruta', 1, '2022-06-01', '2022-06-01'),
(16, 'eliminar ruta', 1, '2022-06-01', '2022-06-01'),
(18, 'taller', 1, '2022-06-01', '2022-06-01'),
(19, 'registrar taller', 1, '2022-06-01', '2022-06-01'),
(20, 'eliminar taller', 1, '2022-06-01', '2022-06-01'),
(21, 'editar taller', 1, '2022-06-01', '2022-06-01'),
(22, 'mantenimiento', 1, '2022-06-01', '2022-06-01'),
(23, 'registrar mantenimiento', 1, '2022-06-01', '2022-06-01'),
(24, 'editar mantenimiento', 1, '2022-06-01', '2022-06-01'),
(25, 'eliminar mantenimiento', 1, '2022-06-01', '2022-06-01'),
(26, 'seguridad', 1, '2022-06-01', '2022-06-01'),
(27, 'editar seguridad', 1, '2022-06-01', '2022-06-01'),
(28, 'registrar seguridad', 1, '2022-06-01', '2022-06-01'),
(29, 'eliminar seguridad', 1, '2022-06-01', '2022-06-01'),
(30, 'reportes', 1, '2022-06-01', '2022-06-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones`
--

CREATE TABLE `reparaciones` (
  `id_reparaciones` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `placa` varchar(100) COLLATE utf8_bin NOT NULL,
  `costo` varchar(30) COLLATE utf8_bin NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `rif` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `reparaciones`
--

INSERT INTO `reparaciones` (`id_reparaciones`, `nombre`, `placa`, `costo`, `fecha`, `descripcion`, `status`, `rif`) VALUES
(1, 'Cauchos', 'OGA1703', '1245', '2021-09-03', 'Revision completa', 1, 'E-9601788 '),
(2, 'Cambio de aceite', 'KOWP145', '15.00', '2020-02-15', 'Revision completa', 1, 'E-12348369'),
(5, 'Balanceo', 'YYLA891', '1515', '2019-02-17', 'Tren delantero', 0, 'J-30868368');

--
-- Disparadores `reparaciones`
--
DELIMITER $$
CREATE TRIGGER `after_reparaciones_update` BEFORE UPDATE ON `reparaciones` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.placa,'Reparacion', 'Se modifico una reparacion')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_reparacion_insertar` AFTER INSERT ON `reparaciones` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.placa, NOW(), NOW(),'Reparaciones', 'Se registro una nueva reparacion')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reparacion_delete` AFTER DELETE ON `reparaciones` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.placa,'Reparaciones', 'Se elimino una reparacion')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(15) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Es el superusuario de este sistema.', 1),
(2, 'Secretaria', 'permiso para ver y editar menos la seguridad, incluye usuari', 1),
(3, 'UsuarioEstandar', 'Solo puede consultar', 1),
(4, 'Chofer', 'solo consulta rutas', 1);

--
-- Disparadores `roles`
--
DELIMITER $$
CREATE TRIGGER `bitacora_roles_delete` AFTER DELETE ON `roles` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_rol,'Seguridad Roles', 'Se elimino un rol')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_roles_insertar` AFTER INSERT ON `roles` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),NEW.id_rol,' Seguridad Roles', 'Se creo un nuevo rol')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_roles_update` BEFORE UPDATE ON `roles` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),NEW.id_rol,'Seguridad Roles', 'Se modifico un rol')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permisos`
--

CREATE TABLE `roles_permisos` (
  `rol_id` int(11) NOT NULL,
  `permisos_id` int(11) NOT NULL,
  `creado` date NOT NULL DEFAULT current_timestamp(),
  `modificado` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `roles_permisos`
--

INSERT INTO `roles_permisos` (`rol_id`, `permisos_id`, `creado`, `modificado`) VALUES
(1, 1, '0000-00-00', '0000-00-00'),
(1, 4, '0000-00-00', '0000-00-00'),
(1, 3, '0000-00-00', '0000-00-00'),
(1, 4, '0000-00-00', '0000-00-00'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 9, '2022-06-01', '2022-06-01'),
(3, 13, '2022-06-01', '2022-06-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id_ruta` int(11) NOT NULL,
  `placa` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre_ruta` varchar(50) COLLATE utf8_bin NOT NULL,
  `direccion_ruta` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `kilometraje` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id_ruta`, `placa`, `nombre_ruta`, `direccion_ruta`, `hora_salida`, `kilometraje`, `status`) VALUES
(7, '898PAJ4', 'Barrio Union', 'calle 4 con 6 hasta la macias', '13:15:00', 0, 1),
(10, 'GAP173', 'Corrido Rapido', 'Centro', '23:29:00', 0, 0),
(12, 'YYLA891', 'UPTAEB', 'av la salle con corpahuaico', '12:15:00', 0, 1),
(1, 'KOWP145', 'ZonaNorte', 'Zona norte, Yucatan', '12:30:00', 0, 1),
(13, 'KVT47V', 'el espanto', 'calle 13 con carrera 43', '01:15:00', 300, 1),
(14, 'ROA126', 'hno juan', 'av la salle con corpahuaico', '16:19:00', 0, 1),
(11, 'ORIANA123', 'no se que mas', 'Oeste centro', '22:07:00', 0, 1);

--
-- Disparadores `rutas`
--
DELIMITER $$
CREATE TRIGGER `after_ruta_update` BEFORE UPDATE ON `rutas` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.placa,'Ruta', 'Se Modifico una ruta')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_ruta_insertar` AFTER INSERT ON `rutas` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.placa, NOW(), NOW(),'Ruta', 'Se inserto una nueva ruta')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rutas_delete` AFTER DELETE ON `rutas` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.placa,'Ruta', 'Se elimino una ruta')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id_taller` int(11) NOT NULL,
  `rif` varchar(10) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `informacion_contacto` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `taller`
--

INSERT INTO `taller` (`id_taller`, `rif`, `nombre`, `direccion`, `informacion_contacto`, `status`) VALUES
(1, 'E-9601788 ', 'Mcqueen', 'Libertador con 37', '02514423626', 1),
(2, 'J-26561633', 'ORI', 'MACIAS', '04145448669', 1),
(3, 'E-12348369', 'Michellin', 'calle  42', '02512344589', 1),
(4, 'J-17031998', 'Fernandez ', '60 con 13', '025144778869', 1),
(6, 'J-30868368', 'Kiara', 'SantaIsabel', '02517786942', 1),
(7, 'J-78455133', 'La Ingra', 'El araguaney', '04148756312', 1),
(8, 'V-26561633', 'Las Shakiras', 'barrio Union', '04145448669', 0),
(9, 'J-59745526', 'Twigns', 'Macias Mujica', '041454487922', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipos` int(11) NOT NULL,
  `nombre_tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `tiempo` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipos`, `nombre_tipo`, `descripcion`, `tiempo`, `status`) VALUES
(2, 'Cambio de aceite', 'renovacion ', '1', 1),
(5, 'Cauchos', 'Revision completa', '3', 0),
(3, 'Chequeo', 'Se revisaron los cauchos', '3', 1),
(4, 'Frenos', 'Cambio de liga de freno', '1', 0),
(1, 'Preventivo', 'Revision completa', '2', 0),
(6, 'Prueba', 'Revision completa', '3', 0);

--
-- Disparadores `tipos`
--
DELIMITER $$
CREATE TRIGGER `after_tipos_update` BEFORE UPDATE ON `tipos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.nombre_tipo,'Tipos', 'Se Modifico un campo de la tabla')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_tipos_insertar` AFTER INSERT ON `tipos` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.nombre_tipo, NOW(), NOW(),'Tipos', 'Se registro un dato en la tabla tipos ')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tipos_delete` AFTER DELETE ON `tipos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.nombre_tipo,'Tipo', 'Se elimino un registro de tipos de mantenimiento')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `cedula` varchar(100) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(15) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(20) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `rol` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `correo` varchar(30) COLLATE utf8_bin NOT NULL,
  `fechaRecuperacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `usuario`, `nombre`, `apellido`, `contrasena`, `rol`, `status`, `correo`, `fechaRecuperacion`) VALUES
(1, '26561633', 'admin', 'Oriana ', 'Armas', '1234', 1, 1, 'armasoriana98', '2022-06-01 15:17:47'),
(2, '010101', 'usuario', 'usuario', 'usuario', 'usuario', 3, 1, 'usuario@gmail.com', '2022-06-01 15:18:46');

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `after_usuarios_update` BEFORE UPDATE ON `usuarios` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.cedula,'Usuario', 'Se Modifico un campo de esta tabla')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_usuario_insertar` AFTER INSERT ON `usuarios` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),NEW.cedula,'Usuario', 'Se inserto un nuevo usuario')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `usuarios_delete` AFTER DELETE ON `usuarios` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.cedula,'Usuario', 'Se elimino un usuario')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `placa` varchar(100) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `funcionamiento` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `nombre_tipo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `id_mantenimiento` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `modelo`, `funcionamiento`, `nombre_tipo`, `id_mantenimiento`, `status`) VALUES
(1, 'OGA1703', 'Encava', 'Operativo', NULL, NULL, 1),
(6, 'EAP685', 'Dodge', 'Operativo', NULL, NULL, 1),
(7, 'KVT47V', 'BEDFORD', 'Operativo', NULL, NULL, 1),
(8, '898PAJ4', 'Dodge', 'Operativo', NULL, NULL, 1),
(9, 'VAS654', 'Caio', 'Inoperante', NULL, NULL, 1),
(10, 'KOWP145', 'Encava', 'Operativo', NULL, NULL, 0),
(11, 'YYLA891', 'Kia', 'Operativo', NULL, NULL, 1),
(12, 'GAP173', 'BEDFORD', 'Operativo', NULL, NULL, 1),
(13, 'ORIANA123', 'Encava', '1', NULL, NULL, 1),
(14, 'SANTI03', 'Kia', 'Operativo', NULL, NULL, 1),
(15, 'ROA126', 'BEDFORD', 'Operativo', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`id_choferes`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `placa` (`placa`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id_mantenimiento`),
  ADD KEY `fk_nombre_tipo` (`nombre_tipo`),
  ADD KEY `placa` (`placa`),
  ADD KEY `fk_rif_nombre` (`rif`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`id_reparaciones`),
  ADD UNIQUE KEY `rif` (`rif`),
  ADD KEY `placa` (`placa`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD KEY `fk_rol_idd` (`rol_id`),
  ADD KEY `fk_permiso_id` (`permisos_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`nombre_ruta`),
  ADD KEY `placa` (`placa`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id_taller`),
  ADD UNIQUE KEY `rif` (`rif`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`nombre_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD KEY `fk_rol_id` (`rol`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `placa` (`placa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id_choferes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `id_reparaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD CONSTRAINT `fk_placa` FOREIGN KEY (`placa`) REFERENCES `vehiculos` (`placa`);

--
-- Filtros para la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD CONSTRAINT `fk_rif_nombre` FOREIGN KEY (`rif`) REFERENCES `taller` (`rif`);

--
-- Filtros para la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD CONSTRAINT `fk_rif_taller` FOREIGN KEY (`rif`) REFERENCES `taller` (`rif`);

--
-- Filtros para la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD CONSTRAINT `fk_permiso_id` FOREIGN KEY (`permisos_id`) REFERENCES `permisos` (`id_permisos`),
  ADD CONSTRAINT `fk_rol_idd` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_rol_id` FOREIGN KEY (`rol`) REFERENCES `roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
