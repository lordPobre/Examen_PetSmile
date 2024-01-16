-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.15-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para clinica
CREATE DATABASE IF NOT EXISTS `clinica` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `clinica`;

-- Volcando estructura para tabla clinica.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idMascota` int(11) NOT NULL,
  `rutDueno` int(11) NOT NULL,
  `nombreMascota` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_agenda_mascota` (`idMascota`),
  KEY `FK_agenda_dueno` (`rutDueno`),
  CONSTRAINT `FK_agenda_dueno` FOREIGN KEY (`rutDueno`) REFERENCES `dueno` (`rut`),
  CONSTRAINT `FK_agenda_mascota` FOREIGN KEY (`idMascota`) REFERENCES `mascota` (`idMascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla clinica.agenda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;

-- Volcando estructura para tabla clinica.dueno
CREATE TABLE IF NOT EXISTS `dueno` (
  `rut` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(9) NOT NULL,
  `nombreMascota` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla clinica.dueno: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dueno` DISABLE KEYS */;
/*!40000 ALTER TABLE `dueno` ENABLE KEYS */;

-- Volcando estructura para tabla clinica.mascota
CREATE TABLE IF NOT EXISTS `mascota` (
  `idMascota` int(11) NOT NULL AUTO_INCREMENT,
  `rutDueno` int(11) NOT NULL,
  `tipoMascota` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(2) NOT NULL,
  `nombreMascota` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idMascota`),
  KEY `rutDueno` (`rutDueno`),
  CONSTRAINT `rutDueno` FOREIGN KEY (`rutDueno`) REFERENCES `dueno` (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla clinica.mascota: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;

-- Volcando estructura para tabla clinica.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla clinica.usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nombreUsuario`, `password`) VALUES
	(1, 'esilva', '123456'),
	(2, 'admin', '123456');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
