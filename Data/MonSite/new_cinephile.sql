-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 06 Novembre 2013 à 15:14
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
-- Structure de la table `new_cinephile`
--

CREATE TABLE IF NOT EXISTS `new_cinephile` (
  `Nr_cinephile` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `Password` varchar(30) DEFAULT NULL,
  `Nom_Cinephile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Nr_cinephile`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `new_cinephile`
--

INSERT INTO `new_cinephile` (`Nr_cinephile`, `Password`, `Nom_Cinephile`) VALUES
(1, 'assyril', 'Bruno'),
(2, 'eiffel', 'Jeff');
