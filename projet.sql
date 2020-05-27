-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 27 mai 2020 à 11:15
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_cci`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `user_id`, `titre`, `contenu`, `auteur`, `created_at`, `image_name`, `updated_at`, `resume`) VALUES
(1, 1, 'Patch note 3.01', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-26 20:10:19', '3349844.jpg', '2020-05-26 21:14:45', 'Nouveaux skins, équilibrage de la vitesse, ajout d\'un profil joueur et pleins d\'autres choses.. Venez vite lire tout ça !'),
(2, 1, 'Saison 4 récompense et bonus', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-26 20:57:31', '1845.jpg', '2020-05-26 21:15:13', 'Vous trouverez dans cet article tout les skins, récompenses de saison et nouveautées ainsi que les grands vainqueur de la saison précédente !'),
(3, 1, 'Nouveau LeaderBoard !', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-26 21:02:55', 'peepoodo_reward_wallpaper_desktop03_2560x1440.jpg', '2020-05-26 21:15:33', 'Nouveau LeaderBoard ! Venez vite découvrir le nouveau tableau des scores avec pleins d\'informations intéressantes et un nouveau system pour comparer ses statistiques avec les autres joueurs !'),
(4, 1, 'Article aléatoire !', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-26 21:04:44', 'peepoodo_reward_wallpaper_desktop06_2560x1440.jpg', '2020-05-26 21:04:44', 'Cet article n\'a pas de sens : Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?'),
(5, 1, 'Patch note 3.01', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-25 20:10:19', '3349844.jpg', '2020-05-25 21:14:45', 'Nouveaux skins, équilibrage de la vitesse, ajout d\'un profil joueur et pleins d\'autres choses.. Venez vite lire tout ça !'),
(6, 1, 'Saison 4 récompense et bonus', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-25 20:57:31', '1845.jpg', '2020-05-25 21:15:13', 'Vous trouverez dans cet article tout les skins, récompenses de saison et nouveautées ainsi que les grands vainqueur de la saison précédente !'),
(7, 1, 'Nouveau LeaderBoard !', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-25 21:02:55', 'peepoodo_reward_wallpaper_desktop03_2560x1440.jpg', '2020-05-25 21:15:33', 'Nouveau LeaderBoard ! Venez vite découvrir le nouveau tableau des scores avec pleins d\'informations intéressantes et un nouveau system pour comparer ses statistiques avec les autres joueurs !'),
(8, 1, 'Article aléatoire !', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?', 'bloup@gmail.com', '2020-05-25 21:04:44', 'peepoodo_reward_wallpaper_desktop06_2560x1440.jpg', '2020-05-26 21:04:44', 'Cet article n\'a pas de sens : Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto explicabo sapiente dicta libero perspiciatis error iste omnis soluta repudiandae numquam, dolor vitae nemo optio sint. Eius dolor repellat quo inventore?');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `user_id`, `created_at`, `quantity`) VALUES
(1, 1, '2020-05-26 21:33:31', 1),
(2, 2, '2020-05-26 23:01:50', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande_produit`
--

