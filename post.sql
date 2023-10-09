-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 04 oct. 2023 à 15:18
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `keyce_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `date`) VALUES
(1, 'Exploring the Beauty of the World: A Guide to Budget-Friendly Travel', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi quos eos illo voluptatem sequi! Maxime exercitationem ex assumenda rerum iure dolore provident. Iusto pariatur accusantium amet eius, dolores aliquam eveniet.', '2023-02-10 15:18:00'),
(2, 'Some new title', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi quos eos illo voluptatem sequi! Maxime exercitationem ex assumenda rerum iure dolore provident. Iusto pariatur accusantium amet eius, dolores aliquam eveniet.', '2023-02-10 15:18:00'),
(3, 'Discovering the Hidden Gems of Rome: A Foodie\'s Guide', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi quos eos illo voluptatem sequi! Maxime exercitationem ex assumenda rerum iure dolore provident. Iusto pariatur accusantium amet eius, dolores aliquam eveniet.', '2023-02-10 15:19:34'),
(4, 'Uncovering the Secrets: A Guide to Exploring New York City', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Modi quos eos illo voluptatem sequi! Maxime exercitationem ex assumenda rerum iure dolore provident. Iusto pariatur accusantium amet eius, dolores aliquam eveniet.', '2023-02-10 15:19:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
