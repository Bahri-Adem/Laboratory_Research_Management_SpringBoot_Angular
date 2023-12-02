-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 02 déc. 2023 à 13:21
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `labo`
--

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `date`, `lieu`, `titre`) VALUES
(1, '2021-09-25', 'Tunis', 'TSYP'),
(2, '2022-08-10', 'Tunis', 'JET\'XPO'),
(3, '2022-08-10', 'Monastir', 'Forum ENIM'),
(4, '2021-08-10', 'Sfax', 'PYFAC');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `type_mbr` varchar(3) NOT NULL,
  `id` bigint(20) NOT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varbinary(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `etablissement` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `diplome` varchar(255) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  `encadrant_id` bigint(20) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`type_mbr`, `id`, `cin`, `cv`, `date`, `email`, `nom`, `password`, `photo`, `prenom`, `etablissement`, `grade`, `date_inscription`, `diplome`, `sujet`, `encadrant_id`, `role`) VALUES
('ens', 1, '14019376', 'cv2', '2019-10-29', 'jmaiel@enis.tn', 'Jmaiel', '123', NULL, 'Mohamed', 'ENIS', 'Higher education professor', NULL, NULL, NULL, NULL, 'ens'),
('ens', 2, '14019376', 'cv1', '2010-09-07', 'aziz@enis.tn', 'Bejaoui', '123', NULL, 'Aziz', 'FSS', 'Lecturer', NULL, NULL, NULL, NULL, 'ens'),
('etd', 3, '14019376', 'cv2', '2001-01-25', 'adem@enis.tn', 'Bahri', '12345', NULL, 'Adem', NULL, NULL, '2021-08-31', 'GI', 'Microservices', 1, 'etd'),
('etd', 4, '14019376', 'cv1', '2001-01-25', 'firas@enis.tn', 'Chakroun', '50091931', NULL, 'Firas', NULL, NULL, '2021-08-31', 'GI', ' Mlops,Data', 10, 'etd'),
('etd', 7, '14019376', 'cv1', '2001-01-25', 'aabdou@enis.tn', 'Abdou', '50091931', NULL, 'Amal', NULL, NULL, '2021-09-01', 'GI', 'BlockChain', 2, 'etd'),
('etd', 8, '14019376', 'cv1', '2001-01-25', 'aabdou@enis.tn', 'ryma', '50091931', NULL, '9atata', NULL, NULL, '2021-09-01', 'GI', 'BlockChain', 1, 'etd'),
('ens', 9, '14019376', 'cv2', '2019-10-15', 'assil@enis.tn', 'Bouaziz', '123', NULL, 'Assil', 'ENETCOM', 'Assistant professor', NULL, NULL, NULL, NULL, 'ens'),
('ens', 10, '14091964', 'cv2', '2019-10-11', 'Imane@enis.tn', 'Lahyeni', '123', NULL, 'Imane', 'ENIS', 'Assistant professor', NULL, NULL, NULL, NULL, 'ens'),
('ens', 11, '15486324', 'cv2', '2002-03-01', 'zied@fss.tn', 'GORMAZI', '123', NULL, 'ZIED', 'FSS', 'Assistant', NULL, NULL, NULL, NULL, 'ens'),
('ens', 13, '14019346', 'cv1', '2023-11-30', 'bahruy.adem@gmail.com', 'Bahri', '12345', NULL, 'Adem', 'ENETCOM', 'Lecturer', NULL, NULL, NULL, NULL, 'ens'),
('etd', 14, '14019376', 'cv2', '2001-01-25', 'adem@gmail.com', 'Bahryyy', '50091931', NULL, 'Adem', NULL, NULL, '2021-08-31', 'GI', 'Microservices', 2, 'etd'),
('etd', 15, '14019376', 'cv2', '2001-01-25', 'adem@gmail.tn', 'Bahry', '50091931', NULL, 'Adem', NULL, NULL, '2021-08-31', 'GI', 'Microservices', NULL, 'etd'),
('etd', 16, '12345678', 'cv2', '2023-11-16', 'aa@aa.aa', 'aa', '12345', NULL, 'aa', NULL, NULL, '2023-11-06', 'GEM', 'aze', 11, 'etd'),
('adm', 17, '14019645', NULL, '2000-01-25', 'admin@admin.com', 'admin', '123', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `membre_publication`
--

CREATE TABLE `membre_publication` (
  `publication_id` bigint(20) NOT NULL,
  `auteur_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membre_publication`
--

INSERT INTO `membre_publication` (`publication_id`, `auteur_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(4, 2),
(5, 2),
(1, 4),
(4, 4),
(1, 7),
(1, 10),
(2, 10),
(4, 10),
(4, 11);

-- --------------------------------------------------------

--
-- Structure de la table `outil`
--

CREATE TABLE `outil` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `outil`
--

INSERT INTO `outil` (`id`, `date`, `source`) VALUES
(1, '2021-08-10', 'labo'),
(2, '2022-08-10', 'Ebay'),
(3, '2023-12-31', 'Amazone'),
(4, '2023-08-10', 'Jumia');

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `sourcepdf` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `publication`
--

INSERT INTO `publication` (`id`, `date`, `lien`, `sourcepdf`, `titre`, `type`) VALUES
(1, '2021-01-25', 'https://en.wikipedia.org/wiki/Blockchain', 'source1', 'Blockchain', 'Journal'),
(2, '2022-09-25', 'https://fr.wikipedia.org/wiki/Intelligence_artificielle', 'source2', 'IA', 'Poster'),
(3, '2023-09-25', 'https://en.wikipedia.org/wiki/Microservices', 'source3', 'Microservices', 'Book'),
(4, '2023-11-08', 'https://en.wikipedia.org/wiki/Machine_learning', 'source4', 'ML', 'Book Chapter'),
(5, '2021-01-25', 'ff', 'source1', 'Deep Learning', 'Journal'),
(6, '2021-01-25', 'ff', 'source1', 'Cyber Security', 'Journal'),
(7, '2021-01-25', 'ff', 'source1', 'Cyber Security15', 'Journal'),
(8, '2023-11-13', NULL, NULL, 'aa', 'aa'),
(9, '2023-11-13', 'bb', 'kjkj', 'bb', 'bb'),
(10, '2023-11-13', 'aa', 'ff', 'dd', 'dd');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm0suct57rjlcjnps6d78da2ek` (`encadrant_id`);

--
-- Index pour la table `membre_publication`
--
ALTER TABLE `membre_publication`
  ADD PRIMARY KEY (`auteur_id`,`publication_id`);

--
-- Index pour la table `outil`
--
ALTER TABLE `outil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `outil`
--
ALTER TABLE `outil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `membre`
--
ALTER TABLE `membre`
  ADD CONSTRAINT `FKm0suct57rjlcjnps6d78da2ek` FOREIGN KEY (`encadrant_id`) REFERENCES `membre` (`id`);

--
-- Contraintes pour la table `membre_publication`
--
ALTER TABLE `membre_publication`
  ADD CONSTRAINT `FKptbllpn1fr7j7sxfw7yaa1j9s` FOREIGN KEY (`auteur_id`) REFERENCES `membre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
