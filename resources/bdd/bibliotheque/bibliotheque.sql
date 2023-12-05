-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:34
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `id_adherent` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_adhesion` date NOT NULL,
  `adresse` varchar(15) NOT NULL,
  `num_tel` varchar(15) NOT NULL,
  `mail` varchar(15) NOT NULL,
  PRIMARY KEY (`id_adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`id_adherent`, `nom`, `prenom`, `date_naissance`, `date_adhesion`, `adresse`, `num_tel`, `mail`) VALUES
(1, 'ankri', 'aron', '2023-12-13', '2023-12-30', '1 allée des pro', '0601020304', 'a.a@gmail.com'),
(2, 'Li', 'Oliver', '2023-12-31', '2023-12-21', '1 allée des pro', '5554656', 'o.l@gmail.com'),
(3, 'Musk', 'Elon', '2023-12-29', '2023-12-29', '1 allée des pro', '0561651', 'a.a@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id_auteur` varchar(15) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id_auteur`, `nom`, `prenom`, `date_naissance`) VALUES
('1', 'Musk', 'Elon', '2023-12-14'),
('2', 'Belfort', 'Jordan', '2023-12-12'),
('3', 'Musso', 'Guillaume', '2023-12-30');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `date_emprunt` date NOT NULL,
  `duree` int(11) NOT NULL,
  `id_adherent` int(11) NOT NULL,
  `reference_livre` varchar(11) NOT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `id_adherent` (`id_adherent`,`reference_livre`),
  KEY `reference_livre` (`reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`id_emprunt`, `date_emprunt`, `duree`, `id_adherent`, `reference_livre`) VALUES
(1, '2023-12-29', 1, 1, '123456'),
(2, '2023-12-15', 2, 2, '123457'),
(3, '2023-12-28', 2, 3, '123458');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `reference_livre` varchar(15) NOT NULL,
  `nbre_pages` int(11) NOT NULL,
  `id_auteur` varchar(15) NOT NULL,
  `date_publication` date NOT NULL,
  `genre` varchar(15) NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `nbre_emprunts` int(11) NOT NULL,
  `etat` varchar(15) NOT NULL,
  `nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`reference_livre`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`reference_livre`, `nbre_pages`, `id_auteur`, `date_publication`, `genre`, `disponibilite`, `nbre_emprunts`, `etat`, `nbre_exemplaire`) VALUES
('123456', 185, '1', '2023-12-15', 'Fiction', 0, 5, 'bon', 5),
('123457', 2000, '2', '2023-12-13', 'Fiction', 0, 8, 'mauvais', 5),
('123458', 120, '3', '2023-12-13', 'Fiction', 0, 5, 'bon', 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`reference_livre`) REFERENCES `livres` (`reference_livre`),
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`id_adherent`) REFERENCES `adherents` (`id_adherent`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteurs` (`id_auteur`);
