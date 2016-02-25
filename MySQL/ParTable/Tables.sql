-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `CompNutri`;
DROP TABLE IF EXISTS `Aliment`;
DROP TABLE IF EXISTS `Genre`;
DROP TABLE IF EXISTS `Constituant`;

--
-- Structure de la table `Constituant`
--

CREATE TABLE `Constituant` (
  `numConst` int(11) NOT NULL AUTO_INCREMENT,
  `origineFrConst` varchar(80) DEFAULT NULL,
  `origineAnConst` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`numConst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Genre`
--

CREATE TABLE `Genre` (
  `numGenre` varchar(4) NOT NULL,
  `nomAnGenre` varchar(128) NOT NULL,
  `nomFrGenre` varchar(128) NOT NULL,
  PRIMARY KEY (`numGenre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Structure de la table `Aliment`
--


CREATE TABLE `Aliment` (
  `numAliment` integer NOT NULL AUTO_INCREMENT,
  `nomFrAliment` varchar(255) NOT NULL,
  `nomAnAliment` varchar(24) NOT NULL,
  `numGenre` varchar(4) NOT NULL,
  PRIMARY KEY (`numAliment`),
  FOREIGN KEY (`numGenre`) REFERENCES `Genre`(`numGenre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `CompNutri`
--

CREATE TABLE `CompNutri` (
  `numAliment` integer NOT NULL,
  `numConst` int(11) NOT NULL,
  `valNutri` varchar(255) DEFAULT NULL,
  `valMinNutri` double DEFAULT NULL,
  `valMaxNutri` double DEFAULT NULL,
  `nbEchantNutri` double DEFAULT NULL,
  `ccEurNutri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numAliment`,`numConst`),
  FOREIGN KEY (`numAliment`) REFERENCES `Aliment`(`numAliment`),
  FOREIGN KEY (`numConst`) REFERENCES `Constituant`(`numConst`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