INSERT INTO `commande_produit` (`commande_id`, `produit_id`) VALUES
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `posted_at`) VALUES
(2, 1, 'Julien', 'J\'adore ça c\'est parfait vous avez le titre les amis et même une glace !lol', '2020-05-26 22:48:27');

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id`, `user_id`, `score`, `created_at`) VALUES
(1, 1, 147, '2020-05-26 19:58:33'),
(2, 2, 58694, '2020-05-26 22:08:52'),
(3, 3, 650, '2020-05-26 22:09:11'),
(4, 4, 40, '2020-05-26 22:09:30'),
(5, 5, 498, '2020-05-26 22:10:30'),
(6, 6, 46, '2020-05-26 22:16:32');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200526174644', '2020-05-26 17:46:51'),
('20200526175051', '2020-05-26 17:50:57');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `prix`, `categorie`, `description`, `image`, `updated_at`) VALUES
(1, 'Skin asrtonaute !', 5000, 'Skin', 'Skin de l\'espace pour votre personnage !', 'vgcup-logo-animation-loop.gif', '2020-05-26 21:22:33'),
(2, 'Skin paysage lunaire !', 5000, 'Skin', 'Skin de l\'espace pour votre paysage durant vos parties le plus cool !', '2472783.jpg', '2020-05-26 21:24:22'),
(3, 'Skin asrtonaute !', 5000, 'Skin', 'Skin de l\'espace pour votre personnage !', 'vgcup-logo-animation-loop.gif', '2020-05-26 21:22:33'),
(4, 'Skin paysage lunaire !', 5000, 'Skin', 'Skin de l\'espace pour votre paysage durant vos parties le plus cool !', '2472783.jpg', '2020-05-26 21:24:22'),
(5, 'Skin asrtonaute !', 5000, 'Skin', 'Skin de l\'espace pour votre personnage !', 'vgcup-logo-animation-loop.gif', '2020-05-26 21:22:33'),
(6, 'Skin paysage lunaire !', 5000, 'Skin', 'Skin de l\'espace pour votre paysage durant vos parties le plus cool !', '2472783.jpg', '2020-05-26 21:24:22'),
(7, 'skin asrtonaute !', 5000, 'Skin', 'Skin de l\'espace pour votre personnage !', 'vgcup-logo-animation-loop.gif', '2020-05-26 21:22:33'),
(8, 'Skin paysage lunaire !', 5000, 'Skin', 'Skin de l\'espace pour votre paysage durant vos parties le plus cool !', '2472783.jpg', '2020-05-26 21:24:22');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` date NOT NULL,
  `bp` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `age`, `bp`, `created_at`, `pays`, `token`, `avatar`, `updated_at`) VALUES
(1, 'bloup@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VUhBc1ZCQkJBcnIzZHFEYg$P7FIAlj8rBmUAI6qETphHDa7X2P4tVRVeiAX3avUkMc', 'Ryno', '1902-03-03', 99, '2020-05-26 19:57:28', 'Algeria', NULL, '789825-anvil-article_m-1.png', '2020-05-26 19:57:28'),
(2, 'math@yahooooooooo.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Z0J4RURwUHFoWHVsMk1Xeg$HahmP8DNbRME1glL4gpZSEsvr5vERXMGOhYT5DQR0k4', 'Math', '1903-03-03', 94500, '2020-05-26 22:03:47', 'American Samoa', NULL, '403839-PD12LM-281.jpg', '2020-05-26 22:03:48'),
(3, 'quentin@SFRevidement.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$V2hodjJMdFUxbUw0Wll1cQ$snMmnOyfp6wOoOXKGucWSei2WGVgiwO9WZtANbbVmEE', 'Grfiuk', '2015-04-03', NULL, '2020-05-26 22:04:37', 'Angola', NULL, '121469.jpg', '2020-05-26 22:04:37'),
(4, 'sadia@worldentertainement.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ODZBTHhydkRLUS5mZWI5TQ$cjgZHJm4CVtai5RRK2p2pWJfZ2J74Uo6oKrkCijpljY', 'Sadia', '1985-04-14', NULL, '2020-05-26 22:05:54', 'France', NULL, '4e82c2aaedacd5368b64af1432bcfb79.gif', '2020-05-26 22:05:54'),
(5, 'Fred@formateur.zoom', '[]', '$argon2id$v=19$m=65536,t=4,p=1$R2pSUkI0WC9rd2l6VVJSUg$UM3q0NgOzsJaRZvAfyhPS/h+EzsQRjbgVqCjw/mXGog', 'Gebruik', '1944-07-10', NULL, '2020-05-26 22:07:38', 'France', NULL, 'caf616f9184fbd429a827dae4db0e75d.gif', '2020-05-26 22:07:38'),
(6, 'julien@julien.julien', '[]', '$argon2id$v=19$m=65536,t=4,p=1$S3p3M0pPVE5Tb3JnTW1PNQ$EYz569ErqbuYeOhDrkg8Sf8SC3Zp9fRqllO4PI7Mjvo', 'Julien', '1913-04-15', NULL, '2020-05-26 22:16:12', 'Australia', NULL, 'maxresdefault.jpg', '2020-05-26 22:16:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DA76ED395` (`user_id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`commande_id`,`produit_id`),
  ADD KEY `IDX_DF1E9E8782EA2E54` (`commande_id`),
  ADD KEY `IDX_DF1E9E87F347EFB` (`produit_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_82E48DB5A76ED395` (`user_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D64986CC499D` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `FK_DF1E9E8782EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DF1E9E87F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD CONSTRAINT `FK_82E48DB5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
