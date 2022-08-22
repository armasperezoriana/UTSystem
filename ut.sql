-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2022 a las 15:13:00
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
(1072, '35457852', 'root@localhost', 'Se inserto un nuevo usuario', 'localhost', '2022-08-21', '23:58:57', 'Usuario', NULL);

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
(1, 'VAS654', 'Oriana', 'Armas', '16857400', '02514423626', 1),
(2, 'GAP173', 'ERWIN ELIAS', 'ARMAS GONZALEZ', '95589666', '04160360067', 1),
(3, 'SAN103', 'Elias', 'Perez', '200998899', '0412788593', 1),
(4, 'SAN103', 'Luisa', 'loca', '123454578', '7985252332', 1),
(5, 'YYY444', 'Antonio', 'Sanchez', '25477003', '02514557789', 1),
(6, 'YYA891', 'Carlos', 'Yepez', '0101084844', '04160360044', 1),
(8, 'ALA147', 'Juan', 'Jose Perez', '122355500', '04243235569', 1),
(9, 'ALA147', 'Mariana', 'Martinez', '145789653', '145558966', 1),
(10, 'ANL123', 'PETRONILO', 'PEREZ', '5956955', '04125547889', 1),
(11, 'VAS654', 'Oriana', 'Armas', '26561633', '04160360067', 1),
(12, 'VAS654', 'Oriana', 'Armas', '26561600', '04160360067', 1),
(14, 'EAP685', 'Ana', 'Armas', '26561444', '89865555552', 1);

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
(1, 300, '1', 40, 'Bujias', '5000', '2022-06-01', 1, 1, 0),
(2, 3500, '1', 15, 'Pastillas', '1000', '2022-06-02', 1, 3, 1),
(3, 300, '7', 9, 'Cambio de Aceite', '1500', '2022-02-15', 1, 2, 0),
(4, 16, '9', 35, 'Mant. programado', '4000', '2022-06-15', 1, 15, 0),
(5, 14, '8', 37, 'Bujias', '1500', '2022-06-08', 1, 10, 0),
(6, 2500, '100', 13, 'Cambio de Aceite', '1400', '2022-06-09', 0, 14, 0),
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
(178, 0, '2022-08-22', 'Mantenimiento preventivo VAS654', 'El vehículo VAS654 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, se sugiere chequeo general.', 9),
(256, 0, '2022-08-22', 'Mantenimiento preventivo requerido para VAS654', 'El vehículo VAS654 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, se sugiere chequeo general.', 9),
(257, 0, '2022-08-22', 'Mantenimiento preventivo requerido para ANL123', 'El vehículo ANL123 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 13),
(258, 0, '2022-08-22', 'Mantenimiento preventivo requerido para ROA126', 'El vehículo ROA126 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 15),
(259, 0, '2022-08-22', 'Mantenimiento preventivo requerido para LALI2300', 'El vehículo LALI2300 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 31),
(260, 0, '2022-08-22', 'Mantenimiento preventivo requerido para PAP555', 'El vehículo PAP555 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 35),
(261, 0, '2022-08-22', 'Mantenimiento preventivo requerido para QQQ778', 'El vehículo QQQ778 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, se sugiere chequeo general.', 37),
(262, 0, '2022-08-22', 'Mantenimiento preventivo requerido para 445444', 'El vehículo 445444 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 40),
(263, 0, '2022-08-22', 'Mantenimiento preventivo requerido para 555TRB', 'El vehículo 555TRB necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 42),
(264, 0, '2022-08-22', 'Mantenimiento preventivo requerido para 898PAJ4', 'El vehículo 898PAJ4 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, se sugiere chequeo general.', 8),
(265, 0, '2022-08-22', 'Mantenimiento preventivo requerido para YYA891', 'El vehículo YYA891 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 11),
(266, 0, '2022-08-22', 'Mantenimiento preventivo requerido para GAP173', 'El vehículo GAP173 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 12),
(267, 0, '2022-08-22', 'Mantenimiento preventivo requerido para SAN103', 'El vehículo SAN103 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, se sugiere chequeo general.', 14),
(268, 0, '2022-08-22', 'Mantenimiento preventivo requerido para LALI23001', 'El vehículo LALI23001 necesita mantenimiento de: filtro de aceite, frenos, refrigeración, electroventilador, suspensión, cauchos, se sugiere chequeo general.', 32),
(269, 0, '2022-08-22', 'Mantenimiento preventivo requerido para HAN788', 'El vehículo HAN788 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 36),
(270, 0, '2022-08-22', 'Mantenimiento preventivo requerido para ELI778', 'El vehículo ELI778 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 39),
(271, 0, '2022-08-22', 'Mantenimiento preventivo requerido para 699PAV', 'El vehículo 699PAV necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 41),
(272, 0, '2022-08-22', 'Mantenimiento preventivo requerido para DFGDF', 'El vehículo DFGDF necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 43),
(273, 0, '2022-08-22', 'Mantenimiento preventivo requerido para AKA878', 'El vehículo AKA878 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 44),
(274, 0, '2022-08-22', 'Mantenimiento preventivo requerido para PPA990', 'El vehículo PPA990 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 45),
(275, 0, '2022-08-22', 'Mantenimiento preventivo requerido para RTS000', 'El vehículo RTS000 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 46),
(276, 0, '2022-08-22', 'Mantenimiento preventivo requerido para PPO777', 'El vehículo PPO777 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 47),
(277, 0, '2022-08-22', 'Mantenimiento preventivo requerido para UUY887', 'El vehículo UUY887 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 49),
(278, 0, '2022-08-22', 'Mantenimiento preventivo requerido para KKK778', 'El vehículo KKK778 necesita mantenimiento de: filtro de aceite, se sugiere chequeo general.', 50);

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
(5, 'Prueba', 'pruebas', 1),
(6, 'administradorl', 'permiso de perrear', 0),
(7, 'Asistente', 'puede imprimir todo', 1);

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
(1, 30, '0000-00-00', '0000-00-00'),
(5, 27, '0000-00-00', '0000-00-00'),
(5, 30, '0000-00-00', '0000-00-00');

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
(21, '699PAV', 'Hno juan', 'av la salle con corpahuaico', '20:13:00', '40', 1, 5, '2022-07-01', '2022-07-01'),
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
  `img` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `img_encriptada` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `seguridad_preguntas`
--

INSERT INTO `seguridad_preguntas` (`id_s_pregunta`, `preguntauno`, `respuestauno`, `id_usuario`, `img`, `img_encriptada`) VALUES
(16, '¿Dulce favorito?', 'torta', 8, '', '0'),
(22, '¿Donde estudiaste?', 'Jose M. Dominguez', 9, '', '0'),
(23, '¿Cuál era el nombre de tu mejor amigo?', 'Javier', 2, 'QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.jpg', ''),
(27, '¿Donde estudiaste?', 'por ahi', 3, 'QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png', 'TERaWkI2MzZmMTFaTUJSaU9PbkpGdz09'),
(30, '¿Donde estudiaste?', 'uptaeb', 14, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'TWx1djdRZm9pSW5IdzdlcDNHWHpsdz09.png'),
(31, '¿Donde estudiaste?', 'hno juan', 36, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'MUZvU3hiUmlpZ2RxRnFRb3FWOENadz09.png'),
(32, '¿Donde naciste?', 'Rick', 18, 'YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png', 'eHlyS0lCKzRkTUpKZ3Z4MjQrU2cxZz09.png'),
(38, '¿Donde estudiaste?', 'ccs', 40, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'YXI2MldZWWpaZEJwRHRweWltQ3FUQT09.png'),
(39, '¿Cómo se llama tu perro?', 'chispitas', 41, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'NmZSaGNKRlpoL0QxWEtiQU5uQklHUT09.png'),
(40, '¿Dulce favorito?', 'duranzo', 42, 'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'bmg1NzFvQm5uTTkwVnFWdGFZZ3h6Zz09.png');

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
  `correo` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `usuario`, `nombre`, `apellido`, `contrasena`, `rol`, `status`, `correo`) VALUES
(1, '26561633', 'ogap', 'Oriana ', 'Armas', '$2y$08$H.ga212cuqsynmJ1ckmpke5pB2MVlhjTObTqD8hkZKO0l61vjdwQ.', 1, 1, 'armasoriana98@gmail.com'),
(2, '98657412', 'ogapcvc55', 'Miguel', 'Martinez Ochoa', '$2y$08$Mn0YrbQrsMG88RMYvfXtXen7x60mh7gRpCl.H6ZBZh3cx91q6/kem', 1, 1, 'administrador@gmail.com'),
(3, '9867412', 'Gilspa14-', 'Gilmary', 'Sanz', '$2y$08$JUp/u5xDnzTg10Uf1AdWbepMlaGXfCZ6voI7NFsyN5aqO3YVtATPq', 2, 1, 'gilmaryzan@gmail.com'),
(4, '13547896', 'Santi_14', 'Santiago', 'Armas', '$2y$08$TDuP9nt3nNAy5kWRkO3nguiuEfa6DXdJaZcjpN4DMzjIjzQ6SPAzC', 3, 0, 'santiagorafael01@gmail.com'),
(6, '141413500', 'francho23_', 'Franklin', 'Martinez', '$2y$08$RSdg.ZwO30K69vZ.xFtHXeeWI0pxkqEN56tVK8fy7IyW4vv/ixIDi', 3, 1, 'elgranfranck@gmail.com'),
(7, '108471011', 'Eliza1', 'Elizabeth', 'Mendoza', '$2y$08$QLNMNC6d5DovklICR.U8w./LSqJm6GuwaV973rb.YcHwX7X5EQKk.', 1, 1, 'usuario12@gmail.com'),
(8, '95589111', 'jmarquez17', 'Juan', 'Marquez', '$2y$08$5F2sVph8FgYF5XZV36HlTOB/qXoIz6dmjcKf.qwDYzgNCZ6deWS2y', 4, 1, 'jmarquez@gmail.com'),
(9, '275898333', 'hectorDNC', 'Hector', 'Noguera', '$2y$08$QW.4BvCTpeOYyJa2iimn/OOVmVuCc7GMHPkFD7qP61Q.fh5JN4P5y', 1, 1, 'arma8@gmail.com'),
(14, '254746168', 'cristian11', 'Cristian', 'Torres', '$2y$08$Mx7Bz6w0jjzwDpimyXXIP.ffUT3Gwqzxaj4Z.BadI.gJU2Vz.PzZa', 1, 1, 'ctorres@gmail.com'),
(15, '265616385', 'hector100', 'Pedro', 'Torres', '$2y$08$UQ3dDHU0B.1DBt2PHmheWufdX7gK2tWQQPUZRMKikMrElpcsp/93G', 1, 1, 'sreoa098@gmail.com'),
(17, '254746164', 'jjmenez', 'Cristian', 'Gimenez', '$2y$08$/0Xp3nfQ9b4yX22ydCD19.xE1wpwTYUra.WQXv7pOZO.hKOXL5IdO', 4, 1, 'torresc@gmail.com'),
(18, '25474000', 'hector1044', 'Cristian David', 'Noguera', '$2y$08$oP3H9rY8eyOA5KgzjLCCwu4zgkF2dz5ob3ZeefWLLKfD4tTL4Xt36', 1, 1, 'cristiannoguera@gmail.co'),
(19, '265616655', 'user', 'Valentina', 'Torres', '$2y$08$og/8vUo.d9GgRdAVGSOJ0uA/laDa1NLc.BTHmRzbxuFPvQJYoxe0G', 1, 1, 'valentinT@gmail.c'),
(20, '793552522', 'pperez', 'Pedro', 'Perez', '$2y$08$gqOFxhzrvTCYmEOdAVHCQOpigWPEUIoQaQnV0Rn8prhdLsd/FuokW', 1, 1, 'pperez12@gmail.com'),
(22, '24000123', 'manuela', 'Manuela', 'Gimenez', '$2y$08$pYborbbyog.jYNVqGmez9uX.adEsfWAfvONTm0p9Xwh.sxG265mkK', 1, 1, 'manuela@gmail.com'),
(23, '254740405', 'pepito', 'Pedro', 'Gimenez', '$2y$08$aNPFqtEJcuO6UuaheIPjxupi/rFdsBX9mKRTvPqBh4LhwAqGN1rK.', 1, 1, 'uusussusu@gmail.co'),
(24, '254740409', 'josue', 'Rafael', 'rodriguez', '$2y$08$6IL2qArQd7X2iSlWmT8YVexdM3QlzxI26u6rvjMjuqRzorzS3l2A2', 1, 1, 'rafelg@gmail.co'),
(25, '254740411', 'luis', 'Pedro', 'Cuicas', '$2y$08$JGK7kua1/NFH0th76uyyDe9yDdI5RGdatEIykUpSBLFM2Md6GCkn6', 1, 1, 'luis@gmail.com'),
(26, '32343434', 'ramon', 'Reinaldo', 'Martinez', '$2y$08$xxIpc1MbdJ6dgSVi8BCJeuSOV7b3ELqBygVW9BVQDsc4wU5JHY8hi', 1, 1, 'rrrrrr@gmail.com'),
(27, '32343412', 'julio', 'Alejandro', 'Ortiz', '$2y$08$mw/Vz3j.xJ7DdtZNWYHGde.LUhw1MGRZXjPvewo6DlwkLBWfI8AE6', 1, 1, 'juli@gmail.com'),
(31, '417452224', 'cjimenez14', 'Cristian', 'Gimenez', '$2y$08$YROnSjN1uS9hcXLZTKtX6extxO8dtjgCg0sQs4E.wmxV3AOLUQa7K', 1, 1, 'armasoriana41745222498@gmail.c'),
(36, '98473354', 'ANA12', 'Anas', 'Noguera', '$2y$08$cp49AgvdyEZrfWhPIZnrV.aAIBOzOb1fMSaUB1DURVmlv54npj0wi', 2, 1, 'anasantiaganoguera@gmail.com'),
(40, '26561377', 'eliasR55', 'Elias', 'Ramos', '$2y$08$/R8oLb6gjqAqa2oooAcGS.N2b7/vMRJY0pFStRuHeikUOT4pDsNvK', 2, 1, 'armasorianaaaa98@gmail.com'),
(41, '886657422', 'dani1717', 'Martinez', 'Diaz', '$2y$08$h9gY5g.iRl2NVbYthmlc/eAImjRwqqD/Jj3e1bhZLONu2f3eBqBe2', 1, 1, 'daniel1717@gmail.com'),
(42, '35457852', 'mafer', 'Maria', 'Fernanda', '$2y$08$FRs95IQwfJNWWmvUUyBtveCyPjYdTma8vNnxBAnNshwlOuSBr86jy', 1, 1, 'usuario@gmail.com');

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
(1, 'KVT47V', 'BEDFORD', 'Operativo', '2000', NULL, 0),
(6, 'EAP685', 'Dodge', 'Operativo', '5000,00', NULL, 0),
(8, '898PAJ4', 'Dodge', 'Operativo', '10000', NULL, 0),
(9, 'VAS654', 'Caio', 'Operativo', '20000,00', NULL, 1),
(10, 'KOWP145', 'Encava', 'Operativo', '45000', NULL, 0),
(11, 'YYA891', 'Kia', 'Operativo', '1500,00', NULL, 1),
(12, 'GAP173', 'BEDFORD', 'Operativo', '5000', NULL, 1),
(13, 'ANL123', 'Encava', 'Operativo', '9000,00', NULL, 1),
(14, 'SAN103', 'Kia', 'Operativo', '35000,00', NULL, 1),
(15, 'ROA126', 'BEDFORD', 'Operativo', '6900', NULL, 1),
(30, '6265541', NULL, NULL, '3004', 1, 0),
(31, 'LAL230', 'Encava', 'Operativo', '6000,00', NULL, 1),
(32, 'IAL001', 'Encava', 'Operativo', '1000,00', NULL, 1),
(33, '117788232', 'Otro', 'Operativo', '8000', NULL, 0),
(34, 'ALA147', 'BEDFORD', 'Operativo', '6000', NULL, 1),
(35, 'PAP555', 'Caio', 'Inoperativo', '2000', NULL, 1),
(36, 'HAN788', 'Kia', 'Operativo', '1500', NULL, 1),
(37, 'QQQ778', 'Kia', 'Operativo', '98000', NULL, 1),
(38, 'TOR126', 'Caio', 'Inoperativo', '14,5', NULL, 1),
(39, 'ELI778', 'BEDFORD', 'Operativo', '4000', NULL, 1),
(40, 'YYY444', 'Caio', 'Inoperativo', '4500,00', NULL, 1),
(41, '699PAV', 'Yutong', 'Operativo', '1457', NULL, 1),
(42, '555TRB', 'Caio', 'Operativo', '10000', NULL, 1),
(43, 'DFGDF', 'BEDFORD', 'Inoperativo', '4000', NULL, 1),
(44, 'AKA878', 'Caio', 'Inoperativo', '1500,0', NULL, 1),
(45, 'PPA990', 'Autopago', 'Inoperativo', '75,0', NULL, 1),
(46, 'RTS000', 'Dodge', 'Inoperativo', '45,00', NULL, 1),
(47, 'PPO777', 'Caio', 'Operativo', '145,00', NULL, 1),
(48, 'LPB142', 'Encava', 'Operativo', '6,00', NULL, 1),
(49, 'UUY887', 'Autopago', 'Operativo', '4000,00', NULL, 1),
(50, 'KKK778', 'Autopago', 'Operativo', '4000,00', NULL, 1);

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
  ADD UNIQUE KEY `usuario` (`usuario`),
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
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073;

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
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

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
  MODIFY `id_s_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
