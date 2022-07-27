-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2022 a las 01:35:22
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
  `tabla` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `cedula`, `usuario`, `operacion`, `host`, `fecha`, `hora`, `tabla`) VALUES
(26, 'GAP173', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2021-12-03', '11:04:03', 'Mantenimiento'),
(27, 'PFS982', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2021-12-03', '11:04:36', 'Mantenimiento'),
(28, 'XAM368', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2021-12-03', '11:05:14', 'Mantenimiento'),
(29, 'Cauchos', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2021-12-03', '11:05:36', 'Tipos'),
(30, 'GAP173', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2021-12-03', '11:06:05', 'Reparaciones'),
(31, '01020304', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-16', '14:16:12', 'Chofer'),
(32, '$%%$$%$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-16', '14:18:37', 'Chofer'),
(33, '$%%$$%$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2021-12-16', '14:19:07', 'Chofer'),
(34, '030201', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-17', '09:42:05', 'Chofer'),
(35, '030201', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:09:33', 'Choferes'),
(36, '$%%$$%$$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:09:40', 'Choferes'),
(37, '$%%$$$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-17', '10:18:55', 'Chofer'),
(38, '01020304', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(39, '11456268', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(40, '123456', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(41, '26779425', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(42, '27889456', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(43, '95589666', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(44, '9601788', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2021-12-17', '10:37:50', 'Choferes'),
(48, '01020304', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-17', '11:42:23', 'Usuario'),
(49, '$%%$%$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-20', '10:11:31', 'Chofer'),
(50, '050505', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-21', '19:43:57', 'Usuario'),
(51, '$%%$$%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-22', '10:38:48', 'Chofer'),
(52, '$%%$%$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-22', '10:39:40', 'Chofer'),
(53, '$%%$$$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2021-12-22', '12:29:12', 'Chofer'),
(54, '$%%$$$$$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-29', '19:07:15', 'Usuario'),
(55, '$%%%$$%$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2021-12-29', '19:10:20', 'Usuario'),
(56, '$%%$$%%$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '19:54:40', 'Usuario'),
(57, '$$%%$$%%', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:03:18', 'Usuario'),
(58, '$$$$$$$$', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:03:39', 'Usuario'),
(59, '01020304', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario'),
(60, '050505', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario'),
(61, '1234', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario'),
(62, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario'),
(63, '7403566', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:19:30', 'Usuario'),
(64, '01020304', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario'),
(65, '050505', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario'),
(66, '1234', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario'),
(67, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario'),
(68, '7403566', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-01-04', '20:21:19', 'Usuario'),
(69, '$$$$$$$$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:46', 'Usuario'),
(70, '$$%%$$%%', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario'),
(71, '$%%$$$$$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario'),
(72, '$%%$$%%$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario'),
(73, '$%%%$$%$', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:22:47', 'Usuario'),
(74, '1234', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:27:58', 'Usuario'),
(75, '01020304', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:29:10', 'Usuario'),
(76, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:30:03', 'Usuario'),
(77, '050505', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-01-04', '20:30:06', 'Usuario'),
(78, '7403566', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-04', '20:30:36', 'Usuario'),
(79, '$%%$$%%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:43:50', 'Usuario'),
(80, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:56:13', 'Usuario'),
(81, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:56:23', 'Usuario'),
(82, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-01-05', '08:56:33', 'Usuario'),
(83, '123456', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-16', '12:21:38', 'Usuario'),
(84, '$%%$$$$$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:25:20', 'Usuario'),
(85, '$%%$$$%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:25:51', 'Usuario'),
(87, '$%%$$%%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:26:31', 'Usuario'),
(88, '12345678', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:26:49', 'Usuario'),
(89, '$%%$$%%$', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-16', '12:27:41', 'Usuario'),
(90, '$%%$%$$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-16', '12:41:39', 'Chofer'),
(91, '$%%$%$$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-16', '12:41:50', 'Chofer'),
(92, '26561638', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-16', '12:42:13', 'Chofer'),
(93, 'OGA1703', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-02-16', '12:42:29', 'Ruta'),
(94, 'EAP685', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-16', '12:46:38', 'Ruta'),
(95, 'OGA1703', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-16', '12:55:28', 'Mantenimiento'),
(96, '10847565', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-20', '15:47:04', 'Usuario'),
(97, 'KVT47V', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-20', '15:48:07', 'Ruta'),
(98, '12345678', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-20', '16:00:15', 'Usuario'),
(99, '10847565', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '16:38:20', 'Usuario'),
(100, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-02-21', '16:59:25', 'Seguridad Roles'),
(101, '12345678', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '17:00:02', 'Usuario'),
(102, '9601754', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '17:35:30', 'Usuario'),
(103, '$$%$$%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:11:43', 'Chofer'),
(104, '10847107', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-21', '19:14:47', 'Choferes'),
(105, '26561633', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-21', '19:14:48', 'Choferes'),
(106, '26561638', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-21', '19:14:48', 'Choferes'),
(107, '$%%$$$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:15:16', 'Chofer'),
(108, '$%%$%%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:15:47', 'Chofer'),
(109, '$%%$%$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:16:21', 'Chofer'),
(110, '12345678', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:19:54', 'Usuario'),
(111, '17039811', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:19:59', 'Usuario'),
(112, '$%%%$$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:21:55', 'Chofer'),
(113, '$%%$%$%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-21', '19:22:40', 'Chofer'),
(114, '10847565', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario'),
(115, '123456', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario'),
(116, '9601754', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario'),
(117, '9601783', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario'),
(118, '98765432', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:23:09', 'Usuario'),
(119, '123456', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:23:55', 'Usuario'),
(120, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:25:17', 'Usuario'),
(121, '34567891', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:26:37', 'Usuario'),
(122, '98765421', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:29:49', 'Usuario'),
(123, '123456', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:32:34', 'Usuario'),
(124, '10847565', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:33:28', 'Usuario'),
(125, '123456', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:33:28', 'Usuario'),
(126, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '19:36:06', 'Usuario'),
(127, '10847565', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:49', 'Usuario'),
(128, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:52', 'Usuario'),
(129, '34567891', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:54', 'Usuario'),
(130, '98765421', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '19:36:56', 'Usuario'),
(131, '34567894', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:39:43', 'Usuario'),
(132, '26561789', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '19:43:58', 'Usuario'),
(133, 'VAS654', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-21', '19:54:16', 'Ruta'),
(134, 'KVT47V', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-21', '19:54:57', 'Ruta'),
(135, 'EAP685', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-02-21', '19:55:58', 'Ruta'),
(136, '26561789', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '20:32:14', 'Usuario'),
(137, '26561789', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-21', '20:32:16', 'Usuario'),
(138, '26561789', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-21', '20:32:37', 'Usuario'),
(139, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-21', '20:33:18', 'Usuario'),
(140, 'EAP685', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-21', '21:36:10', 'Mantenimiento'),
(141, 'Prueba', 'root@localhost', 'Se registro un dato en la tabla tipos ', 'localhost', '2022-02-23', '14:09:52', 'Tipos'),
(142, '12345670', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-23', '14:20:36', 'Usuario'),
(143, 'VAS654', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:28:50', 'Mantenimiento'),
(144, 'KVT47V', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:29:24', 'Mantenimiento'),
(145, 'YYLA891', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:30:06', 'Mantenimiento'),
(146, 'KOWP145', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-02-23', '14:30:34', 'Mantenimiento'),
(147, 'EAP685', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-02-23', '14:31:34', 'Ruta'),
(149, 'VAS654', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-02-23', '14:32:50', 'Ruta'),
(153, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:05:49', 'Chofer'),
(154, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:06:41', 'Chofer'),
(155, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:08:55', 'Chofer'),
(156, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:08:59', 'Chofer'),
(157, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:10:57', 'Chofer'),
(158, 'dfsdfds', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-23', '15:13:56', 'Chofer'),
(159, 'dfsdfds', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:03', 'Chofer'),
(160, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:09', 'Chofer'),
(161, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:16', 'Chofer'),
(162, 'dfsdfds', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:16:49', 'Chofer'),
(163, 'dfsdfds', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-23', '15:24:04', 'Choferes'),
(164, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:25:43', 'Chofer'),
(165, '26561638', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-23', '15:29:50', 'Chofer'),
(166, '26561638', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-02-23', '15:33:53', 'Choferes'),
(167, '$$%$$%%$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-02-23', '15:34:58', 'Chofer'),
(168, '$$%$$%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-02-23', '15:35:08', 'Chofer'),
(169, 'KOWP145', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:37:22', 'Reparaciones'),
(170, 'KVT47V', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:37:40', 'Reparaciones'),
(171, 'VAS654', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:38:28', 'Reparaciones'),
(172, 'YYLA891', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-02-23', '15:39:01', 'Reparaciones'),
(175, '01010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '09:29:05', 'Usuario'),
(176, '01010101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '09:33:35', 'Usuario'),
(177, '12345670', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '09:33:39', 'Usuario'),
(178, '010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '09:34:20', 'Usuario'),
(179, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:23', 'Usuario'),
(180, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:35', 'Usuario'),
(181, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:36', 'Usuario'),
(182, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:40', 'Usuario'),
(183, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:42', 'Usuario'),
(184, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:44', 'Usuario'),
(185, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:46', 'Usuario'),
(186, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:48', 'Usuario'),
(187, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:49', 'Usuario'),
(188, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:39:57', 'Usuario'),
(189, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:40:00', 'Usuario'),
(190, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '09:58:34', 'Usuario'),
(191, '010101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '09:58:41', 'Usuario'),
(192, '010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '09:59:02', 'Usuario'),
(193, '010101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '10:05:18', 'Usuario'),
(194, '0101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:05:41', 'Usuario'),
(195, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '10:31:25', 'Usuario'),
(196, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-02-26', '10:33:30', 'Usuario'),
(197, '0101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-02-26', '10:34:16', 'Usuario'),
(198, '0101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:34:32', 'Usuario'),
(199, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:41:57', 'Usuario'),
(200, '1111', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-02-26', '10:55:34', 'Usuario'),
(201, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:01:50', 'Usuario'),
(202, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:02:58', 'Usuario'),
(203, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:00', 'Usuario'),
(204, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:05', 'Usuario'),
(205, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:10', 'Usuario'),
(206, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:03:24', 'Usuario'),
(207, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:05:35', 'Usuario'),
(208, '1111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:05:39', 'Usuario'),
(209, '1111', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-03-05', '20:06:11', 'Usuario'),
(210, '$%%$%%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-03-05', '20:07:07', 'Chofer'),
(211, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:07:19', 'Usuario'),
(212, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:07:22', 'Usuario'),
(213, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '20:09:32', 'Usuario'),
(214, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '22:20:42', 'Usuario'),
(215, '365874', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-03-05', '22:21:22', 'Usuario'),
(216, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-05', '22:43:23', 'Usuario'),
(217, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-06', '07:27:20', 'Usuario'),
(218, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-03-06', '07:31:07', 'Usuario'),
(219, '34567894', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-03-06', '07:31:11', 'Usuario'),
(220, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '09:55:43', 'Usuario'),
(221, '10847107', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-03-07', '09:56:09', 'Usuario'),
(225, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:40:55', 'Usuario'),
(226, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:41:01', 'Usuario'),
(228, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:43:03', 'Usuario'),
(229, '123456', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '14:43:15', 'Usuario'),
(230, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:01:11', 'Usuario'),
(233, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:05:18', 'Usuario'),
(235, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:11:35', 'Usuario'),
(236, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:12:27', 'Usuario'),
(237, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-03-07', '21:15:02', 'Usuario'),
(241, '$%%%$$$$', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-04-07', '19:19:05', 'Chofer'),
(242, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:48:10', 'Usuario'),
(243, '26398477', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:50:38', 'Usuario'),
(244, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:51:04', 'Usuario'),
(245, '26398477', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:51:08', 'Usuario'),
(246, '26398477', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:53:58', 'Usuario'),
(247, '26398477', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:54:53', 'Usuario'),
(248, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:55:15', 'Usuario'),
(249, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:55:22', 'Usuario'),
(250, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:56:54', 'Usuario'),
(251, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:57:20', 'Usuario'),
(252, '26398488', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-07', '21:57:46', 'Usuario'),
(253, '26398488', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-07', '21:58:04', 'Usuario'),
(254, '95589666', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-12', '01:13:56', 'Usuario'),
(255, '9558962', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-12', '21:19:12', 'Usuario'),
(256, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-12', '21:32:25', 'Usuario'),
(257, '30868382', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:33:08', 'Usuario'),
(258, '10847107', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:36:03', 'Usuario'),
(259, 'prueba', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:40:07', 'Usuario'),
(260, 'prueba2', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:42:40', 'Usuario'),
(261, '12345647', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:45:28', 'Usuario'),
(262, '123456', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:15', 'Usuario'),
(263, '12345647', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario'),
(264, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario'),
(265, 'prueba', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario'),
(266, 'prueba2', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:16', 'Usuario'),
(267, '10847107', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-04-13', '21:46:22', 'Usuario'),
(268, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:53:25', 'Usuario'),
(269, 'PRUEBA', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:57:34', 'Usuario'),
(270, 'HHHH', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-13', '21:59:37', 'Usuario'),
(271, 'PRUEBA', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:31', 'Usuario'),
(272, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:38', 'Usuario'),
(273, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:46', 'Usuario'),
(274, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:02:52', 'Usuario'),
(275, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:03:02', 'Usuario'),
(276, '30868382', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:03:08', 'Usuario'),
(277, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:04:00', 'Usuario'),
(278, '95589666', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-17', '15:04:07', 'Usuario'),
(279, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-18', '15:55:48', 'Usuario'),
(280, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:11:39', 'Mantenimiento'),
(281, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:11:54', 'Mantenimiento'),
(282, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:12:40', 'Mantenimiento'),
(283, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:12:53', 'Mantenimiento'),
(284, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-20', '21:13:01', 'Mantenimiento'),
(285, '30868382', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-24', '10:18:09', 'Usuario'),
(286, 'Cambio d', 'root@localhost', 'Se Modifico un campo de la tabla', 'localhost', '2022-04-24', '16:00:23', 'Tipos'),
(287, 'Chequeo', 'root@localhost', 'Se Modifico un campo de la tabla', 'localhost', '2022-04-24', '16:00:30', 'Tipos'),
(288, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-24', '16:41:55', 'Mantenimiento'),
(289, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-24', '16:42:04', 'Mantenimiento'),
(290, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-04-24', '16:42:11', 'Mantenimiento'),
(291, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:10:11', 'Reparacion'),
(292, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:10:18', 'Reparacion'),
(293, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:11:54', 'Reparacion'),
(294, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:12:01', 'Reparacion'),
(295, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-04-24', '17:12:09', 'Reparacion'),
(296, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-04-24', '18:18:49', 'Seguridad Roles'),
(297, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-04-24', '18:18:56', 'Seguridad Roles'),
(298, '3', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-04-24', '18:19:03', 'Seguridad Roles'),
(299, '26561631', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-04-29', '16:06:10', 'Usuario'),
(300, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-04-29', '16:06:43', 'Usuario'),
(301, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-01', '17:25:41', 'Usuario'),
(302, '95589666', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-02', '10:09:45', 'Usuario'),
(303, '26561631', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:22:03', 'Usuario'),
(304, '26561631', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:22:11', 'Usuario'),
(305, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:43:54', 'Usuario'),
(306, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-02', '10:59:45', 'Usuario'),
(307, '28946711', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-05', '11:46:38', 'Usuario'),
(308, '95589666', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-05', '17:46:44', 'Usuario'),
(309, '95589666', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-05', '17:47:16', 'Usuario'),
(310, '3333385', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-05-05', '17:48:59', 'Usuario'),
(311, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-05', '18:39:10', 'Usuario'),
(312, '$$%$$%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-06', '15:22:36', 'Chofer'),
(313, '$$%$$%%$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-06', '15:22:43', 'Chofer'),
(314, '$%%%$$$$', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-06', '15:22:50', 'Chofer'),
(315, '$%%$%$%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:09:46', 'Choferes'),
(316, '$%%%$$$$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:11:29', 'Choferes'),
(317, '$%%%$$$$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:11:47', 'Choferes'),
(318, '$$%$$%%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:25', 'Choferes'),
(319, '$%%$$$%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:25', 'Choferes'),
(320, '$%%$%%%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:25', 'Choferes'),
(321, '$%%$%$%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:26', 'Choferes'),
(322, '$$%$$%%$', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-06', '16:18:26', 'Choferes'),
(323, '29398488', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-20', '09:19:23', 'Chofer'),
(324, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:41', 'Usuario'),
(325, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:45', 'Usuario'),
(326, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:51', 'Usuario'),
(327, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-20', '09:35:54', 'Usuario'),
(328, '898PAJ4', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '13:13:52', 'Ruta'),
(329, '898PAJ4', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:14:14', 'Ruta'),
(330, '898PAJ4', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '13:15:07', 'Ruta'),
(331, 'KVT47V', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:27', 'Ruta'),
(332, 'EAP685', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:29', 'Ruta'),
(333, 'KVT47V', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:31', 'Ruta'),
(334, 'VAS654', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:33', 'Ruta'),
(335, 'EAP685', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-20', '13:15:34', 'Ruta'),
(336, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '13:15:37', 'Ruta'),
(337, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:08:07', 'Chofer'),
(338, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:08:24', 'Chofer'),
(339, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:08:34', 'Chofer'),
(340, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:13:25', 'Chofer'),
(341, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:28', 'Chofer'),
(342, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:31', 'Chofer'),
(343, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:40', 'Chofer'),
(344, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:42', 'Chofer'),
(345, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:44', 'Chofer'),
(346, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:14:45', 'Chofer'),
(347, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:16:12', 'Chofer'),
(348, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:16:15', 'Chofer'),
(349, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:16:53', 'Chofer'),
(350, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:17:30', 'Chofer'),
(351, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:17:41', 'Chofer'),
(352, 'SANTI03', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '22:46:28', 'Ruta'),
(353, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '22:55:01', 'Chofer'),
(354, '27290770', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-20', '22:58:55', 'Chofer'),
(359, '27290770', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:04:35', 'Chofer'),
(360, 'ROA126', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '23:12:17', 'Ruta'),
(361, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:20:45', 'Ruta'),
(362, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:20:52', 'Ruta'),
(363, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:26:36', 'Ruta'),
(364, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:26:52', 'Ruta'),
(365, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:26:55', 'Ruta'),
(366, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:27:16', 'Ruta'),
(367, 'SANTI03', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-20', '23:27:24', 'Ruta'),
(368, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:28:15', 'Chofer'),
(369, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:28:17', 'Chofer'),
(370, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-20', '23:28:24', 'Chofer'),
(371, '20080946', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-20', '23:28:57', 'Chofer'),
(372, 'GAP173', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-20', '23:29:17', 'Ruta'),
(373, '3333385', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-21', '14:07:02', 'Usuario'),
(374, 'SANTI03', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-05-21', '19:50:31', 'Mantenimiento'),
(375, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:18', 'Mantenimiento'),
(376, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:20', 'Mantenimiento'),
(377, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:22', 'Mantenimiento'),
(378, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:23', 'Mantenimiento'),
(379, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:24', 'Mantenimiento'),
(380, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:25', 'Mantenimiento'),
(381, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:26', 'Mantenimiento'),
(382, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:27', 'Mantenimiento'),
(383, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:45', 'Mantenimiento'),
(384, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:51', 'Mantenimiento'),
(385, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:54', 'Mantenimiento'),
(386, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:56', 'Mantenimiento'),
(387, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:17:59', 'Mantenimiento'),
(388, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:18:02', 'Mantenimiento'),
(389, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:18:05', 'Mantenimiento'),
(390, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:18:08', 'Mantenimiento'),
(391, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:41:13', 'Mantenimiento'),
(392, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:41:22', 'Mantenimiento'),
(393, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:46:29', 'Mantenimiento'),
(394, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-21', '20:46:46', 'Mantenimiento'),
(395, 'OGA1703', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-05-21', '21:53:09', 'Reparaciones'),
(396, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:04:56', 'Reparacion'),
(397, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:05:03', 'Reparacion'),
(398, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:05:37', 'Reparacion'),
(399, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:06:12', 'Reparacion'),
(400, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:06:15', 'Reparacion'),
(401, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:06:18', 'Reparacion'),
(402, '29398488', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-21', '22:06:33', 'Chofer'),
(403, '27290770', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-21', '22:06:39', 'Chofer'),
(404, '9243485', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-21', '22:07:06', 'Chofer'),
(405, '9243485', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-21', '22:07:13', 'Chofer'),
(406, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-21', '22:07:32', 'Ruta'),
(407, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-05-21', '22:07:36', 'Ruta'),
(408, 'ORIANA12', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-21', '22:07:59', 'Ruta'),
(409, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:15:57', 'Reparacion'),
(410, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:15:58', 'Reparacion'),
(411, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:16:00', 'Reparacion'),
(412, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:16:01', 'Reparacion'),
(413, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-21', '22:16:02', 'Reparacion'),
(414, '29398488', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:13', 'Choferes'),
(415, '27290770', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:15', 'Choferes'),
(416, '9243485', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:16', 'Choferes'),
(417, '20080946', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-05-21', '22:16:17', 'Choferes'),
(418, 'ROA126', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-21', '22:16:26', 'Ruta'),
(419, 'SANTI03', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-05-21', '22:16:29', 'Ruta'),
(420, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '12:07:39', 'Mantenimiento'),
(421, 'ORIANA12', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-05-22', '12:09:06', 'Mantenimiento'),
(422, '26561633', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-22', '12:14:49', 'Chofer'),
(423, '95589666', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-22', '12:15:02', 'Chofer'),
(424, '30', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-05-22', '12:15:42', 'Chofer'),
(425, '30', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-05-22', '12:16:04', 'Chofer'),
(426, 'YYLA891', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-05-22', '12:16:45', 'Ruta'),
(427, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '12:27:14', 'Reparacion'),
(428, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '12:33:39', 'Reparacion'),
(429, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '12:40:07', 'Reparacion'),
(430, 'OGA1703', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-05-22', '12:48:45', 'Reparaciones'),
(431, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:09:32', 'Reparacion'),
(432, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:10:15', 'Reparacion'),
(433, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:10:46', 'Reparacion'),
(434, 'VAS654', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:11:17', 'Reparacion'),
(435, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:11:53', 'Reparacion'),
(436, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:13:39', 'Reparacion'),
(437, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:13:59', 'Reparacion'),
(438, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:14:48', 'Reparacion'),
(439, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:20:25', 'Reparacion'),
(440, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:22:26', 'Reparacion'),
(441, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:22:39', 'Reparacion'),
(442, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:24:45', 'Reparacion'),
(443, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:25:52', 'Reparacion'),
(444, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:26:33', 'Reparacion'),
(445, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:28:05', 'Reparacion'),
(446, 'KOWP145', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:28:52', 'Reparacion'),
(447, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:29:08', 'Reparacion'),
(448, 'ROA126', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-05-22', '13:32:50', 'Mantenimiento'),
(449, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:36:19', 'Mantenimiento'),
(450, 'KOWP145', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:38:36', 'Mantenimiento'),
(451, 'YYLA891', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:38:57', 'Mantenimiento'),
(452, 'EAP685', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:40:11', 'Mantenimiento'),
(453, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:41:15', 'Mantenimiento'),
(454, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:49:32', 'Mantenimiento'),
(455, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:50:00', 'Mantenimiento'),
(456, 'KVT47V', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:50:26', 'Mantenimiento'),
(457, 'SANTI03', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:51:26', 'Mantenimiento'),
(458, 'ROA126', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '13:52:11', 'Mantenimiento'),
(459, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '13:53:56', 'Reparacion'),
(460, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '14:11:00', 'Mantenimiento'),
(461, 'VAS654', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-22', '14:11:22', 'Mantenimiento'),
(462, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '14:31:14', 'Reparacion'),
(463, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '14:32:08', 'Reparacion'),
(464, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '14:55:36', 'Reparacion'),
(465, 'OGA1703', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:00:14', 'Reparaciones'),
(466, 'KVT47V', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:02:35', 'Reparaciones'),
(467, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '15:03:38', 'Reparacion'),
(468, 'YYLA891', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '15:04:41', 'Reparacion'),
(469, 'VAS654', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:05:37', 'Reparaciones'),
(470, 'KVT47V', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-05-22', '15:06:01', 'Reparaciones'),
(471, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-05-22', '15:06:43', 'Reparacion'),
(472, '4', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles'),
(473, '1', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles');
INSERT INTO `bitacora` (`id_bitacora`, `cedula`, `usuario`, `operacion`, `host`, `fecha`, `hora`, `tabla`) VALUES
(474, '2', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles'),
(475, '3', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-05-29', '12:29:28', 'Seguridad Roles'),
(476, '95589666', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario'),
(477, '9558962', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario'),
(478, '30868382', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario'),
(479, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:04', 'Usuario'),
(480, 'PRUEBA', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(481, 'HHHH', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(482, '26561631', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(483, '95589666', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(484, '28946711', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(485, '95589666', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(486, '3333385', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-05-29', '13:17:05', 'Usuario'),
(487, '0101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:18:16', 'Usuario'),
(488, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:18:39', 'Usuario'),
(489, '10847107', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:19:03', 'Usuario'),
(490, '365874', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-05-29', '13:19:32', 'Usuario'),
(491, 'OGA1703', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-05-29', '14:02:10', 'Mantenimiento'),
(495, '1', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '09:53:08', ' Seguridad Roles'),
(496, '2', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '09:53:08', ' Seguridad Roles'),
(498, '26577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:04:25', 'Usuario'),
(499, '365874', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:04:25', 'Usuario'),
(500, '10847107', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:04:26', 'Usuario'),
(501, '0101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:05:23', 'Usuario'),
(502, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-06-01', '10:05:23', 'Usuario'),
(503, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '10:07:09', 'Usuario'),
(504, '9601788', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '10:25:01', 'Usuario'),
(505, '12345678', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '10:25:42', 'Usuario'),
(506, '1', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-06-01', '10:27:59', 'Seguridad Roles'),
(507, '2', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-06-01', '10:27:59', 'Seguridad Roles'),
(508, '1', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:35:46', ' Seguridad Roles'),
(509, '2', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:35:46', ' Seguridad Roles'),
(510, '3', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:36:35', ' Seguridad Roles'),
(511, '4', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-06-01', '10:36:35', ' Seguridad Roles'),
(512, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '11:17:47', 'Usuario'),
(513, '010101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-01', '11:18:46', 'Usuario'),
(516, 'KVT47V', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-01', '16:12:18', 'Ruta'),
(517, 'KVT47V', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-01', '16:15:06', 'Ruta'),
(518, 'ROA126', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-01', '16:19:07', 'Ruta'),
(519, 'ROA126', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-01', '16:21:41', 'Ruta'),
(520, 'ROA126', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-01', '16:21:43', 'Ruta'),
(521, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-07', '09:09:36', 'Usuario'),
(522, '10847103', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-07', '09:11:02', 'Usuario'),
(523, 'OGA1703', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:34', 'Mantenimientos'),
(524, 'EAP685', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:34', 'Mantenimientos'),
(525, 'OGA1703', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:34', 'Mantenimientos'),
(526, 'EAP685', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:34', 'Mantenimientos'),
(527, 'VAS654', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(528, 'KVT47V', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(529, 'YYLA891', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(530, 'KOWP145', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(531, 'SANTI03', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(532, 'ORIANA12', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(533, 'ROA126', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-08', '13:27:35', 'Mantenimientos'),
(534, '10847103', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-08', '22:27:36', 'Usuario'),
(535, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-08', '22:42:20', 'Usuario'),
(536, 'OGA1703', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-08', '23:58:01', 'Ruta'),
(537, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:01:45', 'Ruta'),
(538, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:02:24', 'Ruta'),
(539, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:03:39', 'Ruta'),
(540, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:04:13', 'Ruta'),
(541, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:05:16', 'Ruta'),
(542, 'OGA1703', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:05:31', 'Ruta'),
(543, '898PAJ4', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:07:38', 'Ruta'),
(544, '6', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-09', '00:18:43', 'Mantenimiento'),
(545, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-09', '00:26:10', 'Ruta'),
(546, '0', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-10', '19:41:43', 'Mantenimiento'),
(547, '0', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-10', '19:49:45', 'Mantenimientos'),
(548, '6', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-06-10', '19:49:51', 'Mantenimientos'),
(549, '8', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-10', '19:52:51', 'Mantenimiento'),
(550, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-11', '10:12:18', 'Usuario'),
(551, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-06-11', '12:02:17', 'Seguridad Roles'),
(552, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-06-11', '12:02:57', 'Seguridad Roles'),
(553, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-06-11', '12:03:04', 'Seguridad Roles'),
(554, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-06-11', '12:03:11', 'Seguridad Roles'),
(555, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-11', '14:25:20', 'Usuario'),
(556, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-11', '14:26:29', 'Usuario'),
(557, '1', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-22', '20:14:49', 'Mantenimiento'),
(572, '8', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '10:10:46', 'Mantenimiento'),
(573, '8', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '10:11:03', 'Mantenimiento'),
(574, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '10:19:42', 'Mantenimiento'),
(575, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '10:23:44', 'Mantenimiento'),
(576, '8', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '10:29:41', 'Mantenimiento'),
(577, '8', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '10:30:54', 'Mantenimiento'),
(578, '6', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-23', '11:44:57', 'Mantenimiento'),
(579, '6', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '11:45:34', 'Mantenimiento'),
(580, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-23', '11:45:52', 'Mantenimiento'),
(581, 'cdfvdvgf', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-23', '20:15:51', 'Usuario'),
(582, 'papap', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-23', '21:24:44', 'Usuario'),
(583, '55856336', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-23', '21:31:09', 'Usuario'),
(584, '88998917', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-06-23', '21:34:52', 'Usuario'),
(585, '010101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-23', '21:36:56', 'Usuario'),
(586, 'cdfvdvgf', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-23', '21:38:17', 'Usuario'),
(587, 'KOWP145', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '14:16:59', 'Ruta'),
(588, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '14:17:17', 'Ruta'),
(589, 'LALI2300', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-25', '14:56:03', 'Ruta'),
(590, 'GAP173', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '14:56:56', 'Ruta'),
(591, 'YYLA891', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '14:57:16', 'Ruta'),
(592, 'LALI2300', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-25', '15:02:27', 'Ruta'),
(593, 'KVT47V', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '15:10:09', 'Ruta'),
(594, 'ORIANA12', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '15:11:09', 'Ruta'),
(595, 'EAP685', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-25', '15:25:42', 'Ruta'),
(596, 'ROA126', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '15:26:02', 'Ruta'),
(597, 'ROA126', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '15:36:56', 'Ruta'),
(598, 'LALI2300', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '15:51:58', 'Ruta'),
(599, 'EAP685', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '16:02:05', 'Ruta'),
(600, 'EAP685', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '16:05:54', 'Ruta'),
(601, 'GAP173', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-06-25', '16:18:47', 'Ruta'),
(606, 'EAP685', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '16:21:09', 'Ruta'),
(607, 'ORIANA12', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '16:21:31', 'Ruta'),
(608, 'EAP685', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-25', '16:21:53', 'Ruta'),
(609, '98657412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-25', '18:21:55', 'Usuario'),
(615, 'papap', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-25', '18:25:25', 'Usuario'),
(616, '10847103', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-27', '10:45:58', 'Usuario'),
(617, '898PAJ4', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-06-27', '12:50:57', 'Ruta'),
(618, '35', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-27', '15:26:07', 'Mantenimiento'),
(619, '35', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-06-27', '15:27:02', 'Mantenimiento'),
(620, '37', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-27', '15:27:35', 'Mantenimiento'),
(621, '13', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-06-30', '13:14:49', 'Mantenimiento'),
(622, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-06-30', '13:47:26', 'Reparacion'),
(623, 'KVT47V', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-06-30', '13:52:05', 'Reparaciones'),
(624, 'KVT47V', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-06-30', '13:52:40', 'Reparacion'),
(625, '6265541', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-06-30', '13:55:24', 'Reparaciones'),
(626, '6265541', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-06-30', '13:56:46', 'Reparacion'),
(627, 'SANTI03', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-06-30', '13:56:56', 'Reparacion'),
(628, 'SANTI03', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-06-30', '13:57:13', 'Reparacion'),
(629, 'OGA1703', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-06-30', '14:00:14', 'Reparaciones'),
(630, 'OGA1703', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-06-30', '14:04:29', 'Reparaciones'),
(631, 'OGA1703', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-06-30', '14:07:04', 'Reparacion'),
(632, '55856336', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-30', '14:29:39', 'Usuario'),
(633, '55856336', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-06-30', '14:30:11', 'Usuario'),
(634, 'OGA1703', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(635, 'KOWP145', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(636, 'YYLA891', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(637, 'KVT47V', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(638, 'OGA1703', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(639, 'KVT47V', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(640, 'OGA1703', 'root@localhost', 'Se elimino una reparacion', 'localhost', '2022-07-01', '16:08:59', 'Reparaciones'),
(641, 'sdsd', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-07-04', '15:51:15', 'Chofer'),
(642, '26561633', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-04', '15:54:57', 'Chofer'),
(643, '26561633', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-04', '16:52:55', 'Chofer'),
(644, 'sdsd', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-04', '16:53:45', 'Chofer'),
(645, '01234567', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-07-04', '17:15:58', 'Chofer'),
(646, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-07-04', '17:37:45', 'Seguridad Roles'),
(647, '6', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-07-06', '19:57:21', 'Mantenimiento'),
(648, '26561634', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-06', '20:10:27', 'Chofer'),
(649, 'sdsd', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-06', '20:10:39', 'Chofer'),
(650, '01010848', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-07-06', '20:22:35', 'Chofer'),
(651, '12345667', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-07-06', '20:24:43', 'Chofer'),
(652, '12345667', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-06', '20:25:01', 'Chofer'),
(653, 'sdsd', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-06', '20:26:07', 'Chofer'),
(654, 'sdsd', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-06', '20:26:27', 'Chofer'),
(655, '4', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-07-06', '21:20:51', 'Seguridad Roles'),
(656, '0', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-07-07', '15:35:21', 'Reparaciones'),
(657, '0', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-07-07', '16:41:19', 'Reparaciones'),
(658, '26561634', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-18', '10:31:04', 'Chofer'),
(659, 'sdsd', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-18', '10:31:20', 'Chofer'),
(660, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-07-18', '11:20:00', 'Usuario'),
(661, '65855555', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-07-20', '18:57:39', 'Usuario'),
(662, '95589660', 'root@localhost', 'Se inserto un nuevo chofer', 'localhost', '2022-07-20', '18:59:26', 'Chofer'),
(663, '21', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-07-20', '19:00:55', 'Ruta'),
(664, '18', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:13:45', 'Ruta'),
(665, '18', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:13:54', 'Ruta'),
(666, '18', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:17:57', 'Ruta'),
(667, '7', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:19:42', 'Ruta'),
(668, '7', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:19:46', 'Ruta'),
(669, '7', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:44:42', 'Ruta'),
(670, '7', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-07-20', '19:48:30', 'Ruta'),
(671, '10847103', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-07-22', '15:14:04', 'Usuario'),
(672, '95589666', 'root@localhost', 'Se Modificaron los datos de un chofer', 'localhost', '2022-07-22', '17:55:54', 'Chofer'),
(673, '26561634', 'root@localhost', 'Se elimino un Chofer del registro', 'localhost', '2022-07-22', '17:56:20', 'Choferes'),
(674, '6', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-07-22', '22:11:51', 'Mantenimiento'),
(675, '35', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-07-22', '22:12:05', 'Mantenimiento');

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
(2, 'GAP173', 'ERWIN ELIAS', 'ARMAS', '95589666', '04160360067', 1),
(3, '898PAJ4', 'Elias', 'GOGOGOGOGOG', '308386512', '0412788593', 1),
(4, 'KOWP145', 'sds', 'sds', 'fdfc', 'sds', 0),
(5, 'KVT47V', 'zzzzz', 'sdszz', '0123456789', '05485452854', 1),
(6, 'KOWP145', 'ccc', 'ccc', '01010848441', '04160360044', 1),
(7, 'KVT47V', 'xcxc', 'xccx', '12345667896', '89988888585', 1),
(8, 'LALI23001', 'fvdsvfd', 'vcdvdsf', '121454884dd', '04145789632', 1),
(9, 'FFF854', 'TOMASITO', 'TOMASITO', '95589660', '02519874111', 1);

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
  `kilometraje` int(11) DEFAULT NULL,
  `tiempo` varchar(20) COLLATE utf8_bin NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `costo` varchar(30) COLLATE utf8_bin NOT NULL,
  `fecha` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_taller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id_mantenimiento`, `kilometraje`, `tiempo`, `id_vehiculo`, `nombre`, `costo`, `fecha`, `status`, `id_taller`) VALUES
(1, 300, '1', 8, 'Bujias', '500', '2022-06-01', 1, 1),
(2, 350, '1', 1, 'Pastillas de freno', '15', '2022-06-02', 1, 3),
(3, 300, '7', 6, 'Cambio de Aceite', '15.0', '2022-02-15', 1, 2),
(4, 16, '9', 35, 'Mant. programado', '40', '2022-06-15', 1, 15),
(5, 14, '8', 37, 'Bujias', '9', '2022-06-08', 1, 10),
(6, 30, '100', 13, 'Cambio de Aceite', '14', '2022-06-09', 1, 14),
(7, 30, '100', 6, 'Mant. programado', '9000', '2022-07-07', 1, 3);

--
-- Disparadores `mantenimientos`
--
DELIMITER $$
CREATE TRIGGER `after_mantenimientos_update` BEFORE UPDATE ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_vehiculo,'Mantenimiento', 'Se modifico un mantenimiento')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_mantenimientos_insertar` AFTER INSERT ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.id_vehiculo, NOW(), NOW(),'Mantenimiento', 'Se inserto un nuevo mantenimiento')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mantenimientos_delete` AFTER DELETE ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_vehiculo,'Mantenimientos', 'Se elimino un mantenimiento asociado a la placa señalada')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

create table notificaciones(
id_notificacion int primary key auto_increment,
estado int not null,
fecha date not null,
titulo text not null,
contenido text not null,
id_vehiculo int not null
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `creado` date NOT NULL,
  `modificado` date NOT NULL
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
  `id_vehiculo` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_bin NOT NULL,
  `costo` varchar(30) COLLATE utf8_bin NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_taller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `reparaciones`
--

INSERT INTO `reparaciones` (`id_reparaciones`, `id_vehiculo`, `nombre`, `costo`, `fecha`, `descripcion`, `status`, `id_taller`) VALUES
(1, 0, 'Elias', '20000', '2022-07-07', 'nn', 1, 0),
(2, 0, 'Bombilla', '8', '2022-06-30', 'exploto una luz tracera', 1, 0);

--
-- Disparadores `reparaciones`
--
DELIMITER $$
CREATE TRIGGER `after_reparaciones_update` BEFORE UPDATE ON `reparaciones` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_vehiculo,'Reparacion', 'Se modifico una reparacion')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_reparacion_insertar` AFTER INSERT ON `reparaciones` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.id_vehiculo, NOW(), NOW(),'Reparaciones', 'Se registro una nueva reparacion')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reparacion_delete` AFTER DELETE ON `reparaciones` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_vehiculo,'Reparaciones', 'Se elimino una reparacion')
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
  `creado` date NOT NULL,
  `modificado` date NOT NULL
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
(3, 13, '2022-06-01', '2022-06-01'),
(1, 1, '0000-00-00', '0000-00-00'),
(1, 4, '0000-00-00', '0000-00-00'),
(1, 3, '0000-00-00', '0000-00-00'),
(1, 4, '0000-00-00', '0000-00-00'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 9, '2022-06-01', '2022-06-01'),
(3, 13, '2022-06-01', '2022-06-01'),
(1, 13, '2022-06-07', '2022-06-07'),
(1, 14, '2022-06-07', '2022-06-07'),
(1, 16, '2022-06-07', '2022-06-07'),
(1, 5, '2022-06-07', '2022-06-07'),
(1, 7, '2022-06-07', '2022-06-07'),
(1, 22, '2022-06-08', '2022-06-08'),
(1, 18, '2022-06-08', '2022-06-08'),
(1, 26, '2022-06-08', '2022-06-08'),
(1, 30, '2022-06-08', '2022-06-08'),
(1, 18, '2022-06-08', '2022-06-08'),
(3, 30, '2022-06-08', '2022-06-08'),
(3, 13, '2022-06-08', '2022-06-08'),
(3, 30, '2022-06-08', '2022-06-08'),
(3, 5, '2022-06-08', '2022-06-08'),
(4, 13, '2022-06-08', '2022-06-08'),
(4, 22, '2022-06-08', '2022-06-08'),
(2, 1, '2022-06-08', '2022-06-08'),
(2, 5, '2022-06-08', '2022-06-08'),
(2, 13, '2022-06-08', '2022-06-08'),
(2, 30, '2022-06-08', '2022-06-08'),
(1, 2, '2022-06-08', '2022-06-08'),
(1, 6, '2022-06-08', '2022-06-08'),
(1, 8, '2022-06-08', '2022-06-08'),
(1, 14, '2022-06-08', '2022-06-08'),
(1, 15, '2022-06-08', '2022-06-08'),
(1, 8, '2022-06-08', '2022-06-08'),
(1, 10, '2022-07-01', '2022-07-01'),
(1, 11, '2022-07-01', '2022-07-01'),
(1, 9, '2022-07-01', '2022-07-01'),
(1, 10, '2022-07-01', '2022-07-01');

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
  `kilometraje` varchar(11) COLLATE utf8_bin NOT NULL,
  `status` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id_ruta`, `placa`, `nombre_ruta`, `direccion_ruta`, `hora_salida`, `kilometraje`, `status`, `cantidad`, `fecha_inicio`, `fecha_fin`) VALUES
(7, '898PAJ4', 'Barrio Union', 'calle cuatro con seis hasta la macias', '13:15:00', '8,3', 1, 1, '2022-07-21', '2022-07-14'),
(21, 'FFF854', 'Centro', 'calle 13 con carrera 11', '19:59:00', '1457', 1, 5, '2022-07-18', '2022-07-14'),
(10, 'GAP173', 'Corrido Rapido', 'Centro Ciudad', '23:29:00', '15,7', 0, 0, NULL, NULL),
(17, 'LALI23001', 'Francia Paris', 'av la salle con corpahuaico 44', '03:02:00', '6,2', 1, 0, NULL, NULL),
(11, 'ORIANA123', 'Oeste centro', 'pescadito cuatro con catorce', '22:07:00', '6,5', 1, 0, NULL, NULL),
(19, 'GAP173', 'Santa Rosalia', 'avenida cinco con trece', '17:18:00', '5,2', 1, 0, NULL, NULL),
(12, 'YYLA891', 'UPTAEB', 'av la salle con corpahuaico', '12:15:00', '11,2', 1, 0, NULL, NULL),
(16, 'LALI2300', 'UPTAEB-CENTRO', 'Lara', '17:54:00', '16,5', 1, 0, NULL, NULL),
(18, 'EAP685', 'UPTAEBaa', 'Pueblo Nuevo con calle tres', '14:24:00', '14,7', 1, 0, '0000-00-00', '0000-00-00'),
(1, 'KOWP145', 'Zona Norte', 'Zona norte, Yucatan', '12:30:00', '1,5', 1, 0, NULL, NULL),
(13, 'KVT47V', 'el espanto', 'calle 13 con carrera 43', '01:15:00', '10,0', 1, 0, NULL, NULL),
(20, 'ELI778', 'fgfg', 'dfffdg', '14:35:00', '14', 1, 1, '2022-07-18', '2022-07-18'),
(14, 'ROA126', 'hno juan', 'av la salle con corpahuaico', '16:19:00', '16,5', 1, 0, NULL, NULL),
(15, 'OGA1703', 'upteb-oeste macias', 'Macias Mujica bloque 24', '00:15:00', '9,5', 1, 0, NULL, NULL);

--
-- Disparadores `rutas`
--
DELIMITER $$
CREATE TRIGGER `after_ruta_update` BEFORE UPDATE ON `rutas` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_ruta,'Ruta', 'Se Modifico una ruta')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_ruta_insertar` AFTER INSERT ON `rutas` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.id_ruta, NOW(), NOW(),'Ruta', 'Se inserto una nueva ruta')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rutas_delete` AFTER DELETE ON `rutas` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_ruta,'Ruta', 'Se elimino una ruta')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id_taller` int(11) NOT NULL,
  `rif` varchar(15) COLLATE utf8_bin NOT NULL,
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
(3, 'E-12348369-1', 'Michellin', 'calle cinco', '02512344589', 1),
(4, 'J-17031998', 'Fernandez ', '60 con 13', '025144778869', 1),
(6, 'J-30868368', 'Kiara', 'SantaIsabel', '02517786942', 1),
(7, 'J-78455133', 'La Ingra', 'El araguaney', '04148756312', 1),
(8, 'V-26561633', 'Las Shakiras', 'barrio Union', '04145448669', 0),
(9, 'J-59745526', 'Twigns', 'Macias Mujica', '041454487922', 1),
(10, 'J-12345678', 'XXX', 'CALLE QUINTA', '04145448669', 1),
(11, 'G-96017881', 'xxx', 'xxXXX', '14547788205', 1),
(12, 'J-15010101', 'dddddddddd', 'Waikiki', '04127721353', 1),
(13, 'J-14287821', 'dddddddddd', 'Waikiki', '04127721353', 1),
(14, 'J-00000001', 'Waikiki', 'Santos Luzardo', '02514423626', 1),
(15, 'E-65893278', 'Gitana', 'KLSKSKS', '04127721353', 1);

--
-- Disparadores `taller`
--
DELIMITER $$
CREATE TRIGGER `after_taller_update` BEFORE UPDATE ON `taller` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_taller,'taller', 'Se modifico un taller')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_taller_insertar` AFTER INSERT ON `taller` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.id_taller, NOW(), NOW(),'taller', 'Se registro una nuevo taller')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `taller_delete` AFTER DELETE ON `taller` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_taller,'Reparaciones', 'Se elimino un nuevo taller')
$$
DELIMITER ;

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
  `fechaRecuperacion` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `usuario`, `nombre`, `apellido`, `contrasena`, `rol`, `status`, `correo`, `fechaRecuperacion`) VALUES
(1, '26561633', 'ogap', 'Oriana ', 'Armas', '$%%$$%%$$%%$%$$/%%$$$%$$%%$$%$$', 1, 1, 'armasoriana98@gmail.com', '2022-07-18 09:20:00'),
(2, '154869364', 'usuario', 'usuario', 'usuario', '123456', 3, 1, 'usuario@gmail.com', '2022-06-24 01:36:56'),
(3, '26561633aa', 'secretaria', 'Santiago', 'Rodriguez', '1234', 2, 1, 'armasoriana98@gmail.com', '2022-06-09 02:42:20'),
(4, '10847103', 'usuario14', 'Oriana', 'Fuego', 'lolo', 3, 1, 'administrador@gmail.com', '2022-07-22 19:14:04'),
(5, '98657412', 'ogapcvc55', 'Miguel', 'Martinez Ochoa', '12234', 1, 1, 'administrador@gmail.com', '2022-06-25 22:21:55'),
(6, '12345648', 'juanalacuana_', 'Juana ', 'Lacuabana', '1234', 1, 1, 'Secretaria@gmail.com', '2022-06-25 22:25:25'),
(7, '558563363', 'HECTORDNC', 'Hector', 'Noguera', '12234', 1, 1, 'Secretaria@gmail.com', '2022-06-30 18:30:11'),
(8, '88998917', 'titimepregunto_', 'Wayando', 'Bailalo', '123454', 1, 1, 'armasoriana107@gmail.com', '2022-06-24 01:34:52'),
(9, '65855555', 'ZAMINA', 'ZAMINA', 'ZAMINA', '$%%$$%%$$%%$%$$/%%$$$%$$%%$$%$$', 1, 1, 'ZAMINA@GMAIL.COM', '0000-00-00 00:00:00');

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
  `kilometraje` varchar(30) COLLATE utf8_bin NOT NULL,
  `id_mantenimiento` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `modelo`, `funcionamiento`, `nombre_tipo`, `kilometraje`, `id_mantenimiento`, `status`) VALUES
(1, 'OGA1703', 'Encava', 'Operativo', NULL, '9,5', NULL, 0),
(6, 'EAP685', 'Dodge', 'Operativo', NULL, '20', NULL, 1),
(7, 'KVT47V', 'BEDFORD', 'Operativo', NULL, '', NULL, 1),
(8, '898PAJ4', 'Dodge', 'Operativo', NULL, '', NULL, 1),
(9, 'VAS654', 'Caio', 'Inoperante', NULL, '', NULL, 1),
(10, 'KOWP145', 'Encava', 'Operativo', NULL, '', NULL, 0),
(11, 'YYLA891', 'Kia', 'Operativo', NULL, '', NULL, 1),
(12, 'GAP173', 'BEDFORD', 'Operativo', NULL, '', NULL, 1),
(13, 'ORIANA123', 'Encava', 'Operativo', NULL, '', NULL, 1),
(14, 'SANTI03', 'Kia', 'Operativo', NULL, '', NULL, 1),
(15, 'ROA126', 'BEDFORD', 'Operativo', NULL, '', NULL, 1),
(30, '6265541', NULL, NULL, 'preventivo', '300', 1, 1),
(31, 'LALI2300', 'Encava', 'Operativo', NULL, '', NULL, 1),
(32, 'LALI23001', 'Encava', 'Operativo', NULL, '', NULL, 1),
(33, '117788232', 'Otro', 'Operativo', NULL, '', NULL, 1),
(34, 'ALA147', 'BEDFORD', 'Operativo', NULL, '45,0', NULL, 1),
(35, 'PAP555', 'Caio', 'Inoperativo', NULL, '45,0', NULL, 1),
(36, 'HAN788', 'Kia', 'Operativo', NULL, '17,0', NULL, 1),
(37, 'QQQ778', 'Kia', 'Operativo', NULL, '98,4', NULL, 1),
(38, 'TOR126', 'Caio', 'Inoperativo', NULL, '14,5', NULL, 1),
(39, 'ELI778', 'BEDFORD', 'Operativo', NULL, '6,1', NULL, 1),
(40, 'FFF854', 'Caio', 'Operativo', NULL, '7,0', NULL, 1);

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
  ADD KEY `fk_placa` (`placa`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id_mantenimiento`),
  ADD KEY `fk_idtaller` (`id_taller`),
  ADD KEY `fk_idvehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_notificacion`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`id_reparaciones`);

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
  ADD PRIMARY KEY (`nombre_ruta`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id_taller`);

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
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id_choferes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `id_reparaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  ADD CONSTRAINT `fk_idtaller` FOREIGN KEY (`id_taller`) REFERENCES `taller` (`id_taller`),
  ADD CONSTRAINT `fk_idvehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`);

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
