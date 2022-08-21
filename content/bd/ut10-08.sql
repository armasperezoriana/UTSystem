-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2022 a las 23:08:36
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
  `tabla` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `cedula`, `usuario`, `operacion`, `host`, `fecha`, `hora`, `tabla`, `status`) VALUES
(814, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '12:43:53', 'Usuario', NULL),
(815, '98657412', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '12:43:53', 'Usuario', NULL),
(816, '9867412', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '12:43:53', 'Usuario', NULL),
(817, '13547896', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '12:43:53', 'Usuario', NULL),
(818, '14141350', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '12:43:53', 'Usuario', NULL),
(819, '10847101', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '12:43:53', 'Usuario', NULL),
(820, '1', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-10', '12:45:05', ' Seguridad Roles', NULL),
(821, '2', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-10', '12:45:05', ' Seguridad Roles', NULL),
(822, '3', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-10', '12:45:05', ' Seguridad Roles', NULL),
(823, '4', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-10', '12:45:05', ' Seguridad Roles', NULL),
(824, '5', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-10', '12:45:05', ' Seguridad Roles', NULL),
(825, '6', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-10', '12:45:05', ' Seguridad Roles', NULL),
(826, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '12:45:32', 'Usuario', NULL),
(827, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '12:46:00', 'Usuario', NULL),
(828, '98657412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '12:46:40', 'Usuario', NULL),
(829, '14141350', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '12:46:52', 'Usuario', NULL),
(830, '8', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-08-10', '12:50:01', 'Reparaciones', NULL),
(831, '1', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-08-10', '12:50:01', 'Reparaciones', NULL),
(832, '9', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-08-10', '12:50:01', 'Reparaciones', NULL),
(833, '9', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-08-10', '12:50:01', 'Reparaciones', NULL),
(834, '7', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-08-10', '12:50:01', 'Reparaciones', NULL),
(835, '7', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(836, '10', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(837, '20', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(838, '17', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(839, '21', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(840, '22', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(841, '23', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(842, '11', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(843, '19', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(844, '12', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(845, '16', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(846, '18', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(847, '24', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(848, '1', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(849, '13', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(850, '14', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(851, '15', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-10', '12:50:20', 'Ruta', NULL),
(852, '1', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(853, '2', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(854, '3', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(855, '4', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(856, '6', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(857, '7', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(858, '8', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(859, '9', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(860, '10', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(861, '11', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(862, '12', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(863, '13', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(864, '14', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(865, '15', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(866, '16', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(867, '17', 'root@localhost', 'Se registro una nuevo taller', 'localhost', '2022-08-10', '12:50:36', 'taller', NULL),
(868, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '12:51:28', 'Usuario', NULL),
(869, '1', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(870, '2', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(871, '3', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(872, '4', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(873, '5', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(874, '6', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(875, '7', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(876, '8', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(877, '9', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(878, '10', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(879, '11', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(880, '12', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(881, '13', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(882, '14', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(883, '15', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(884, '16', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(885, '17', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(886, '18', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(887, '19', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-10', '12:53:36', 'Mantenimiento', NULL),
(888, '13', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-10', '12:54:14', 'taller', NULL),
(889, '11', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-10', '12:54:46', 'taller', NULL),
(890, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '13:51:03', 'Usuario', NULL),
(891, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '13:51:08', 'Usuario', NULL),
(892, '10847101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '13:53:34', 'Usuario', NULL),
(893, '10847101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '13:53:49', 'Usuario', NULL),
(894, '95589111', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '13:58:31', 'Usuario', NULL),
(895, '98657412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '14:01:19', 'Usuario', NULL),
(896, '14141350', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '14:02:18', 'Usuario', NULL),
(897, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '14:02:33', 'Usuario', NULL),
(898, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-10', '14:02:55', 'Usuario', NULL),
(899, '8', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-08-10', '14:34:14', 'Reparacion', NULL),
(900, '6', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '15:19:58', 'Mantenimiento', NULL),
(901, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '15:20:09', 'Mantenimiento', NULL),
(902, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '15:20:13', 'Mantenimiento', NULL),
(903, '12', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-10', '15:21:29', 'taller', NULL),
(904, '10', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-10', '15:21:44', 'taller', NULL),
(905, '17', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-10', '15:22:10', 'taller', NULL),
(906, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '15:41:26', 'Mantenimiento', NULL),
(907, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '15:41:43', 'Mantenimiento', NULL),
(908, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '15:44:40', 'Mantenimiento', NULL),
(909, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-10', '16:18:21', 'Mantenimiento', NULL),
(910, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-10', '16:39:11', 'Seguridad Roles', NULL),
(911, '27589833', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '17:02:08', 'Usuario', NULL);

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
(1, 'EAP685', 'Oriana', 'Armas', '04127721356', '04160360067', 1),
(2, 'GAP173', 'ERWIN ELIAS', 'ARMAS GONZALEZ', '95589666', '04160360067', 1),
(3, '898PAJ4', 'Elias', '5654545', '200998899', '0412788593', 1),
(4, 'KOWP145', 'Luisa', 'loca', '12345', '144444', 1),
(5, 'KVT47V', 'zzzzz', 'sdszz6', '0123456789', '05485452854', 1),
(6, 'KOWP145', 'ccc', 'ccc', '0101084844', '04160360044', 1),
(7, 'KVT47V', 'xcxc', 'xccx', '12345667896', '89988888585', 1),
(8, 'ALA147', 'Juan', 'Jose Perez', '1223555', '04127773300', 0),
(9, 'ALA147', 'ASDFGHJKLOIUUU', 'FDF', '145789653', '14555896666', 1),
(10, '117788232', 'PETRONILO', 'PEREZ', '5956955', '02514483696', 1);

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
  `id_taller` int(11) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id_mantenimiento`, `kilometraje`, `tiempo`, `id_vehiculo`, `nombre`, `costo`, `fecha`, `status`, `id_taller`, `estado`) VALUES
(1, 300, '1', 8, 'Bujias', '5000', '2022-06-01', 1, 1, 0),
(2, 3500, '1', 15, 'Pastillas', '1000', '2022-06-02', 1, 3, 1),
(3, 300, '7', 9, 'Cambio de Aceite', '1500', '2022-02-15', 1, 2, 0),
(4, 16, '9', 35, 'Mant. programado', '4000', '2022-06-15', 1, 15, 0),
(5, 14, '8', 37, 'Bujias', '1500', '2022-06-08', 1, 10, 0),
(6, 30, '100', 13, 'Cambio de Aceite', '1400', '2022-06-09', 0, 14, 0),
(7, 30000, '100', 6, 'Mant programado', '9000', '2022-07-07', 0, 3, 2),
(8, 3000, '', 33, 'Cauchos', '4000', '2022-07-16', 1, 3, 0),
(9, 50000, '', 34, 'Luces', '4500', '2022-07-23', 1, 7, 0),
(10, 10000, '', 34, 'Bateria', '1600', '2022-07-29', 1, 9, 1),
(11, 10000, '', 10, 'Mant. programado', '47800', '2022-07-23', 1, 14, 2),
(12, 2000, '', 31, 'Cambio de Aceite', '47000', '2022-07-16', 1, 1, 2),
(13, 1500, '', 34, 'Mant. programado', '1209,0', '2022-07-22', 1, 2, 3),
(14, 8000, '', 30, 'Luces', '700,00', '2022-08-12', 1, 8, 0),
(15, 8000, '', 33, 'Luces', '700,00', '2022-08-12', 1, 8, 0),
(16, 8000, '', 42, 'Mant. programado', '3000', '2022-08-12', 1, 12, 2),
(17, 1234, '', 38, 'Cambio de Aceite', '5000', '2022-08-05', 1, 10, 2),
(18, 1457, '', 35, 'Cauchos', '4500', '2022-08-11', 1, 12, 2),
(19, 10000, '', 9, 'Anticongelante adicional', '20000', '2022-08-12', 1, 15, 1);

--
-- Disparadores `mantenimientos`
--
DELIMITER $$
CREATE TRIGGER `after_mantenimientos_update` BEFORE UPDATE ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_mantenimiento,'Mantenimiento', 'Se modifico un mantenimiento')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_mantenimientos_insertar` AFTER INSERT ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host, usuario, cedula, fecha, hora, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NEW.id_mantenimiento, NOW(), NOW(),'Mantenimiento', 'Se inserto un nuevo mantenimiento')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mantenimientos_delete` AFTER DELETE ON `mantenimientos` FOR EACH ROW INSERT INTO bitacora (host,usuario, fecha, hora, cedula, tabla, operacion) VALUES (substring(USER(), (INSTR (USER(), '@')+1)),CURRENT_USER, NOW(), NOW(),OLD.id_mantenimiento,'Mantenimientos', 'Se elimino un mantenimiento asociado a la placa señalada')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_notificacion` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `id_vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id_notificacion`, `estado`, `fecha`, `titulo`, `contenido`, `id_vehiculo`) VALUES
(124, 0, '2022-10-08', 'Mantenimiento preventivo EAP685', 'El vehículo EAP685 necesita mantenimiento de: filtro de aceite, y chequeo general.', 6),
(125, 0, '2022-10-08', 'Mantenimiento preventivo KVT47V', 'El vehículo KVT47V necesita mantenimiento de: filtro de aceite, y chequeo general.', 7),
(126, 0, '2022-10-08', 'Mantenimiento preventivo 898PAJ4', 'El vehículo 898PAJ4 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, y chequeo general.', 8),
(127, 0, '2022-10-08', 'Mantenimiento preventivo VAS654', 'El vehículo VAS654 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, y chequeo general.', 9),
(128, 0, '2022-10-08', 'Mantenimiento preventivo KOWP145', 'El vehículo KOWP145 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 10),
(129, 0, '2022-10-08', 'Mantenimiento preventivo YYA891', 'El vehículo YYA891 necesita mantenimiento de: filtro de aceite, y chequeo general.', 11),
(130, 0, '2022-10-08', 'Mantenimiento preventivo GAP173', 'El vehículo GAP173 necesita mantenimiento de: filtro de aceite, y chequeo general.', 12),
(131, 0, '2022-10-08', 'Mantenimiento preventivo ANA123', 'El vehículo ANA123 necesita mantenimiento de: filtro de aceite, y chequeo general.', 13),
(132, 0, '2022-10-08', 'Mantenimiento preventivo SANTI03', 'El vehículo SANTI03 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 14),
(133, 0, '2022-10-08', 'Mantenimiento preventivo ROA126', 'El vehículo ROA126 necesita mantenimiento de: filtro de aceite, y chequeo general.', 15),
(134, 0, '2022-10-08', 'Mantenimiento preventivo 6265541', 'El vehículo 6265541 necesita mantenimiento de: filtro de aceite, y chequeo general.', 30),
(135, 0, '2022-10-08', 'Mantenimiento preventivo LALI2300', 'El vehículo LALI2300 necesita mantenimiento de: filtro de aceite, y chequeo general.', 31),
(136, 0, '2022-10-08', 'Mantenimiento preventivo LALI23001', 'El vehículo LALI23001 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 32),
(137, 1, '2022-10-08', 'Mantenimiento preventivo 117788232', 'El vehículo 117788232 necesita mantenimiento de: filtro de aceite, y chequeo general.', 33),
(138, 0, '2022-10-08', 'Mantenimiento preventivo ALA147', 'El vehículo ALA147 necesita mantenimiento de: filtro de aceite, y chequeo general.', 34),
(139, 0, '2022-10-08', 'Mantenimiento preventivo PAP555', 'El vehículo PAP555 necesita mantenimiento de: filtro de aceite, y chequeo general.', 35),
(140, 0, '2022-10-08', 'Mantenimiento preventivo HAN788', 'El vehículo HAN788 necesita mantenimiento de: filtro de aceite, y chequeo general.', 36),
(141, 0, '2022-10-08', 'Mantenimiento preventivo QQQ778', 'El vehículo QQQ778 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 37),
(142, 0, '2022-10-08', 'Mantenimiento preventivo ELI778', 'El vehículo ELI778 necesita mantenimiento de: filtro de aceite, y chequeo general.', 39),
(143, 0, '2022-10-08', 'Mantenimiento preventivo 445444', 'El vehículo 445444 necesita mantenimiento de: filtro de aceite, y chequeo general.', 40),
(144, 0, '2022-10-08', 'Mantenimiento preventivo 699PAV', 'El vehículo 699PAV necesita mantenimiento de: filtro de aceite, y chequeo general.', 41),
(145, 0, '2022-10-08', 'Mantenimiento preventivo 555TRB', 'El vehículo 555TRB necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, y chequeo general.', 42),
(146, 0, '2022-10-08', 'Mantenimiento preventivo DFGDF', 'El vehículo DFGDF necesita mantenimiento de: filtro de aceite, y chequeo general.', 43),
(147, 0, '2022-10-08', 'Mantenimiento preventivo AKA878', 'El vehículo AKA878 necesita mantenimiento de: filtro de aceite, y chequeo general.', 44),
(148, 1, '2022-10-08', 'Mantenimiento preventivo PPA990', 'El vehículo PPA990 necesita mantenimiento de: filtro de aceite, y chequeo general.', 45),
(149, 0, '2022-10-08', 'Mantenimiento preventivo RTS000', 'El vehículo RTS000 necesita mantenimiento de: filtro de aceite, y chequeo general.', 46),
(150, 0, '2022-10-08', 'Mantenimiento preventivo PPO777', 'El vehículo PPO777 necesita mantenimiento de: filtro de aceite, y chequeo general.', 47),
(151, 0, '2022-08-10', 'Mantenimiento preventivo requerido para EAP685', 'El vehículo EAP685 necesita mantenimiento de: filtro de aceite, y chequeo general.', 6),
(152, 0, '2022-08-10', 'Mantenimiento preventivo requerido para KVT47V', 'El vehículo KVT47V necesita mantenimiento de: filtro de aceite, y chequeo general.', 7),
(153, 0, '2022-08-10', 'Mantenimiento preventivo requerido para 898PAJ4', 'El vehículo 898PAJ4 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, y chequeo general.', 8),
(154, 0, '2022-08-10', 'Mantenimiento preventivo requerido para VAS654', 'El vehículo VAS654 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, y chequeo general.', 9),
(155, 0, '2022-08-10', 'Mantenimiento preventivo requerido para KOWP145', 'El vehículo KOWP145 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 10),
(156, 0, '2022-08-10', 'Mantenimiento preventivo requerido para YYA891', 'El vehículo YYA891 necesita mantenimiento de: filtro de aceite, y chequeo general.', 11),
(157, 0, '2022-08-10', 'Mantenimiento preventivo requerido para GAP173', 'El vehículo GAP173 necesita mantenimiento de: filtro de aceite, y chequeo general.', 12),
(158, 0, '2022-08-10', 'Mantenimiento preventivo requerido para ANA123', 'El vehículo ANA123 necesita mantenimiento de: filtro de aceite, y chequeo general.', 13),
(159, 0, '2022-08-10', 'Mantenimiento preventivo requerido para SANTI03', 'El vehículo SANTI03 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 14),
(160, 0, '2022-08-10', 'Mantenimiento preventivo requerido para ROA126', 'El vehículo ROA126 necesita mantenimiento de: filtro de aceite, y chequeo general.', 15),
(161, 0, '2022-08-10', 'Mantenimiento preventivo requerido para 6265541', 'El vehículo 6265541 necesita mantenimiento de: filtro de aceite, y chequeo general.', 30),
(162, 0, '2022-08-10', 'Mantenimiento preventivo requerido para LALI2300', 'El vehículo LALI2300 necesita mantenimiento de: filtro de aceite, y chequeo general.', 31),
(163, 0, '2022-08-10', 'Mantenimiento preventivo requerido para LALI23001', 'El vehículo LALI23001 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 32),
(164, 0, '2022-08-10', 'Mantenimiento preventivo requerido para 117788232', 'El vehículo 117788232 necesita mantenimiento de: filtro de aceite, y chequeo general.', 33),
(165, 0, '2022-08-10', 'Mantenimiento preventivo requerido para ALA147', 'El vehículo ALA147 necesita mantenimiento de: filtro de aceite, y chequeo general.', 34),
(166, 0, '2022-08-10', 'Mantenimiento preventivo requerido para PAP555', 'El vehículo PAP555 necesita mantenimiento de: filtro de aceite, y chequeo general.', 35),
(167, 0, '2022-08-10', 'Mantenimiento preventivo requerido para HAN788', 'El vehículo HAN788 necesita mantenimiento de: filtro de aceite, y chequeo general.', 36),
(168, 0, '2022-08-10', 'Mantenimiento preventivo requerido para QQQ778', 'El vehículo QQQ778 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, y chequeo general.', 37),
(169, 0, '2022-08-10', 'Mantenimiento preventivo requerido para ELI778', 'El vehículo ELI778 necesita mantenimiento de: filtro de aceite, y chequeo general.', 39),
(170, 0, '2022-08-10', 'Mantenimiento preventivo requerido para 445444', 'El vehículo 445444 necesita mantenimiento de: filtro de aceite, y chequeo general.', 40),
(171, 0, '2022-08-10', 'Mantenimiento preventivo requerido para 699PAV', 'El vehículo 699PAV necesita mantenimiento de: filtro de aceite, y chequeo general.', 41),
(172, 0, '2022-08-10', 'Mantenimiento preventivo requerido para 555TRB', 'El vehículo 555TRB necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, y chequeo general.', 42),
(173, 0, '2022-08-10', 'Mantenimiento preventivo requerido para DFGDF', 'El vehículo DFGDF necesita mantenimiento de: filtro de aceite, y chequeo general.', 43),
(174, 0, '2022-08-10', 'Mantenimiento preventivo requerido para AKA878', 'El vehículo AKA878 necesita mantenimiento de: filtro de aceite, y chequeo general.', 44),
(175, 0, '2022-08-10', 'Mantenimiento preventivo requerido para PPA990', 'El vehículo PPA990 necesita mantenimiento de: filtro de aceite, y chequeo general.', 45),
(176, 0, '2022-08-10', 'Mantenimiento preventivo requerido para RTS000', 'El vehículo RTS000 necesita mantenimiento de: filtro de aceite, y chequeo general.', 46),
(177, 0, '2022-08-10', 'Mantenimiento preventivo requerido para PPO777', 'El vehículo PPO777 necesita mantenimiento de: filtro de aceite, y chequeo general.', 47);

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
(0, 'permiso general', 1, '2022-08-05', '2022-08-04'),
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
(1, 8, 'Sillas quebradas', '2000', '2022-07-07', 'exploto una luz tracera', 1, 4),
(2, 1, 'Bombilla', '800,00', '2022-06-30', 'exploto una luz tracera', 1, 9),
(3, 9, 'Electromaquina', '47744', '2022-07-15', 'cambio de cauchos', 1, 13),
(4, 9, 'Microventilador', '45', '2022-07-23', 'permiso de perrear', 1, 14),
(5, 7, 'Amortiguadores', '9000', '2022-08-04', 'permiso de perrear', 1, 16);

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
(4, 'Chofer', 'solo consulta rutas y vehiculos', 1),
(5, 'Prueba', 'permiso de perrearaaa', 1),
(6, 'administradorl', 'permiso de perrear', 1);

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
(3, 1, '0000-00-00', '0000-00-00'),
(3, 5, '0000-00-00', '0000-00-00'),
(3, 9, '0000-00-00', '0000-00-00'),
(3, 13, '0000-00-00', '0000-00-00'),
(3, 18, '0000-00-00', '0000-00-00'),
(3, 22, '0000-00-00', '0000-00-00'),
(3, 26, '0000-00-00', '0000-00-00'),
(3, 30, '0000-00-00', '0000-00-00'),
(4, 6, '0000-00-00', '0000-00-00'),
(4, 8, '0000-00-00', '0000-00-00'),
(4, 7, '0000-00-00', '0000-00-00'),
(4, 13, '0000-00-00', '0000-00-00'),
(4, 22, '0000-00-00', '0000-00-00'),
(5, 30, '0000-00-00', '0000-00-00'),
(2, 1, '0000-00-00', '0000-00-00'),
(2, 3, '0000-00-00', '0000-00-00'),
(2, 5, '0000-00-00', '0000-00-00'),
(2, 8, '0000-00-00', '0000-00-00'),
(2, 11, '0000-00-00', '0000-00-00'),
(2, 13, '0000-00-00', '0000-00-00'),
(2, 15, '0000-00-00', '0000-00-00'),
(2, 21, '0000-00-00', '0000-00-00'),
(2, 30, '0000-00-00', '0000-00-00'),
(3, 1, '0000-00-00', '0000-00-00'),
(3, 5, '0000-00-00', '0000-00-00'),
(3, 9, '0000-00-00', '0000-00-00'),
(3, 13, '0000-00-00', '0000-00-00'),
(3, 18, '0000-00-00', '0000-00-00'),
(3, 22, '0000-00-00', '0000-00-00'),
(3, 26, '0000-00-00', '0000-00-00'),
(3, 30, '0000-00-00', '0000-00-00'),
(4, 6, '0000-00-00', '0000-00-00'),
(4, 8, '0000-00-00', '0000-00-00'),
(4, 7, '0000-00-00', '0000-00-00'),
(4, 13, '0000-00-00', '0000-00-00'),
(4, 22, '0000-00-00', '0000-00-00'),
(5, 30, '0000-00-00', '0000-00-00'),
(2, 1, '0000-00-00', '0000-00-00'),
(2, 3, '0000-00-00', '0000-00-00'),
(2, 5, '0000-00-00', '0000-00-00'),
(2, 8, '0000-00-00', '0000-00-00'),
(2, 11, '0000-00-00', '0000-00-00'),
(2, 13, '0000-00-00', '0000-00-00'),
(2, 15, '0000-00-00', '0000-00-00'),
(2, 21, '0000-00-00', '0000-00-00'),
(2, 30, '0000-00-00', '0000-00-00'),
(1, 1, '0000-00-00', '0000-00-00'),
(1, 2, '0000-00-00', '0000-00-00'),
(1, 3, '0000-00-00', '0000-00-00'),
(1, 4, '0000-00-00', '0000-00-00'),
(1, 5, '0000-00-00', '0000-00-00'),
(1, 6, '0000-00-00', '0000-00-00'),
(1, 8, '0000-00-00', '0000-00-00'),
(1, 7, '0000-00-00', '0000-00-00'),
(1, 9, '0000-00-00', '0000-00-00'),
(1, 10, '0000-00-00', '0000-00-00'),
(1, 11, '0000-00-00', '0000-00-00'),
(1, 12, '0000-00-00', '0000-00-00'),
(1, 13, '0000-00-00', '0000-00-00'),
(1, 14, '0000-00-00', '0000-00-00'),
(1, 15, '0000-00-00', '0000-00-00'),
(1, 16, '0000-00-00', '0000-00-00'),
(1, 18, '0000-00-00', '0000-00-00'),
(1, 19, '0000-00-00', '0000-00-00'),
(1, 21, '0000-00-00', '0000-00-00'),
(1, 20, '0000-00-00', '0000-00-00'),
(1, 22, '0000-00-00', '0000-00-00'),
(1, 23, '0000-00-00', '0000-00-00'),
(1, 24, '0000-00-00', '0000-00-00'),
(1, 25, '0000-00-00', '0000-00-00'),
(1, 26, '0000-00-00', '0000-00-00'),
(1, 27, '0000-00-00', '0000-00-00'),
(1, 28, '0000-00-00', '0000-00-00'),
(1, 29, '0000-00-00', '0000-00-00'),
(1, 30, '0000-00-00', '0000-00-00');

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
(7, '898PAJ4', 'Barrio Union', 'calle cuatro con seis hasta la macias', '13:15:00', '350', 1, 44, '2022-08-03', '2022-08-04'),
(10, 'GAP173', 'Corrido Rapido', 'Centro Ciudad', '23:29:00', '400', 0, 5, '2022-07-22', '2022-07-21'),
(20, 'ELI778', 'El tostao', 'El caribe trece con dos', '14:35:00', '140', 1, 1, '2022-07-18', '2022-07-18'),
(17, 'LALI23001', 'Francia Paris', 'av la salle con corpahuaico 44', '03:02:00', '450', 1, 0, NULL, NULL),
(21, '699PAV', 'Hno juan', 'av la salle con corpahuaico', '20:13:00', '40', 1, 4, '2022-07-01', '2022-07-01'),
(22, 'PPA990', 'Nueva Paz', '44 con 52', '07:44:00', '200', 1, 4, '2022-07-08', '2022-07-21'),
(23, 'AKA878', 'Oceano', 'La playa', '19:47:00', '830', 1, 4, '2022-07-22', '2022-07-19'),
(11, 'ORIANA123', 'Oeste centro', 'pescadito cuatro con catorce', '22:07:00', '150', 1, 0, NULL, NULL),
(19, 'GAP173', 'Santa Rosalia', 'avenida cinco con trece', '17:18:00', '200', 1, 0, NULL, NULL),
(12, 'YYLA891', 'UPTAEB', 'av la salle con corpahuaico', '12:15:00', '300', 1, 0, NULL, NULL),
(16, 'LALI2300', 'UPTAEB-CENTRO', 'Lara', '17:54:00', '700', 1, 0, NULL, NULL),
(18, 'EAP685', 'UPTAEBaa', 'Pueblo Nuevo con calle tres', '14:24:00', '650', 1, 4, '2022-07-23', '2022-07-25'),
(24, 'PPO777', 'Zona Industrial', 'cerca de babilon zona 2', '14:45:00', '740', 1, 14, '2022-08-05', '2022-08-04'),
(1, 'KOWP145', 'Zona Norte', 'Zona norte, Yucatan', '12:30:00', '1,5', 1, 10, '2022-07-09', '2022-07-14'),
(13, 'KVT47V', 'el espanto', 'la cartorce', '01:15:00', '10,0', 1, 4, '2022-07-29', '2022-08-06'),
(14, 'ROA126', 'hno juan', 'av las industrial', '16:19:00', '160', 1, 0, NULL, NULL),
(15, 'OGA1703', 'upteb-oeste macias', 'Macias Mujica bloque 24', '00:15:00', '950', 1, 0, NULL, NULL);

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
-- Estructura de tabla para la tabla `seguridad_preguntas`
--

CREATE TABLE `seguridad_preguntas` (
  `id_s_pregunta` int(11) NOT NULL,
  `preguntauno` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `respuestauno` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `img` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `seguridad_preguntas`
--

INSERT INTO `seguridad_preguntas` (`id_s_pregunta`, `preguntauno`, `respuestauno`, `id_usuario`, `img`) VALUES
(16, '¿Dulce favorito?', 'torta', 8, ''),
(22, '¿Donde estudiaste?', 'Jose M. Dominguez', 9, '');

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
(3, 'E-12348369-1', 'Michellin', 'calle cinco', '02512344581', 1),
(4, 'J-17031998', 'Fernandez ', '60 con 13', '025144778869', 1),
(6, 'J-30868368', 'Kiara', 'SantaIsabel', '02517786942', 1),
(7, 'J-78455133', 'La Ingra', 'El araguaney', '04148756312', 1),
(8, 'V-26561633', 'Las Shakiras', 'barrio Union', '04145448669', 0),
(9, 'J-59745526', 'Twigns', 'Macias Mujica', '041454487922', 1),
(10, 'J-12345678-7', 'El juancho', 'CALLE QUINTA', '04145448669', 1),
(11, 'G-96017881-6', 'Tarara', 'av Principal con dos', '14547788205', 1),
(12, 'J-15010101-9', 'Los aprendices', 'Waikiki', '04127721353', 1),
(13, 'J-14287821-9', 'El mar', 'Waikiki', '04127721353', 1),
(14, 'J-00000001', 'Waikiki', 'Santos Luzardo', '02514423626', 1),
(15, 'E-65893442-5', 'Gitana', 'JKHJKJ', '04127721353', 1),
(16, 'J-78482212-1', 'Sabaracatiki', 'Santos Luzardo', '45555457474', 1),
(17, 'P-87654321-0', 'YiaQ', 'VCFDBGFB', '025144477896', 1);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `cedula` varchar(100) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(20) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(20) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `rol` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `correo` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `usuario`, `nombre`, `apellido`, `contrasena`, `rol`, `status`, `correo`) VALUES
(1, '26561633', 'ogap', 'Oriana ', 'Armas', '$%%$$%%$$%%$%$$/%%$$$%$$%%$$%$$', 1, 1, 'armasoriana98@gmail.com'),
(2, '98657412', 'ogapcvc55', 'Miguel', 'Martinez Ochoa', '$2y$08$Mn0YrbQrsMG88RMYvfXtXen7x60mh7gRpCl.H6ZBZh3cx91q6/kem', 1, 1, 'administrador@gmail.com'),
(3, '9867412', 'Gilspa14-', 'Gilmary', 'Sanz', '$2y$08$FI5pnj2O2rnk4ajsoKBUT.wNtcFYwyUjWISYQtO//4IXeOUHGu/ui', 2, 1, 'fddf@gmail.com'),
(4, '13547896', 'Santi_14', 'Santiago', 'Armas', '$2y$08$LtXlHpZs8X7niTqiXttpieXePDSq5Tjh1LaCEY3TGnjjO9l0/jOhe', 3, 1, 'armasoriana98@gmail.com'),
(6, '141413500', 'francho23_', 'Franklin', 'Martinez', '$2y$08$RSdg.ZwO30K69vZ.xFtHXeeWI0pxkqEN56tVK8fy7IyW4vv/ixIDi', 3, 1, 'usuario@gmail.com'),
(7, '108471011', 'Eliza1', 'Elizabeth', 'Mendoza', '$2y$08$QLNMNC6d5DovklICR.U8w./LSqJm6GuwaV973rb.YcHwX7X5EQKk.', 1, 1, 'usuario@gmail.com'),
(8, '95589111', 'jmarquez17', 'Juan', 'Marquez', '$2y$08$lRqnKK1I.z2WRIN61Y5Ouu6dC1dg37WTazb54dCK4qinoPvyO4V92', 4, 1, 'armasoriana98@gmail.comddd'),
(9, '275898333', 'hectorDNC', 'Hector', 'Noguera', '$2y$08$Tv5oCyxcMGMzn8PNGqiY6eSBtsq5Sacx4tlOOBagkV59h7KKs0tVG', 1, 1, 'armasoriana98@gmail.com');

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
(6, 'EAP685', 'Dodge', 'Operativo', NULL, '5000', NULL, 1),
(7, 'KVT47V', 'BEDFORD', 'Operativo', NULL, '2000', NULL, 1),
(8, '898PAJ4', 'Dodge', 'Operativo', NULL, '10000', NULL, 1),
(9, 'VAS654', 'Caio', 'Operativo', NULL, '20000', NULL, 1),
(10, 'KOWP145', 'Encava', 'Operativo', NULL, '45000', NULL, 0),
(11, 'YYA891', 'Kia', 'Operativo', NULL, '1500', NULL, 1),
(12, 'GAP173', 'BEDFORD', 'Operativo', NULL, '5000', NULL, 1),
(13, 'ANA123', 'Encava', 'Operativo', NULL, '9000', NULL, 1),
(14, 'SANTI03', 'Kia', 'Operativo', NULL, '35000', NULL, 1),
(15, 'ROA126', 'BEDFORD', 'Operativo', NULL, '6900', NULL, 1),
(30, '6265541', NULL, NULL, 'preventivo', '3004', 1, 1),
(31, 'LALI2300', 'Encava', 'Operativo', NULL, '6000', NULL, 1),
(32, 'LALI23001', 'Encava', 'Operativo', NULL, '47900', NULL, 1),
(33, '117788232', 'Otro', 'Operativo', NULL, '8000', NULL, 1),
(34, 'ALA147', 'BEDFORD', 'Operativo', NULL, '6000', NULL, 1),
(35, 'PAP555', 'Caio', 'Inoperativo', NULL, '2000', NULL, 1),
(36, 'HAN788', 'Kia', 'Operativo', NULL, '1500', NULL, 1),
(37, 'QQQ778', 'Kia', 'Operativo', NULL, '98000', NULL, 1),
(38, 'TOR126', 'Caio', 'Inoperativo', NULL, '14,5', NULL, 1),
(39, 'ELI778', 'BEDFORD', 'Operativo', NULL, '4000', NULL, 1),
(40, '445444', 'Caio', 'Inoperativo', NULL, '4500', NULL, 1),
(41, '699PAV', 'Yutong', 'Operativo', NULL, '1457', NULL, 1),
(42, '555TRB', 'Caio', 'Operativo', NULL, '10000', NULL, 1),
(43, 'DFGDF', 'BEDFORD', 'Inoperativo', NULL, '4000', NULL, 1),
(44, 'AKA878', 'Caio', 'Inoperativo', NULL, '1500,0', NULL, 1),
(45, 'PPA990', 'Autopago', 'Inoperativo', NULL, '75,0', NULL, 1),
(46, 'RTS000', 'Dodge', 'Inoperativo', NULL, '45,00', NULL, 1),
(47, 'PPO777', 'Caio', 'Operativo', NULL, '145,00', NULL, 1),
(48, 'LPB142', 'Encava', 'Operativo', NULL, '6,00', NULL, 1);

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
  ADD PRIMARY KEY (`id_notificacion`);

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
  ADD KEY `fk_permiso_id` (`permisos_id`),
  ADD KEY `fk_rol_idd` (`rol_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`nombre_ruta`),
  ADD KEY `placa` (`placa`);

--
-- Indices de la tabla `seguridad_preguntas`
--
ALTER TABLE `seguridad_preguntas`
  ADD PRIMARY KEY (`id_s_pregunta`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

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
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=912;

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id_choferes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `id_reparaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `seguridad_preguntas`
--
ALTER TABLE `seguridad_preguntas`
  MODIFY `id_s_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
