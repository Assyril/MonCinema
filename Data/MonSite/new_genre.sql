-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 06 Novembre 2013 à 10:40
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `new_genre`
--

CREATE TABLE IF NOT EXISTS `new_genre` (
  `Id_Genre` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `Nom_Genre` char(18) DEFAULT NULL,
  PRIMARY KEY (`Id_Genre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `new_genre`
--

INSERT INTO `new_genre` (`Id_Genre`, `Nom_Genre`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Aventure'),
(4, 'Biographie'),
(5, 'Comédie'),
(6, 'Dessin-animé'),
(7, 'Documentaire'),
(8, 'Drame'),
(9, 'Epouvante-horreur'),
(10, 'Espionnage'),
(11, 'Fantastique'),
(12, 'Historique'),
(13, 'Guerre'),
(14, 'Musical'),
(15, 'Péplum'),
(16, 'Policier'),
(17, 'Romance'),
(18, 'Science fiction'),
(19, 'Thriller'),
(20, 'Western');
