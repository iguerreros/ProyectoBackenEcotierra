-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2020 a las 03:22:47
-- Versión del servidor: 5.7.16-log
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ecotierra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `nombrearticulo` text NOT NULL,
  `preciounitario` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombrearticulo`, `preciounitario`, `cantidad`, `total`) VALUES
(1, 'teclado', 32, 100, 100),
(2, 'laptop', 1200, 10, 10),
(3, 'impresora', 800, 20, 20),
(4, 'monitor', 800, 100, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `edad` int(11) NOT NULL,
  `fechanacimiento` text NOT NULL,
  `id_cliente` text NOT NULL,
  `llave_secreta` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `edad`, `fechanacimiento`, `id_cliente`, `llave_secreta`, `created_at`, `updated_at`) VALUES
(1, 'ismael', 'guerreros quispe', 23, '28/10/2001', 'a2ya10ambVT3eXrNKkc.4Fm/jN1huM2gzFVF2NGmh4QAzTm5FOo2eqdTF00q', 'o2yo12oto0ovv1Qy.RvZCl/71ZB5udMHawErJnplOE2iYb3TEkmpe1EMDKy6', '2020-07-17 23:27:34', '2020-07-17 23:27:34'),
(2, 'Kleina', 'vargas llosa', 23, '28/10/2001', 'a2ya10akBsZBjOXYTuRvHgnIJjXkeN6o7YE.aqs9/rgrBKyTRCnhorV7XGWW', 'o2yo12ouJ46xVlR3zv2Xavk7RqWW.dL4AekjDtX2BwQXd.Ho.IWhoDFEgBJC', '2020-07-19 05:24:18', '2020-07-18 10:18:19'),
(3, 'marcelo', 'guerers', 45, '07/08/2020', 'a2ya10a9WOSlq7.Phc6lQDGARfWwu6P4oa8YSuxa0AyQCeziQUrfkzv6U6ZO', 'o2yo12oKi2QSmYF5qtxY7Q.dxQrzOWLDbF76AoSbvOyqy7IkrfXY3sU2OlWy', '2020-07-19 01:35:24', '2020-07-19 01:35:24'),
(4, 'fdsfds', 'fds', 32, '30/10/2031', 'a2ya10aVA9Txn6XvGISff1Wz1G4TeLZuswd.L0pMJmiT.KmGgw0d45.hFmCS', 'o2yo12oXW5n6MM5j9neckhBY5t7G.6bVtAzYBD.msccuonBUwBkr484THpuC', '2020-07-19 02:45:45', '2020-07-19 02:45:45'),
(5, 'marcial', 'guerreros vargas', 23, '21/10/2000', 'a2ya10aui1q.SIb9F/7u2u9OZc44OpEGRXn0Y1HCOsP2sZXAjweEN.olsfva', 'o2yo12oTGENYtANvzq.c6SB3Xf9FuYpX9VOPntf8.4fs8GgUDMPK70kZVudK', '2020-07-19 02:49:30', '2020-07-19 02:49:30'),
(6, 'jose luis', 'llantoy', 12, '02/11/2020', 'a2ya10a9dinN5/RZLT7BQpepsmMZeWmvBb3vktQiit5Sct9GfSW2CAABDQzm', 'o2yo12oBo4Hzf1fhxdVoGXYvNXR4ewVqVWUkJAgxs2mSzhx4k9DrnO6rxMsG', '2020-07-19 02:52:53', '2020-07-19 02:52:53'),
(7, 'kleina', 'fra', 24, '21/06/2020', 'a2ya10ajB/ZvBaYp1zzZRa/c5pUw..qsHp5c1AOwy.Pp6n4G.rx527N8.X6G', 'o2yo12oCCV6XWnzchWfX0dISuJRAuLZHC.yNCohR0Ht7M7YivoQ/0J5E2Xs.', '2020-07-19 02:57:22', '2020-07-19 02:57:22'),
(8, 'josue', 'montes', 22, '02/11/2003', 'a2ya10a3RGdWx.GaUA0uFU6NgQpQ.0CV68IuWEsZxw.3KuES70o7CU.LFc7i', 'o2yo12orG/Ix0.UGsAKZq8tzYhKsOWLqOPJQtV5IV7muFXH/s35JtLnbNIVK', '2020-07-19 03:16:20', '2020-07-19 03:16:20'),
(9, 'marcelo', 'guerers', 45, '07/08/2020', 'a2ya10afskW9eV.t.H3NtGfNHZPHOJBLkmh7cUZCHSuU1FYodWbDvNXF9vFO', 'o2yo12oeGd/3KiiKNeRaf1vBJUlCeoMHVqZR5jTfPhRPo1hJWR.KUMQ4U1lK', '2020-07-19 21:00:31', '2020-07-19 21:00:31'),
(10, 'Mario', 'Vargas Llosa', 23, '23/10/2016', 'a2ya10ao.Ja.0U5TjAp8a3tB0aZe.1pyZ2IbERcL1rTyIMyPNR4Ttz0QUk5O', 'o2yo12o6dJHUYNqrcbKjFfHHAdy6OnJNrf1MxDvXNDnk8OVBdJxIOhpgJT1W', '2020-07-20 02:56:15', '2020-07-20 02:56:15'),
(11, 'paulo', 'Guerreros', 28, '05/11/2000', 'a2ya10aKeIaWDMWDB3NfZPpdO/NX.WW6W6c/oLcVZ0mjJepmmdoZocOLwtG6', 'o2yo12oDMmUAr/GL86LE.xNPAwuneJ3jls3bNVmcQ4YWswNuHRNdjTGUnI0q', '2020-07-20 02:58:20', '2020-07-20 02:58:20'),
(12, 'MSRCO', 'GUERREROS QUISPE', 23, '12/04/3044', 'a2ya10aaYPiAI5J3s39e6HmEADh1OUC5nHMPLAQp.rXKhFJ1CIhp.rDewWz.', 'o2yo12owdaVkirgWIMUTLu6967hFe2lo1/beCH/njYOIMaSIEnpY2Iclgpo6', '2020-07-20 03:39:40', '2020-07-20 03:39:40'),
(13, 'Cristiano', 'Ronaldo', 35, '23/10/2001', 'a2ya10aK6YDI781bzFqls6Op5lL1.Clyn5p/6kTFhEp7L0UEFziladbFEoI6', 'o2yo12ozLHz7jd5fXEGTKZlH6ABIuVe.eAvo.1ZPj1TzuIOnTJdIQnVZBZzG', '2020-07-20 03:45:21', '2020-07-20 03:45:21'),
(14, 'cristhian', 'cueva', 30, '23/10/1311', 'a2ya10aDU9ZuUePnWp.tYVAIv3Y7u8BzAi36UHEDk/sF0WyA4hhCMjAK2g7K', 'o2yo12oipDo4clPfXg0c3VZPViORe8H2L67VXGLVsv4gzSGPnMrB8HsV.Sxu', '2020-07-20 03:54:10', '2020-07-20 03:54:10'),
(15, 'martin', 'vizcarra', 56, '17/05/1956', 'a2ya10a6QMCAXJ4v/2sszTW1wLKmev2dFCx0tWFET0UrokCbMFEMjUohhS/2', 'o2yo12oHDVWvUUpnxW35MFHnbZUVeXYy41amO33ZPu6PgCUpVr2H7CspD9.a', '2020-07-20 04:04:55', '2020-07-20 04:04:55'),
(16, 'marcelino', 'quispe', 23, '12/32/2020', 'a2ya10aPUDRfrmOAMz8XgHkAK4Sn.8wLeODQjjASEH5qL4BG/IvCqR6DjwYy', 'o2yo12o3BH9zx2j67MlMO33WxeHfOLl9h83yhwbMHXvROQJhao.eaCmHpnVC', '2020-07-20 05:39:27', '2020-07-20 05:39:27'),
(17, 'teodoro', 'morales soto', 23, '03/09/2090', 'a2ya10aFVlqb4vbP2CgjwbeShKhcuDQC6AOWKTE2NnrCmpg1Npq39dUKrT52', 'o2yo12o1XLLdIVdm0yDryczYsDQtO4gHyD.58dMpLFckkBaTw/qeQQwf4tXa', '2020-07-20 06:08:56', '2020-07-20 06:08:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `igv` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_cliente`, `id_articulo`, `subtotal`, `igv`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 18, 23, '2020-07-19 17:41:40', '0000-00-00 00:00:00'),
(2, 2, 2, 100, 18, 23, '2020-07-19 17:41:45', '0000-00-00 00:00:00'),
(3, 1, 3, 100, 120, 3000, '2020-07-19 17:41:51', '0000-00-00 00:00:00'),
(4, 2, 3, 100, 18, 118, '2020-07-19 22:56:45', '2020-07-19 22:56:45'),
(5, 2, 3, 100, 18, 118, '2020-07-19 23:34:49', '2020-07-19 23:34:49'),
(6, 2, 3, 100, 366.1, 2766.1, '2020-07-20 02:42:58', '2020-07-20 02:42:58'),
(7, 6, 2, 14400, 2196.61, 16596.6, '2020-07-20 02:52:37', '2020-07-20 02:52:37'),
(8, 10, 3, 1600, 244.07, 1844.07, '2020-07-20 02:56:37', '2020-07-20 02:56:37'),
(9, 11, 2, 1200, 183.05, 1383.05, '2020-07-20 02:59:51', '2020-07-20 02:59:51'),
(10, 11, 4, 4000, 610.17, 4610.17, '2020-07-20 03:10:19', '2020-07-20 03:10:19'),
(11, 12, 3, 1600, 244.07, 1844.07, '2020-07-20 03:40:37', '2020-07-20 03:40:37'),
(12, 13, 4, 1600, 244.07, 1844.07, '2020-07-20 03:46:21', '2020-07-20 03:46:21'),
(13, 14, 2, 3600, 549.15, 4149.15, '2020-07-20 03:55:42', '2020-07-20 03:55:42'),
(14, 14, 1, 32, 4.88, 36.88, '2020-07-20 03:56:35', '2020-07-20 03:56:35'),
(15, 10, 2, 2400, 366.1, 2766.1, '2020-07-20 04:04:01', '2020-07-20 04:04:01'),
(16, 15, 4, 1600, 244.07, 1844.07, '2020-07-20 04:05:43', '2020-07-20 04:05:43'),
(17, 16, 2, 2400, 366.1, 2766.1, '2020-07-20 05:40:23', '2020-07-20 05:40:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
