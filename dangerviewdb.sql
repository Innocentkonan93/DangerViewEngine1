-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 12 juin 2020 à 10:12
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dangerviewdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id` int(100) NOT NULL,
  `ajoutinfo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifinfo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suppinfo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dangertable`
--

CREATE TABLE `dangertable` (
  `id` int(100) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `victime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bourreau` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dangertable`
--

INSERT INTO `dangertable` (`id`, `type`, `victime`, `bourreau`, `lieu`, `source`, `description`, `date`) VALUES
(5, 'Braquage', 'Homme', 'Homme', 'Abobo', 'Reseaux sociaux', 'Braquage dangereux', '2020-06-09 12:41:47'),
(7, 'Agression', 'Homme', 'Homme', 'Marcory', 'Allo police', 'Une grave agression', '2020-06-10 19:02:46'),
(8, 'Accident', 'Groupe de personnes', 'Homme', 'Treichville', 'Marie de treichville', 'Alcool au volant', '2020-06-10 11:08:37'),
(16, 'Suicide', 'Homme', 'Nature', 'Cocody Saint-jean', 'Rti', 'Pris par le désespoir.', '2020-06-11 03:07:31');

-- --------------------------------------------------------

--
-- Structure de la table `dangertype`
--

CREATE TABLE `dangertype` (
  `id` int(255) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dangertype`
--

INSERT INTO `dangertype` (`id`, `type`) VALUES
(1, 'Accident'),
(5, 'Arnaque'),
(7, 'Braquage'),
(8, 'Crime passionnel'),
(9, 'Enlèvement'),
(12, 'Incendie'),
(10, 'Inondation'),
(11, 'Intoxication'),
(4, 'Suicide'),
(2, 'Trouble Publics'),
(3, 'Viol'),
(6, 'Violence conjugale');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `id` int(100) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quartier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demographie` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geographie` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `date`) VALUES
(1, '', '0000-00-00 00:00:00'),
(3, 'sss', '0000-00-00 00:00:00'),
(4, 'Bonjour !', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(100) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fnc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateinscript` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `mail`, `mdp`, `fnc`, `dateinscript`) VALUES
(1, 'Fabrice Dubesset', 'fabdub@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Superviseur', '2020-06-09'),
(2, 'Konan Koffi', 'konankoffiinnocent@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Administrateur', '2020-06-09'),
(3, 'Mathieu Corchet', 'matcorchet@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Opérateur', '2020-06-09'),
(4, 'André Pascal', 'andyp@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Opérateur', '2020-06-09'),
(5, 'Patricia Ganchon', 'patgan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Opérateur', '2020-06-09'),
(13, 'Marthe', 'mm10@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Opérateur', '2020-06-09'),
(14, 'papin', 'papin@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Opérateur', '2020-06-09'),
(15, 'Momo', 'momo@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Opérateur', '2020-06-09'),
(16, 'Togo Kouassi', 'rcky@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Superviseur', '2020-06-10');

-- --------------------------------------------------------

--
-- Structure de la table `visiteurs`
--

CREATE TABLE `visiteurs` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visiteurs`
--

INSERT INTO `visiteurs` (`id`, `ip`) VALUES
(1, '192.168.64.1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dangertable`
--
ALTER TABLE `dangertable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dangertype`
--
ALTER TABLE `dangertype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dangertable`
--
ALTER TABLE `dangertable`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `dangertype`
--
ALTER TABLE `dangertype`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
