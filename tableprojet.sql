-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 09 Octobre 2023 à 12:38
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tableprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `Idcontact` int(255) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `Adresse` text NOT NULL,
  `CP` int(255) NOT NULL,
  `Ville` text NOT NULL,
  `Societe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`Idcontact`, `Nom`, `Prenom`, `Mail`, `Tel`, `Adresse`, `CP`, `Ville`, `Societe`) VALUES
(1, 'pivert', 'marc', 'ma@gmail.com', '67380', '2 rue quelque part', 60606, 'somewhere city', 'stralang'),
(2, 'menteuse', 'betul', 'betul@gmail.com', '601020387', '3 rue du chemin de fer', 75000, 'paris', 'xpoda'),
(3, 'schewer', 'lolish', 'lo@gmail.com', '636656565', '2 rue de la banquise', 0, 'pole nord', 'sncf'),
(4, 'Pendut', 'seb', 'pendut@gmail.com', '782981832', '2 rue herad', 67200, 'dublin', 'lycee rene cassin'),
(5, 'sevautour', 'ianis', 'ianis@gmail.com', '0578564356', '2 rue du bois de boulogne', 92012, 'vice city', 'macdo');

-- --------------------------------------------------------

--
-- Structure de la table `etatmail`
--

CREATE TABLE `etatmail` (
  `Idetatmail` int(11) NOT NULL,
  `libelle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `mail`
--

CREATE TABLE `mail` (
  `Idmail` int(255) NOT NULL,
  `Expediteur` text NOT NULL,
  `entete` varchar(255) NOT NULL,
  `corp` varchar(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `piecejointe`
--

CREATE TABLE `piecejointe` (
  `IdPiecejointe` int(255) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `Object` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Iduser` int(255) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Psw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Iduser`, `Nom`, `Prenom`, `Mail`, `Psw`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `etatmail`
--
ALTER TABLE `etatmail`
  ADD PRIMARY KEY (`Idetatmail`);

--
-- Index pour la table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`Idmail`);

--
-- Index pour la table `piecejointe`
--
ALTER TABLE `piecejointe`
  ADD PRIMARY KEY (`IdPiecejointe`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Iduser`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
