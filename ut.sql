-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2022 a las 19:35:07
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
(911, '27589833', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-10', '17:02:08', 'Usuario', NULL),
(912, '27589833', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '10:35:56', 'Usuario', NULL),
(913, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '10:39:39', 'Usuario', NULL),
(914, '25474616', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '10:48:45', 'Usuario', NULL),
(915, '95589111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '11:38:21', 'Usuario', NULL),
(916, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '11:38:27', 'Usuario', NULL),
(917, '14141350', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '11:38:32', 'Usuario', NULL),
(918, '10847101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '11:38:43', 'Usuario', NULL),
(919, '10847101', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '11:38:46', 'Usuario', NULL),
(920, '27589833', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '11:38:56', 'Usuario', NULL),
(921, '25474610', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '11:40:17', 'Usuario', NULL),
(922, '25474616', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '11:46:22', 'Usuario', NULL),
(923, '25474616', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '11:53:06', 'Usuario', NULL),
(924, '25474616', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '11:59:06', 'Usuario', NULL),
(925, '26561638', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '12:21:28', 'Usuario', NULL),
(926, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '12:24:10', 'Usuario', NULL),
(927, '25474616', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '12:25:44', 'Usuario', NULL),
(928, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '12:27:49', 'Usuario', NULL),
(929, '25474688', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '12:59:04', 'Usuario', NULL),
(930, '25474616', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(931, '25474610', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(932, '25474616', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(933, '25474616', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(934, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(935, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(936, '25474688', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-12', '13:00:26', 'Usuario', NULL),
(937, '25474000', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '13:00:55', 'Usuario', NULL),
(938, '26561665', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '13:03:28', 'Usuario', NULL),
(939, '79355252', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '13:06:52', 'Usuario', NULL),
(940, '26561635', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '13:08:42', 'Usuario', NULL),
(941, '25474000', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '14:01:29', 'Usuario', NULL),
(942, '25474000', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '14:01:46', 'Usuario', NULL),
(943, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-12', '14:01:56', 'Usuario', NULL),
(944, '24000123', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '14:57:20', 'Usuario', NULL),
(945, '25474040', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:03:29', 'Usuario', NULL),
(946, '25474040', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:04:54', 'Usuario', NULL),
(947, '25474041', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:08:44', 'Usuario', NULL),
(948, '32343434', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:13:28', 'Usuario', NULL),
(949, '32343412', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:14:54', 'Usuario', NULL),
(950, '26561000', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:18:21', 'Usuario', NULL),
(951, '26561001', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:34:29', 'Usuario', NULL),
(952, '26561077', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:35:54', 'Usuario', NULL),
(953, '41745222', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:44:15', 'Usuario', NULL),
(954, '99658522', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:48:44', 'Usuario', NULL),
(955, '25474614', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:49:55', 'Usuario', NULL),
(956, '52464165', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '15:57:40', 'Usuario', NULL),
(957, '25474444', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '16:02:10', 'Usuario', NULL),
(958, '98473354', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-12', '16:03:56', 'Usuario', NULL),
(959, '6', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-17', '12:56:13', 'Mantenimiento', NULL),
(960, '14', 'root@localhost', 'Se registro una nueva reparacion', 'localhost', '2022-08-17', '13:07:51', 'Reparaciones', NULL),
(961, '8', 'root@localhost', 'Se modifico una reparacion', 'localhost', '2022-08-17', '13:08:22', 'Reparacion', NULL),
(962, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-17', '20:45:27', 'Mantenimiento', NULL),
(963, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '22:50:41', 'Usuario', NULL),
(964, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '22:59:25', 'Usuario', NULL),
(965, '26561365', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-17', '23:07:56', 'Usuario', NULL),
(966, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:20:56', 'Usuario', NULL),
(967, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:21:45', 'Usuario', NULL),
(968, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:27:59', 'Usuario', NULL),
(969, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:28:26', 'Usuario', NULL),
(970, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:32:00', 'Usuario', NULL),
(971, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:32:06', 'Usuario', NULL),
(972, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:34:57', 'Usuario', NULL),
(973, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:35:26', 'Usuario', NULL),
(974, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:39:20', 'Usuario', NULL),
(975, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:41:07', 'Usuario', NULL),
(976, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:42:29', 'Usuario', NULL),
(977, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:43:22', 'Usuario', NULL),
(978, '95589111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:45:02', 'Usuario', NULL),
(979, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:46:48', 'Usuario', NULL),
(980, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:46:51', 'Usuario', NULL),
(981, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:47:04', 'Usuario', NULL),
(982, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:47:58', 'Usuario', NULL),
(983, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:51:35', 'Usuario', NULL),
(984, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:52:12', 'Usuario', NULL),
(985, '30868386', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-17', '23:54:10', 'Usuario', NULL),
(986, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:57:17', 'Usuario', NULL),
(987, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:58:27', 'Usuario', NULL),
(988, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-17', '23:59:37', 'Usuario', NULL),
(989, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:01:45', 'Usuario', NULL),
(990, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:03:23', 'Usuario', NULL),
(991, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:04:03', 'Usuario', NULL),
(992, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:05:48', 'Usuario', NULL),
(993, '30868386', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:08:01', 'Usuario', NULL),
(994, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:09:56', 'Usuario', NULL),
(995, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:10:00', 'Usuario', NULL),
(996, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:10:10', 'Usuario', NULL),
(997, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:10:21', 'Usuario', NULL),
(998, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:10:36', 'Usuario', NULL),
(999, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:12:05', 'Usuario', NULL),
(1000, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '00:16:23', 'Usuario', NULL),
(1001, '21', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-08-18', '11:16:44', 'Ruta', NULL),
(1002, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '20:40:36', 'Usuario', NULL),
(1003, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '20:43:14', 'Usuario', NULL),
(1004, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '20:54:46', 'Usuario', NULL),
(1005, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '20:54:49', 'Usuario', NULL),
(1006, '2656144', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-18', '20:55:52', 'Usuario', NULL),
(1007, '26561377', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-18', '21:02:20', 'Usuario', NULL),
(1008, '2656144', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:05:11', 'Usuario', NULL),
(1009, '2656144', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:07:51', 'Usuario', NULL),
(1010, '2656144', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:08:29', 'Usuario', NULL),
(1011, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:09:02', 'Usuario', NULL),
(1012, '2656144', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:27:07', 'Usuario', NULL),
(1013, '2656144', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:32:09', 'Usuario', NULL),
(1014, '26561001', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:34:50', 'Usuario', NULL),
(1015, '26561001', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:34:55', 'Usuario', NULL),
(1017, '26561000', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:37:20', 'Usuario', NULL),
(1018, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:42:48', 'Usuario', NULL),
(1019, '25474000', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-18', '21:44:38', 'Usuario', NULL),
(1020, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-18', '22:59:38', 'Mantenimiento', NULL),
(1021, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-18', '23:01:07', 'Mantenimiento', NULL),
(1022, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-18', '23:02:39', 'Mantenimiento', NULL),
(1023, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-18', '23:07:42', 'Mantenimiento', NULL),
(1024, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '09:59:42', 'Usuario', NULL),
(1025, '14141350', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '09:59:48', 'Usuario', NULL),
(1026, '26561000', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:00:21', 'Usuario', NULL),
(1027, '26561001', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:00:21', 'Usuario', NULL),
(1028, '26561077', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:00:21', 'Usuario', NULL),
(1029, '99658522', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1030, '25474614', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1031, '52464165', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1032, '25474444', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1033, '26561365', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1034, '30868386', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1035, '2656144', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '10:01:16', 'Usuario', NULL),
(1036, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:01:50', 'Usuario', NULL),
(1037, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:02:02', 'Usuario', NULL),
(1038, '14141350', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:02:10', 'Usuario', NULL),
(1039, '14141350', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:02:15', 'Usuario', NULL),
(1040, '26561635', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:02:50', 'Usuario', NULL),
(1041, '79355252', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:03:08', 'Usuario', NULL),
(1042, '26561665', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:03:17', 'Usuario', NULL),
(1043, '25474000', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:03:32', 'Usuario', NULL),
(1044, '25474616', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:03:46', 'Usuario', NULL),
(1045, '26561638', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:03:54', 'Usuario', NULL),
(1046, '25474616', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:04:04', 'Usuario', NULL),
(1047, '95589111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:04:25', 'Usuario', NULL),
(1048, '98473354', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:04:46', 'Usuario', NULL),
(1049, '25474040', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:04:56', 'Usuario', NULL),
(1050, '25474040', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:06', 'Usuario', NULL),
(1051, '25474040', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:11', 'Usuario', NULL),
(1052, '25474041', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:21', 'Usuario', NULL),
(1053, '32343434', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:29', 'Usuario', NULL),
(1054, '32343434', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:35', 'Usuario', NULL),
(1055, '32343412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:47', 'Usuario', NULL),
(1056, '32343412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '10:05:54', 'Usuario', NULL),
(1057, '25474616', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '13:30:09', 'Usuario', NULL),
(1058, '41745222', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '13:30:43', 'Usuario', NULL),
(1059, '25474616', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '13:30:53', 'Usuario', NULL),
(1060, '26561635', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-19', '13:31:26', 'Usuario', NULL),
(1061, '88665742', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-19', '17:42:20', 'Usuario', NULL),
(1064, '88665742', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '17:44:35', 'Usuario', NULL),
(1065, '88665742', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-19', '17:46:42', 'Usuario', NULL),
(1066, '2', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-19', '20:33:59', 'taller', NULL),
(1067, '3', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-19', '20:35:02', 'taller', NULL),
(1068, '7', 'root@localhost', 'Se creo un nuevo rol', 'localhost', '2022-08-20', '23:17:08', ' Seguridad Roles', NULL),
(1069, '6', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-20', '23:17:20', 'Seguridad Roles', NULL),
(1070, '5', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-20', '23:17:44', 'Seguridad Roles', NULL),
(1071, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-20', '23:20:11', 'Mantenimiento', NULL),
(1072, '35457852', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-21', '23:58:57', 'Usuario', NULL),
(1073, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:13:14', 'Mantenimiento', NULL),
(1074, '5', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:14:02', 'Mantenimiento', NULL),
(1075, '20', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-22', '10:15:31', 'Mantenimiento', NULL),
(1076, '7', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:02', 'Mantenimiento', NULL),
(1077, '11', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:07', 'Mantenimiento', NULL),
(1078, '12', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:10', 'Mantenimiento', NULL),
(1079, '13', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:15', 'Mantenimiento', NULL),
(1080, '18', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:18', 'Mantenimiento', NULL),
(1081, '17', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:22', 'Mantenimiento', NULL),
(1082, '16', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:17:24', 'Mantenimiento', NULL),
(1083, '21', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-22', '10:45:12', 'Mantenimiento', NULL),
(1084, '5', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:56:03', 'Mantenimiento', NULL),
(1085, '9', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:59:31', 'Mantenimiento', NULL),
(1086, '21', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '10:59:48', 'Mantenimiento', NULL),
(1087, '7', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:00:16', 'Mantenimiento', NULL),
(1088, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:10:15', 'Mantenimiento', NULL),
(1089, '9', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:17:59', 'Mantenimiento', NULL),
(1090, '9', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:02', 'Mantenimiento', NULL),
(1091, '9', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:06', 'Mantenimiento', NULL),
(1092, '9', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:07', 'Mantenimiento', NULL),
(1093, '9', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:09', 'Mantenimiento', NULL),
(1094, '11', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:13', 'Mantenimiento', NULL),
(1095, '14', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:18', 'Mantenimiento', NULL),
(1096, '15', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:23', 'Mantenimiento', NULL),
(1097, '21', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:33', 'Mantenimiento', NULL),
(1098, '19', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:18:44', 'Mantenimiento', NULL),
(1099, '8', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:20', 'Mantenimiento', NULL),
(1100, '6', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:30', 'Mantenimiento', NULL),
(1101, '10', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:36', 'Mantenimiento', NULL),
(1102, '13', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:41', 'Mantenimiento', NULL),
(1103, '16', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:45', 'Mantenimiento', NULL),
(1104, '17', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:50', 'Mantenimiento', NULL),
(1105, '20', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:19:56', 'Mantenimiento', NULL),
(1106, '21', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:20:00', 'Mantenimiento', NULL),
(1107, '1', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1108, '2', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1109, '3', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1110, '4', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1111, '5', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1112, '6', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1113, '7', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1114, '8', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1115, '9', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1116, '10', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1117, '11', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1118, '12', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1119, '13', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1120, '14', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1121, '15', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1122, '16', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1123, '17', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1124, '18', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1125, '19', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1126, '20', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1127, '21', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-22', '11:22:24', 'Mantenimientos', NULL),
(1128, '1', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-22', '11:46:52', 'Mantenimiento', NULL),
(1129, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:47:59', 'Mantenimiento', NULL),
(1130, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:48:17', 'Mantenimiento', NULL),
(1131, '2', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-22', '11:49:42', 'Mantenimiento', NULL),
(1132, '3', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-22', '11:50:33', 'Mantenimiento', NULL),
(1133, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:50:47', 'Mantenimiento', NULL),
(1134, '3', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-22', '11:51:08', 'Mantenimiento', NULL),
(1135, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '11:55:26', 'Usuario', NULL),
(1136, '24000123', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:02:56', 'Usuario', NULL),
(1137, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:07:18', 'Usuario', NULL),
(1138, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:07:30', 'Usuario', NULL),
(1139, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:07:43', 'Usuario', NULL),
(1140, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:10:07', 'Usuario', NULL),
(1141, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:10:59', 'Usuario', NULL),
(1142, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:11:04', 'Usuario', NULL),
(1143, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:11:57', 'Usuario', NULL),
(1144, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:21:09', 'Usuario', NULL),
(1145, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:22:10', 'Usuario', NULL),
(1146, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:24:31', 'Usuario', NULL),
(1147, '24000123', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:26:37', 'Usuario', NULL),
(1148, '24000123', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:26:48', 'Usuario', NULL),
(1149, '24000123', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:27:44', 'Usuario', NULL),
(1150, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:30:21', 'Usuario', NULL),
(1151, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:30:35', 'Usuario', NULL),
(1152, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:31:41', 'Usuario', NULL),
(1153, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:35:02', 'Usuario', NULL),
(1154, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:36:08', 'Usuario', NULL),
(1155, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:36:44', 'Usuario', NULL),
(1156, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:39:07', 'Usuario', NULL),
(1157, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:39:32', 'Usuario', NULL),
(1158, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:39:55', 'Usuario', NULL),
(1159, '95589111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:40:46', 'Usuario', NULL),
(1160, '95589111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:41:26', 'Usuario', NULL),
(1161, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:45:40', 'Usuario', NULL),
(1162, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:47:14', 'Usuario', NULL),
(1163, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:50:51', 'Usuario', NULL),
(1164, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:52:18', 'Usuario', NULL),
(1165, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:56:42', 'Usuario', NULL),
(1166, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:57:24', 'Usuario', NULL),
(1167, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '12:58:57', 'Usuario', NULL),
(1168, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:00:55', 'Usuario', NULL),
(1169, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:05:41', 'Usuario', NULL),
(1170, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:06:22', 'Usuario', NULL),
(1171, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:06:57', 'Usuario', NULL),
(1172, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:09:36', 'Usuario', NULL),
(1173, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:14:05', 'Usuario', NULL),
(1174, '95589144', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-22', '13:15:53', 'Usuario', NULL),
(1175, '9867444', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-22', '13:42:28', 'Usuario', NULL),
(1176, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:46:54', 'Usuario', NULL),
(1177, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:47:33', 'Usuario', NULL),
(1178, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:55:37', 'Usuario', NULL),
(1179, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '13:56:48', 'Usuario', NULL),
(1180, '9867444', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '14:03:26', 'Usuario', NULL),
(1181, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '14:18:02', 'Usuario', NULL),
(1182, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '14:20:46', 'Usuario', NULL),
(1183, '21', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-08-22', '14:29:59', 'Ruta', NULL),
(1184, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '14:30:49', 'Usuario', NULL),
(1185, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '14:31:27', 'Usuario', NULL),
(1186, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '19:47:45', 'Usuario', NULL),
(1187, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '19:48:35', 'Usuario', NULL),
(1188, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '19:48:52', 'Usuario', NULL),
(1189, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '19:51:10', 'Usuario', NULL),
(1190, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '19:51:46', 'Usuario', NULL),
(1191, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '19:52:31', 'Usuario', NULL),
(1192, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:02:50', 'Usuario', NULL),
(1193, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:05:05', 'Usuario', NULL),
(1194, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:15:27', 'Usuario', NULL),
(1195, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:20:43', 'Usuario', NULL),
(1196, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:20:49', 'Usuario', NULL),
(1197, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:20:53', 'Usuario', NULL),
(1198, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:21:15', 'Usuario', NULL),
(1199, '95589111', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:23:11', 'Usuario', NULL),
(1200, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:23:33', 'Usuario', NULL),
(1201, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:32:21', 'Usuario', NULL),
(1202, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:32:50', 'Usuario', NULL),
(1203, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:38:36', 'Usuario', NULL),
(1204, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:38:56', 'Usuario', NULL),
(1205, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:38:58', 'Usuario', NULL),
(1206, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:40:25', 'Usuario', NULL),
(1207, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '20:42:34', 'Usuario', NULL),
(1208, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:28:32', 'Usuario', NULL),
(1209, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:28:53', 'Usuario', NULL),
(1210, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:34:29', 'Usuario', NULL),
(1211, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:34:49', 'Usuario', NULL);
INSERT INTO `bitacora` (`id_bitacora`, `cedula`, `usuario`, `operacion`, `host`, `fecha`, `hora`, `tabla`, `status`) VALUES
(1212, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:37:56', 'Usuario', NULL),
(1213, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:40:27', 'Usuario', NULL),
(1214, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:41:00', 'Usuario', NULL),
(1215, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:41:14', 'Usuario', NULL),
(1216, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:46:00', 'Usuario', NULL),
(1217, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:46:05', 'Usuario', NULL),
(1218, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:46:19', 'Usuario', NULL),
(1219, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:48:13', 'Usuario', NULL),
(1220, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:49:04', 'Usuario', NULL),
(1221, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:51:52', 'Usuario', NULL),
(1222, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:51:56', 'Usuario', NULL),
(1223, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:53:53', 'Usuario', NULL),
(1224, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:54:02', 'Usuario', NULL),
(1225, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '21:54:16', 'Usuario', NULL),
(1226, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:00:46', 'Usuario', NULL),
(1227, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:01:12', 'Usuario', NULL),
(1228, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:03:45', 'Usuario', NULL),
(1229, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:03:47', 'Usuario', NULL),
(1230, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:04:27', 'Usuario', NULL),
(1231, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:04:29', 'Usuario', NULL),
(1232, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:04:42', 'Usuario', NULL),
(1233, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:18:41', 'Usuario', NULL),
(1234, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:18:44', 'Usuario', NULL),
(1235, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:24:42', 'Usuario', NULL),
(1236, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:25:31', 'Usuario', NULL),
(1237, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:45:05', 'Usuario', NULL),
(1238, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:45:19', 'Usuario', NULL),
(1239, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:46:57', 'Usuario', NULL),
(1240, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:47:46', 'Usuario', NULL),
(1241, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:48:19', 'Usuario', NULL),
(1242, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:48:38', 'Usuario', NULL),
(1243, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:48:40', 'Usuario', NULL),
(1244, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:50:11', 'Usuario', NULL),
(1245, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:54:05', 'Usuario', NULL),
(1246, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:55:24', 'Usuario', NULL),
(1247, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '22:59:51', 'Usuario', NULL),
(1248, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:18:55', 'Usuario', NULL),
(1249, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:22:39', 'Usuario', NULL),
(1250, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:30:08', 'Usuario', NULL),
(1251, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:33:01', 'Usuario', NULL),
(1252, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:36:08', 'Usuario', NULL),
(1253, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:38:50', 'Usuario', NULL),
(1254, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:39:14', 'Usuario', NULL),
(1255, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:39:31', 'Usuario', NULL),
(1256, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:40:24', 'Usuario', NULL),
(1257, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:48:42', 'Usuario', NULL),
(1258, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-22', '23:52:08', 'Usuario', NULL),
(1259, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:01:16', 'Usuario', NULL),
(1260, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:01:27', 'Usuario', NULL),
(1261, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:02:24', 'Usuario', NULL),
(1262, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:03:38', 'Usuario', NULL),
(1263, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:04:41', 'Usuario', NULL),
(1264, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:06:04', 'Usuario', NULL),
(1265, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:09:52', 'Usuario', NULL),
(1266, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:12:35', 'Usuario', NULL),
(1267, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:12:37', 'Usuario', NULL),
(1268, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:12:46', 'Usuario', NULL),
(1269, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:13:39', 'Usuario', NULL),
(1270, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:14:02', 'Usuario', NULL),
(1271, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:14:05', 'Usuario', NULL),
(1272, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:14:14', 'Usuario', NULL),
(1273, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:14:21', 'Usuario', NULL),
(1274, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:15:24', 'Usuario', NULL),
(1275, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:18:16', 'Usuario', NULL),
(1276, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:23:18', 'Usuario', NULL),
(1277, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:23:24', 'Usuario', NULL),
(1278, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:24:58', 'Usuario', NULL),
(1279, '13547896', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '00:25:11', 'Usuario', NULL),
(1280, '15', 'root@localhost', 'Se modifico un taller', 'localhost', '2022-08-23', '00:28:16', 'taller', NULL),
(1281, '1', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-23', '00:39:49', 'Seguridad Roles', NULL),
(1282, '3', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-23', '00:40:21', 'Seguridad Roles', NULL),
(1283, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '14:39:59', 'Usuario', NULL),
(1284, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '14:42:10', 'Usuario', NULL),
(1285, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:01:35', 'Usuario', NULL),
(1286, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:02:43', 'Usuario', NULL),
(1287, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:05:38', 'Usuario', NULL),
(1288, '9867412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:06:41', 'Usuario', NULL),
(1289, '25474616', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1290, '26561638', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1291, '25474616', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1292, '25474000', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1293, '26561665', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1294, '79355252', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1295, '24000123', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1296, '25474040', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:15', 'Usuario', NULL),
(1297, '25474040', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1298, '25474041', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1299, '32343434', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1300, '32343412', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1301, '41745222', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1302, '98473354', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1303, '26561377', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1304, '88665742', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1305, '35457852', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:16', 'Usuario', NULL),
(1306, '98657412', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1307, '9867412', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1308, '13547896', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1309, '14141350', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1310, '10847101', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1311, '95589111', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1312, '27589833', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1313, '95589144', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1314, '9867444', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:08:34', 'Usuario', NULL),
(1315, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:08:51', 'Usuario', NULL),
(1316, '13547820', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-23', '18:10:07', 'Usuario', NULL),
(1317, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:10:33', 'Usuario', NULL),
(1318, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:11:23', 'Usuario', NULL),
(1319, '26561633', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-23', '18:12:05', 'Usuario', NULL),
(1320, '26561633', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-23', '18:12:40', 'Usuario', NULL),
(1321, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:22:26', 'Usuario', NULL),
(1322, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:23:11', 'Usuario', NULL),
(1323, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:23:30', 'Usuario', NULL),
(1324, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:25:21', 'Usuario', NULL),
(1325, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:30:41', 'Usuario', NULL),
(1326, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:31:26', 'Usuario', NULL),
(1327, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:32:39', 'Usuario', NULL),
(1328, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:33:40', 'Usuario', NULL),
(1329, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:34:32', 'Usuario', NULL),
(1330, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:34:56', 'Usuario', NULL),
(1331, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:37:48', 'Usuario', NULL),
(1332, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:38:06', 'Usuario', NULL),
(1333, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:40:27', 'Usuario', NULL),
(1334, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:41:24', 'Usuario', NULL),
(1335, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:42:55', 'Usuario', NULL),
(1336, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:43:30', 'Usuario', NULL),
(1337, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:43:34', 'Usuario', NULL),
(1338, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '18:43:37', 'Usuario', NULL),
(1339, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '19:37:58', 'Usuario', NULL),
(1340, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '19:42:50', 'Usuario', NULL),
(1341, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '19:43:33', 'Usuario', NULL),
(1342, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '19:55:53', 'Usuario', NULL),
(1343, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:11:58', 'Usuario', NULL),
(1344, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:14:07', 'Usuario', NULL),
(1345, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:36:32', 'Usuario', NULL),
(1346, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:36:49', 'Usuario', NULL),
(1347, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:37:27', 'Usuario', NULL),
(1348, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:40:08', 'Usuario', NULL),
(1349, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:43:14', 'Usuario', NULL),
(1350, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:44:59', 'Usuario', NULL),
(1351, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:46:24', 'Usuario', NULL),
(1352, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:51:06', 'Usuario', NULL),
(1353, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:51:14', 'Usuario', NULL),
(1354, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:55:42', 'Usuario', NULL),
(1355, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:56:18', 'Usuario', NULL),
(1356, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '20:56:57', 'Usuario', NULL),
(1357, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '21:00:43', 'Usuario', NULL),
(1358, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '21:03:11', 'Usuario', NULL),
(1359, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '21:42:19', 'Usuario', NULL),
(1360, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '21:49:17', 'Usuario', NULL),
(1361, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '21:56:37', 'Usuario', NULL),
(1362, '26561634', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '21:57:29', 'Usuario', NULL),
(1363, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:08:49', 'Usuario', NULL),
(1364, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:09:37', 'Usuario', NULL),
(1365, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:09:54', 'Usuario', NULL),
(1366, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:12:26', 'Usuario', NULL),
(1367, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:14:47', 'Usuario', NULL),
(1368, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:16:49', 'Usuario', NULL),
(1369, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:17:12', 'Usuario', NULL),
(1370, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:19:47', 'Usuario', NULL),
(1371, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:20:37', 'Usuario', NULL),
(1372, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:21:08', 'Usuario', NULL),
(1373, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:21:39', 'Usuario', NULL),
(1374, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:22:17', 'Usuario', NULL),
(1375, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:22:41', 'Usuario', NULL),
(1376, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:23:08', 'Usuario', NULL),
(1377, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:23:33', 'Usuario', NULL),
(1378, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:24:12', 'Usuario', NULL),
(1379, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:26:38', 'Usuario', NULL),
(1380, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:26:59', 'Usuario', NULL),
(1381, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:28:48', 'Usuario', NULL),
(1382, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:29:38', 'Usuario', NULL),
(1383, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:31:22', 'Usuario', NULL),
(1384, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:31:55', 'Usuario', NULL),
(1385, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:34:28', 'Usuario', NULL),
(1386, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:36:20', 'Usuario', NULL),
(1387, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:36:50', 'Usuario', NULL),
(1388, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:39:08', 'Usuario', NULL),
(1389, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:39:56', 'Usuario', NULL),
(1390, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:40:12', 'Usuario', NULL),
(1391, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:41:45', 'Usuario', NULL),
(1392, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:45:36', 'Usuario', NULL),
(1393, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:47:18', 'Usuario', NULL),
(1394, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:47:44', 'Usuario', NULL),
(1395, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:49:37', 'Usuario', NULL),
(1396, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:51:25', 'Usuario', NULL),
(1397, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:52:05', 'Usuario', NULL),
(1398, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:52:32', 'Usuario', NULL),
(1399, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:55:00', 'Usuario', NULL),
(1400, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:55:19', 'Usuario', NULL),
(1401, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:56:31', 'Usuario', NULL),
(1402, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '22:58:52', 'Usuario', NULL),
(1403, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:06:10', 'Usuario', NULL),
(1404, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:06:32', 'Usuario', NULL),
(1405, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:06:44', 'Usuario', NULL),
(1406, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:07:38', 'Usuario', NULL),
(1407, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:13:15', 'Usuario', NULL),
(1408, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:14:08', 'Usuario', NULL),
(1409, '30868382', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-23', '23:15:56', 'Usuario', NULL),
(1410, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-23', '23:16:47', 'Usuario', NULL),
(1411, '6', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-23', '23:17:32', 'Seguridad Roles', NULL),
(1412, '6', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-23', '23:17:39', 'Seguridad Roles', NULL),
(1413, '5', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-23', '23:17:45', 'Seguridad Roles', NULL),
(1414, '5', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-08-23', '23:17:58', 'Seguridad Roles', NULL),
(1415, '6', 'root@localhost', 'Se elimino un rol', 'localhost', '2022-08-23', '23:18:01', 'Seguridad Roles', NULL),
(1416, '5', 'root@localhost', 'Se modifico un rol', 'localhost', '2022-08-23', '23:20:48', 'Seguridad Roles', NULL),
(1417, '10', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-08-23', '23:21:29', 'Ruta', NULL),
(1418, '96875412', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-23', '23:23:45', 'Usuario', NULL),
(1419, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '12:55:14', 'Usuario', NULL),
(1420, '26577800', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '12:58:03', 'Usuario', NULL),
(1421, '26577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '12:58:27', 'Usuario', NULL),
(1422, '26577800', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '12:58:30', 'Usuario', NULL),
(1423, '26577800', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '12:58:48', 'Usuario', NULL),
(1424, '26577800', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '12:59:40', 'Usuario', NULL),
(1425, '27577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '13:00:52', 'Usuario', NULL),
(1426, '27577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '13:02:05', 'Usuario', NULL),
(1427, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '13:04:01', 'Usuario', NULL),
(1428, '26577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '13:06:50', 'Usuario', NULL),
(1429, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '13:07:40', 'Usuario', NULL),
(1430, '26577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '13:08:20', 'Usuario', NULL),
(1431, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '13:10:43', 'Usuario', NULL),
(1432, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:11:33', 'Usuario', NULL),
(1433, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:11:44', 'Usuario', NULL),
(1434, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:11:46', 'Usuario', NULL),
(1435, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:11:48', 'Usuario', NULL),
(1436, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:11:52', 'Usuario', NULL),
(1437, '26577823', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '13:12:04', 'Usuario', NULL),
(1438, '26577823', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '13:12:53', 'Usuario', NULL),
(1439, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:13:04', 'Usuario', NULL),
(1440, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:13:18', 'Usuario', NULL),
(1441, '30868382', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:13:23', 'Usuario', NULL),
(1442, '96875412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '13:13:28', 'Usuario', NULL),
(1443, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-24', '14:44:52', 'Mantenimiento', NULL),
(1444, '9601788', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '17:19:53', 'Usuario', NULL),
(1445, '9601788', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '17:24:54', 'Usuario', NULL),
(1446, '9601788', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '17:25:48', 'Usuario', NULL),
(1447, '9601788', 'root@localhost', 'Se elimino un usuario', 'localhost', '2022-08-24', '17:36:28', 'Usuario', NULL),
(1448, '9601788', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-24', '17:37:24', 'Usuario', NULL),
(1449, '9601788', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '17:40:52', 'Usuario', NULL),
(1450, '9601788', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '17:52:37', 'Usuario', NULL),
(1451, '9601788', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-24', '18:59:52', 'Usuario', NULL),
(1452, '9601788', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-25', '17:14:26', 'Usuario', NULL),
(1453, '96875412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-25', '19:55:49', 'Usuario', NULL),
(1454, '1', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-26', '10:38:39', 'Mantenimientos', NULL),
(1455, '2', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-26', '10:38:39', 'Mantenimientos', NULL),
(1456, '3', 'root@localhost', 'Se elimino un mantenimiento asociado a la placa señalada', 'localhost', '2022-08-26', '10:38:39', 'Mantenimientos', NULL),
(1457, '21', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-08-26', '10:56:33', 'Ruta', NULL),
(1458, '7', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1459, '10', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1460, '20', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1461, '17', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1462, '21', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1463, '22', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1464, '23', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1465, '11', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1466, '19', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1467, '12', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1468, '16', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1469, '18', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1470, '24', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1471, '1', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1472, '13', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1473, '14', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1474, '15', 'root@localhost', 'Se elimino una ruta', 'localhost', '2022-08-26', '11:01:19', 'Ruta', NULL),
(1475, '1', 'root@localhost', 'Se inserto una nueva ruta', 'localhost', '2022-08-26', '11:03:05', 'Ruta', NULL),
(1476, '1', 'root@localhost', 'Se Modifico una ruta', 'localhost', '2022-08-26', '11:03:36', 'Ruta', NULL),
(1477, '1', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-26', '11:22:14', 'Mantenimiento', NULL),
(1478, '9601788', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '11:43:23', 'Usuario', NULL),
(1479, '9601788', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '11:45:20', 'Usuario', NULL),
(1480, '26561633', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '12:13:26', 'Usuario', NULL),
(1481, '13547820', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '12:13:55', 'Usuario', NULL),
(1482, '30868382', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '12:14:28', 'Usuario', NULL),
(1483, '26577823', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '12:14:50', 'Usuario', NULL),
(1484, '96875412', 'root@localhost', 'Se Modifico un campo de esta tabla', 'localhost', '2022-08-26', '12:15:18', 'Usuario', NULL),
(1485, '1', 'root@localhost', 'Se modifico un mantenimiento', 'localhost', '2022-08-26', '12:21:15', 'Mantenimiento', NULL),
(1486, '2', 'root@localhost', 'Se inserto un nuevo mantenimiento', 'localhost', '2022-08-26', '12:22:06', 'Mantenimiento', NULL);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id_mantenimiento` int(11) NOT NULL,
  `kilometraje` int(11) DEFAULT NULL,
  `tiempo` date NOT NULL,
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
(1, 4500, '0000-00-00', 2, 'Bujias', '4000,00', '2022-08-26', 1, 4, 1),
(2, 450, '0000-00-00', 1, 'Bujias', '700', '2022-08-09', 1, 7, 1);

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
(823, 1, '2022-08-26', 'Mantenimiento preventivo requerido para PPO887', 'El vehículo PPO887 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, se sugiere chequeo general.', 1),
(824, 0, '2022-08-26', 'Mantenimiento preventivo requerido para LLA091', 'El vehículo LLA091 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 2);

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
(5, 7, 'Amortiguadores', '9000', '2022-08-04', 'permiso de perrear', 1, 16),
(6, 14, 'Alineación', '20000', '2022-08-18', 'se alineeo el vehiculo', 1, 17);

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
(5, 'Asistente', 'puede imprimir todo', 1);

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
(4, 6, '0000-00-00', '0000-00-00'),
(4, 8, '0000-00-00', '0000-00-00'),
(4, 7, '0000-00-00', '0000-00-00'),
(4, 13, '0000-00-00', '0000-00-00'),
(4, 22, '0000-00-00', '0000-00-00'),
(2, 1, '0000-00-00', '0000-00-00'),
(2, 3, '0000-00-00', '0000-00-00'),
(2, 5, '0000-00-00', '0000-00-00'),
(2, 8, '0000-00-00', '0000-00-00'),
(2, 11, '0000-00-00', '0000-00-00'),
(2, 13, '0000-00-00', '0000-00-00'),
(2, 15, '0000-00-00', '0000-00-00'),
(2, 21, '0000-00-00', '0000-00-00'),
(2, 30, '0000-00-00', '0000-00-00'),
(4, 6, '0000-00-00', '0000-00-00'),
(4, 8, '0000-00-00', '0000-00-00'),
(4, 7, '0000-00-00', '0000-00-00'),
(4, 13, '0000-00-00', '0000-00-00'),
(4, 22, '0000-00-00', '0000-00-00'),
(2, 1, '0000-00-00', '0000-00-00'),
(2, 3, '0000-00-00', '0000-00-00'),
(2, 5, '0000-00-00', '0000-00-00'),
(2, 8, '0000-00-00', '0000-00-00'),
(2, 11, '0000-00-00', '0000-00-00'),
(2, 13, '0000-00-00', '0000-00-00'),
(2, 15, '0000-00-00', '0000-00-00'),
(2, 21, '0000-00-00', '0000-00-00'),
(2, 30, '0000-00-00', '0000-00-00'),
(5, 27, '0000-00-00', '0000-00-00'),
(5, 30, '0000-00-00', '0000-00-00'),
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
(1, 30, '0000-00-00', '0000-00-00'),
(3, 5, '0000-00-00', '0000-00-00'),
(3, 9, '0000-00-00', '0000-00-00'),
(3, 13, '0000-00-00', '0000-00-00'),
(3, 18, '0000-00-00', '0000-00-00'),
(3, 22, '0000-00-00', '0000-00-00'),
(3, 30, '0000-00-00', '0000-00-00');

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
(1, 'PPO887', 'Los horcones', 'Los horcones ', '00:02:00', '5000', 1, 2, '2022-08-27', '2022-08-27');

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
  `img` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `img_encriptada` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `seguridad_preguntas`
--

INSERT INTO `seguridad_preguntas` (`id_s_pregunta`, `preguntauno`, `respuestauno`, `id_usuario`, `img`, `img_encriptada`) VALUES
(1, '¿Donde estudiaste?', 'Hermano Juan', 1, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'SjdaM0RjU0xwMUlsQk4yb2IxVWR3Zz09.png'),
(2, '¿Gatos o perros?', 'gatos', 2, 'ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png', 'bTNaTWVSekJzRXEvUlBReTZBbFIwUT09.png'),
(45, '¿Donde naciste?', 'hospital', 3, 'YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png', 'M1JBS1JXaWFKQ1UzbTVZVjEweE5hdz09.png'),
(46, '¿Cuál era el nombre de tu mejor amigo?', 'santi', 4, 'ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png', 'azdlWWNyaUp2MFF5TlQ0M0NhSGhsZz09.png'),
(54, '¿Cuál es tu color favorito?', 'negro', 5, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'eXVxQ2lJUFZ6ZmxYdHh4VXdmZnphUT09.png'),
(57, '¿Donde estudiaste?', 'marifer', 6, 'QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png', 'QlREM1grVnVsRmliZDJGVkhXVnhKdz09.png');

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
(2, 'J-26561633', 'ORI', 'MACIAS', '04145448669', 0),
(3, 'E-12348369-1', 'Michellin', 'calle cinco', '02512344581', 0),
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
  `correo` varchar(30) COLLATE utf8_bin NOT NULL,
  `clave_especial` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `usuario`, `nombre`, `apellido`, `contrasena`, `rol`, `status`, `correo`, `clave_especial`) VALUES
(1, '26561633', 'ogap', 'Oriana ', 'Armas', '$2y$08$rdw9ihM57tle/PF.4PMhy.TgtHIg1pO2H.6O7CYEVhYX4mYe5pp6K', 1, 1, 'armasoriana98@gmail.com', '%%%$%$%$%%$$$$%/%%$$$$%$%%$$%%%$'),
(2, '135478201', 'marifer10', 'Maria', 'Fernandez', '$2y$08$YL1Y2t0o3d.Opz7JdK7xXeoqEubnK/JdWX/tycPo4Lythogc/UcWK', 2, 1, 'marifer@gmail.com', '%%$$$$%$%%%$%$$$%%$%%%%/%%%%$%$$%%$$$$%$%%%$$$$$'),
(3, '30868382', 'eliasA', 'Elias', 'Armas', '$2y$08$zRbwHEuaPpSPwkpYIw5zoOfnULdQbMluJH00jTp7FSqkTZ6HvcRdm', 3, 1, 'sailearmas0505@gmail.com', '%$$$%%$$$$%$%%$%%%$$%%$$$$%/%%%$%%$$%%$$%$%$%%$%%%$$%%%$'),
(4, '968754120', 'nelsonp11', 'Nelson', 'Perez', '$2y$08$n5cmYmYaDofTLZxWzJj.hey3CkJbc8dySihm1ah1JqTsTP8ncddby', 4, 1, 'nelsonp11@gmail.com', '%%$$%%$$%$%$%%$%%$$$%%$$$$%/%%$$%%$$%%%$$%$$%%$$$$%$%%$%'),
(5, '26577823', 'jcuicas', 'Jesus ', 'Cuicas', '$2y$08$hLSt3RjnupuhYjt3mbVEguQpL8sDdy.O9hCZ7BM/ho.C1IPSnubgy', 1, 1, 'jesuscuicas14@gmail.com', '%%$%%%%$%%%$$%$$%%$%%%%/%%$$%%$$%%$%%%%$%%%$$%$$'),
(6, '9601788', 'EARMAS', 'Erwin', 'Armas', '$2y$08$OgZ59DATuf0wURqVeFmNA.IeRsAE58MOAfeWp3BxkpF5VtcJ9ZT1W', 1, 1, 'EARMAS@GMAIL.COM', '%%$$$$%$%%$$%$$$%%$%%%%/%%$%$$$$%%$$%$%$%%$%%$$$');

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
  `kilometraje` varchar(30) COLLATE utf8_bin NOT NULL,
  `id_mantenimiento` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `modelo`, `funcionamiento`, `kilometraje`, `id_mantenimiento`, `status`) VALUES
(1, 'PPO887', 'Encava', 'Operativo', '500,00', NULL, 1),
(2, 'LLA091', 'BEDFORD', 'Operativo', '4500,00', NULL, 1),
(3, 'OOL192', 'Envasa', 'Operativo', '300,00', NULL, 1);

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
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
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
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1487;

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
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `id_reparaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `seguridad_preguntas`
--
ALTER TABLE `seguridad_preguntas`
  MODIFY `id_s_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
-- Filtros para la tabla `seguridad_preguntas`
--
ALTER TABLE `seguridad_preguntas`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
