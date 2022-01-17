-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 nov. 2021 à 14:06
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jobsql`
--

-- --------------------------------------------------------

--
-- Structure de la table `etage`
--

DROP TABLE IF EXISTS `etage`;
CREATE TABLE IF NOT EXISTS `etage` (
  `id` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `superficie` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etage`
--

INSERT INTO `etage` (`id`, `nom`, `numero`, `superficie`) VALUES
(1, 'RDC', 0, 500),
(2, 'R+1', 1, 500),
(3, 'R+2', 2, 500);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `naissance` date DEFAULT NULL,
  `sexe` varchar(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `naissance`, `sexe`, `email`) VALUES
(NULL, 'Zimmermann', 'Cyril', '1989-01-02', 'Homme', 'cyril@laplateforme.io'),
(NULL, 'Soriano', 'Jessica', '1995-09-08', 'Femme', 'jessica@laplateforme.io'),
(NULL, 'Roumégas', 'Roxan', '2016-09-08', 'Homme', 'roxan@laplateforme.io'),
(NULL, 'Assens', 'Pascal', '1999-12-31', 'Homme', 'pascal@laplateforme.io'),
(NULL, 'Cristinelli', 'Terry', '2005-02-01', 'Homme', 'terry@laplateforme.io'),
(NULL, 'Habib', 'Ruben', '1993-05-26', 'homme', 'ruben.habib@laplateforme.io'),
(NULL, 'dupont', 'Toto', '2019-11-07', 'Homme', 'toto.dupont@laplateforme.io');

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

DROP TABLE IF EXISTS `salles`;
CREATE TABLE IF NOT EXISTS `salles` (
  `id` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `id_etage` int(11) DEFAULT NULL,
  `capacite` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id`, `nom`, `id_etage`, `capacite`) VALUES
(1, 'Lounge', 1, 100),
(2, 'Studio Son', 1, 5),
(3, 'Projection', 2, 50),
(4, 'Bocal Peda', 2, 3),
(5, 'Coworking', 2, 80),
(6, 'Studio Video', 2, 5),
(7, 'C++', 3, 8),
(8, 'C', 3, 6),
(9, 'Big Black Room', 3, 80),
(10, 'New Double', 3, 25),
(11, 'Double', 3, 25),
(12, 'Wesh Grow', 3, 1),
(13, 'Front room', 3, 20),
(14, 'Back room', 3, 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
