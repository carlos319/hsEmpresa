-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-09-2019 a las 04:49:19
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hsempresa`
--
CREATE DATABASE IF NOT EXISTS `hsempresa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hsempresa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hslogin`
--

DROP TABLE IF EXISTS `hslogin`;
CREATE TABLE IF NOT EXISTS `hslogin` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hslogin`
--

INSERT INTO `hslogin` (`idUsuario`, `usuario`, `contrasena`) VALUES
(1, 'Alcides', '1234'),
(2, 'Carlos', '5678'),
(3, 'Leonel', '3456');
--
-- Base de datos: `registro`
--
CREATE DATABASE IF NOT EXISTS `registro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registro`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idUsuario`, `usuario`, `contrasena`) VALUES
(1, 'Alcides', '1234'),
(7, 'Carlos', '3456'),
(8, 'Leonel', '5678');
--
-- Base de datos: `registro_clientes`
--
CREATE DATABASE IF NOT EXISTS `registro_clientes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registro_clientes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idClien` int(11) NOT NULL AUTO_INCREMENT,
  `nombClien` varchar(40) NOT NULL,
  `correoClien` varchar(40) NOT NULL,
  `dirClien` varchar(20) NOT NULL,
  `CategClien` int(5) NOT NULL,
  PRIMARY KEY (`idClien`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idClien`, `nombClien`, `correoClien`, `dirClien`, `CategClien`) VALUES
(1, 'Andrés garcía', 'andres@udea.edu.co', 'Cl 34 N 34 25', 3),
(2, 'Julio Santodomingo', 'julio@udea.edu.co', 'Cra 84 N 65 - 26', 2),
(4, 'Alcides Antonio Zapata MÃ©ndez', 'hacienda@elsantuario-antioquia.gov.co', 'Calle 50 No. 49 - 71', 2),
(5, 'Alcides Antonio Zapata MÃ©ndez', 'hacienda@elsantuario-antioquia.gov.co', 'Calle 50 No. 49 - 71', 2),
(6, 'Leonel Zapata', 'tetdhb@rueue', 'gsdkdl', 3),
(7, 'Leonel Zapata', 'tetdhb@rueue', 'gsdkdl', 3),
(8, 'Paola', 'paoliza@udea.co', 'cajkld', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
