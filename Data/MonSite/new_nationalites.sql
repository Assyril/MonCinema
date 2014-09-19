-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 14 Novembre 2013 à 08:31
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `new_nationalites`
--

CREATE TABLE IF NOT EXISTS `new_nationalites` (
  `Nr_Nation` char(3) NOT NULL,
  `Nom` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Nr_Nation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `new_nationalites`
--

INSERT INTO `new_nationalites` (`Nr_Nation`, `Nom`) VALUES
('ar', 'Argentin'),
('au', 'Australien'),
('be', 'Belge'),
('ca', 'Canadien'),
('ch', 'Suisse'),
('cn', 'Chinois'),
('cv', 'Sud-Africain'),
('de', 'Allemand'),
('dk', 'Danois'),
('es', 'Espagnol'),
('fr', 'Français'),
('gb', 'Anglais'),
('hu', 'Hongrois'),
('in', 'Indien'),
('it', 'Italien'),
('jp', 'Japonais'),
('mx', 'Méxicain'),
('nl', 'Néerlandais'),
('nz', 'Néo-zélandais'),
('ru', 'Russe'),
('se', 'Suédois'),
('th', 'Thaïlandais'),
('ua', 'Ukrainien'),
('us', 'Américian');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
