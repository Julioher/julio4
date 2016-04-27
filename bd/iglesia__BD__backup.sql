-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-04-2016 a las 21:06:42
-- Versión del servidor: 5.1.37
-- Versión de PHP: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `iglesia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo`
--

CREATE TABLE IF NOT EXISTS `atributo` (
  `idAtributo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idAtributo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `atributo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feligres`
--

CREATE TABLE IF NOT EXISTS `feligres` (
  `idFeligres` int(11) NOT NULL AUTO_INCREMENT,
  `pNombre` varchar(50) NOT NULL,
  `sNombre` varchar(50) NOT NULL,
  `pApellido` varchar(50) NOT NULL,
  `sApellido` varchar(50) NOT NULL,
  `Genero` varchar(10) NOT NULL,
  `telefonoMovil` varchar(15) NOT NULL,
  `telefonoCasa` varchar(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `idGrupoAdoracion` int(11) NOT NULL,
  PRIMARY KEY (`idFeligres`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `feligres`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feligresatributo`
--

CREATE TABLE IF NOT EXISTS `feligresatributo` (
  `id_feligresAtributo` int(11) NOT NULL AUTO_INCREMENT,
  `idFeligres` int(11) DEFAULT NULL,
  `idAtributo` int(11) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_feligresAtributo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `feligresatributo`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feligresministerio`
--

CREATE TABLE IF NOT EXISTS `feligresministerio` (
  `id_feligresministerio` int(11) NOT NULL AUTO_INCREMENT,
  `idFeligres` int(11) DEFAULT NULL,
  `idMinisterio` int(11) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_feligresministerio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `feligresministerio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoadoracion`
--

CREATE TABLE IF NOT EXISTS `grupoadoracion` (
  `idGrupoAdoracion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `idFeligres` int(11) NOT NULL,
  PRIMARY KEY (`idGrupoAdoracion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `grupoadoracion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ministerio`
--

CREATE TABLE IF NOT EXISTS `ministerio` (
  `idMinisterio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idMinisterio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `ministerio`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `usuario`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
