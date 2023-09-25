-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 25 sep. 2023 à 16:40
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Boite mail`
--

-- --------------------------------------------------------

--
-- Structure de la table `Contact`
--

CREATE TABLE `Contact` (
  `Idcontact` int(255) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Tel` int(255) NOT NULL,
  `Adresse` text NOT NULL,
  `CP` int(255) NOT NULL,
  `Ville` text NOT NULL,
  `Societe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `EtatMail`
--

CREATE TABLE `EtatMail` (
  `Idetatmail` int(11) NOT NULL,
  `libelle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Mail`
--

CREATE TABLE `Mail` (
  `Idmail` int(255) NOT NULL,
  `Expediteur` text NOT NULL,
  `entete` varchar(255) NOT NULL,
  `corp` varchar(255) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Piecejointe`
--

CREATE TABLE `Piecejointe` (
  `IdPiecejointe` int(255) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `Object` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `Iduser` int(255) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Psw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `EtatMail`
--
ALTER TABLE `EtatMail`
  ADD PRIMARY KEY (`Idetatmail`);

--
-- Index pour la table `Mail`
--
ALTER TABLE `Mail`
  ADD PRIMARY KEY (`Idmail`);

--
-- Index pour la table `Piecejointe`
--
ALTER TABLE `Piecejointe`
  ADD PRIMARY KEY (`IdPiecejointe`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`Iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
