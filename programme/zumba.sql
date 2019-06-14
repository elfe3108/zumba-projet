-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 13 juin 2019 à 09:38
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `zumba`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

DROP TABLE IF EXISTS `adherent`;
CREATE TABLE IF NOT EXISTS `adherent` (
  `ID_adher` int(10) NOT NULL AUTO_INCREMENT,
  `nom_adher` varchar(25) DEFAULT NULL,
  `prenom_adher` varchar(25) DEFAULT NULL,
  `tel_adher` int(10) DEFAULT NULL,
  `mail_adher` varchar(60) NOT NULL,
  `adresse_adher` varchar(50) DEFAULT NULL,
  `cp_adher` int(5) DEFAULT NULL,
  `ville_adher` varchar(20) DEFAULT NULL,
  `statut_adher` varchar(15) NOT NULL,
  `mdp_adher` varchar(250) NOT NULL,
  `photo_adher` blob,
  `ID_event` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID_adher`),
  UNIQUE KEY `ID_adher` (`ID_adher`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`ID_adher`, `nom_adher`, `prenom_adher`, `tel_adher`, `mail_adher`, `adresse_adher`, `cp_adher`, `ville_adher`, `statut_adher`, `mdp_adher`, `photo_adher`, `ID_event`) VALUES
(1, 'ROMEAS', 'Lou', 745123974, 'lou.romeas@gmail.com', '3 rue des clémentines', 69000, 'LYON', 'president', 'liLLo?1508', NULL, NULL),
(2, 'ERJI', 'Emma', 745854878, 'emma.j@g.makup', '8 rue du theatre', 42000, 'SAINT-ETIENNE', 'secretaire', 'Canou08\"E', NULL, NULL),
(3, 'MEHEMI', 'Kamel', 678452589, 'k.me@outlook.com', '78 rue de la ville', 42660, 'JONZIEUX', 'professeur', 'skiADonf!!', NULL, NULL),
(4, 'ARNAUD', 'Fabien', 645712354, 'fabien.arn@hotmail.fr', '12 rue du passe ', 42690, 'FRAISSES', 'adherent', 'favROM@01', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

DROP TABLE IF EXISTS `evenement`;
CREATE TABLE IF NOT EXISTS `evenement` (
  `ID_event` int(10) NOT NULL AUTO_INCREMENT,
  `horaire_event` datetime NOT NULL,
  `tarif_event` smallint(6) NOT NULL,
  `nbinscrit_event` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID_event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `ID_statut` int(20) NOT NULL AUTO_INCREMENT,
  `personnel_satut` varchar(20) NOT NULL,
  `adherent_statut` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_statut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
