-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 172.17.0.1
-- Généré le : mar. 19 mars 2024 à 12:56
-- Version du serveur : 10.11.7-MariaDB-1:10.11.7+maria~ubu2204
-- Version de PHP : 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `greenvillage`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`%` PROCEDURE `commandesNonSoldees` ()   BEGIN
   SELECT reference, date_com, status
   FROM commande
   WHERE status = 2 OR status= 1;
END$$

CREATE DEFINER=`root`@`%` PROCEDURE `moyenneDelaiCommandeFacture` ()   BEGIN
   SELECT AVG(DATEDIFF(date_facture,date_com)) AS "Moyenne delai commande/facturation (jours)"
	FROM `commande`
	WHERE status = 3;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` tinyint(4) DEFAULT NULL,
  `reference` varchar(10) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `type` varchar(14) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `coef_vente` decimal(2,1) DEFAULT NULL,
  `rue` varchar(26) DEFAULT NULL,
  `cp` varchar(7) DEFAULT NULL,
  `ville` varchar(16) DEFAULT NULL,
  `id_employe` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `reference`, `username`, `password`, `type`, `tel`, `coef_vente`, `rue`, `cp`, `ville`, `id_employe`) VALUES
(1, '20614417  ', 'Gayle.Klein@gmail.com         ', 'LA905RtXLINXNhn ', 'Particulier   ', '+33489639251 ', 1.7, '7783 Bartell Plaza        ', '285201 ', 'Muellermouth    ', 2),
(2, '39233178  ', 'Antonia_Schowalter@gmail.com  ', '8CpLITiRR1ydIZs ', 'Particulier   ', '+33975374362 ', 1.7, '17572 Emery Circles       ', '601300 ', 'North Odellland ', 2),
(3, '72831361  ', 'Bryan.Schamberger@hotmail.com ', 'p3FiTdPQjVvDvW3 ', 'Particulier   ', '+33725914197 ', 1.7, '57282 Predovic Stravenue  ', '974257 ', 'Lake Elsaburgh  ', 2),
(4, '17982237  ', 'Lucille.Romaguera45@gmail.com ', 'pRqnC1sv2OPNePq ', 'Professionnel ', '+33168435690 ', 1.2, '53793 Hahn Canyon         ', '738035 ', 'Denton          ', 3),
(5, '18251883  ', 'Enrique19@hotmail.com         ', 'gZxbAqNUf964RwG ', 'Professionnel ', '+33327969376 ', 1.2, '158 Herman Radial         ', '848283 ', 'Goldenton       ', 4),
(6, '61804243  ', 'Daniel42@yahoo.com            ', 'LtAmp52_hP3oNo0 ', 'Professionnel ', '+33837447734 ', 1.2, '866 Kessler Forks         ', '338195 ', 'Moenstad        ', 5),
(7, '37248993  ', 'Karla13@yahoo.com             ', 'NMyVtFKSGwZyuhD ', 'Professionnel ', '+33129515785 ', 1.2, '79950 Veda Light          ', '732134 ', 'Port Warren     ', 6),
(8, '90206310  ', 'Ora_Quigley34@gmail.com       ', 'uTif5Z1uQeAUhkV ', 'Professionnel ', '+33057656275 ', 1.2, '96627 Jacobson Trafficway ', '007805 ', 'Josefort        ', 7),
(9, '00004567  ', 'Leona_Wilkinson@hotmail.com   ', 'w4SrDeoBJ1QraVV ', 'Professionnel ', '+33468101315 ', 1.2, '31650 Luisa Vista         ', '068150 ', 'Berylborough    ', 8),
(10, '89097093  ', 'Cedric_Paucek@gmail.com       ', 'GgzGsW4fVUXaI0b ', 'Particulier   ', '+33560568282 ', 1.7, '756 Madisen Underpass     ', '100515 ', 'Warrentown      ', 2);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` tinyint(4) DEFAULT NULL,
  `reference` varchar(10) DEFAULT NULL,
  `reduction` decimal(4,2) DEFAULT NULL,
  `date_com` varchar(19) DEFAULT NULL,
  `mode_paiement` tinyint(4) DEFAULT NULL,
  `reference_facture` varchar(18) DEFAULT NULL,
  `date_facture` datetime DEFAULT NULL,
  `delai_paiement` varchar(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `facturation_rue` varchar(25) DEFAULT NULL,
  `facturation_cp` varchar(15) DEFAULT NULL,
  `facturation_ville` varchar(19) DEFAULT NULL,
  `livraison_rue` varchar(20) DEFAULT NULL,
  `livraison_cp` varchar(13) DEFAULT NULL,
  `livraison_ville` varchar(22) DEFAULT NULL,
  `id_client` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `reference`, `reduction`, `date_com`, `mode_paiement`, `reference_facture`, `date_facture`, `delai_paiement`, `status`, `facturation_rue`, `facturation_cp`, `facturation_ville`, `livraison_rue`, `livraison_cp`, `livraison_ville`, `id_client`) VALUES
(1, '38884441  ', 4.66, '2024-02-26 10:27:12', 1, '98285197          ', '2024-04-17 13:46:01', '27-02-24       ', 3, '90773 Nickolas Brooks    ', '776643         ', 'Catharinefort      ', '13844 Schumm Wells  ', '252934       ', 'Parisiancester        ', 1),
(2, '35546667  ', 15.39, '2024-02-26 10:28:12', 2, '82929776          ', '2024-03-17 13:46:01', '01-03-24       ', 1, '8069 Walter Orchard      ', '478159         ', 'Gulgowskiworth     ', '952 Dante Road      ', '260134       ', 'Idellfield            ', 2),
(3, '39210192  ', 18.39, '2024-02-26 10:29:12', 1, '28916340          ', '2024-06-19 13:46:01', '06-03-24       ', 2, '16288 Konopelski Gardens ', '542720         ', 'Fort Peyton        ', '48822 Koelpin Ford  ', '294792       ', 'Lake Una              ', 3),
(4, '83935958  ', 6.61, '2024-02-26 10:30:12', 3, '53079468          ', '2024-04-18 13:46:01', '06-03-24       ', 3, '584 Godfrey Way          ', '107824         ', 'Colintown          ', '225 Gabriel Union   ', '959327       ', 'North Cassandrecester ', 4),
(5, '89557911  ', 23.54, '2024-02-26 10:31:12', 1, '92638498          ', '2024-05-14 13:46:01', '07-03-24       ', 2, '638 Caitlyn Keys         ', '470651         ', 'Lake Shyannecester ', '243 Hauck Streets   ', '527768       ', 'Richland              ', 5),
(6, '46109176  ', 20.28, '2024-02-26 10:32:12', 2, '58337644          ', '2024-03-15 13:46:01', '09-03-24       ', 3, '28802 Kuhn Brook         ', '531155         ', 'East Queeniestad   ', '52118 Maudie Ports  ', '897057       ', 'South Bell            ', 6),
(7, '70232488  ', 21.80, '2024-02-26 10:33:12', 2, '33495514          ', '2024-05-28 13:46:01', '04-03-24       ', 1, '8565 Hickle Place        ', '534457         ', 'McGlynntown        ', '65451 Judge Pines   ', '398263       ', 'Fort Carlotta         ', 7),
(8, '65962662  ', 13.79, '2024-02-26 10:34:12', 3, '32210703          ', '2024-03-12 13:46:01', '09-03-24       ', 2, '844 Isaac Expressway     ', '871414         ', 'Miami              ', '798 Cremin Springs  ', '676636       ', 'Klingville            ', 8),
(9, '17721091  ', 13.42, '2024-02-26 10:35:12', 2, '73510379          ', '2024-03-23 13:46:01', '03-03-24       ', 4, '3499 Gideon Meadows      ', '302394         ', 'Port Rodolfoworth  ', '9916 Rolfson Avenue ', '808369       ', 'Fort Zakaryburgh      ', 9),
(10, '23248992  ', 1.38, '2024-02-26 10:36:12', 2, '18107398          ', '2024-03-13 13:46:01', '07-03-24       ', 3, '1917 Toy Center          ', '474483         ', 'North Normaworth   ', '4947 Nickolas Cove  ', '170625       ', 'South Amelie          ', 10);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` tinyint(4) DEFAULT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `username`, `password`, `role`) VALUES
(1, 'Frank.Jones     ', '7Me5NRbrcLz7RWb ', 1),
(2, 'Orin_Marquardt  ', 'rM2VexCg4Z01m4M ', 4),
(3, 'Peyton_Denesik  ', 'FtLVGEbVw6MTalG ', 4),
(4, 'Suzanne_Ward79  ', 'xV2yMNacPQrivzz ', 4),
(5, 'Jorge90         ', 'JAqjCXKzc9NvKJm ', 4),
(6, 'Frank_Bartell73 ', '8HLeD4K0nssniqp ', 4),
(7, 'Casper.Beahan   ', 'QeBZkDisyCqdqqs ', 4),
(8, 'Etha.Kuhn82     ', 'C2zSS19u80y8F9v ', 4),
(9, 'Shaniya_Quigley ', '9xIa2HRHy2wgFGA ', 2),
(10, 'Ruthe.Lang      ', '_SXr8uqD9CU29Sf ', 3);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` tinyint(4) DEFAULT NULL,
  `nom` varchar(29) DEFAULT NULL,
  `contact` varchar(17) DEFAULT NULL,
  `email` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom`, `contact`, `email`) VALUES
(1, 'Corkery, Mueller and Goodwin ', 'Kimberly Kuhn    ', 'Kevin_Mante@gmail.com'),
(2, 'Abernathy, O\'Hara and Sawayn ', 'Edmund Homenick  ', 'Darrel96@hotmail.com'),
(3, 'Marks, Kulas and Sanford     ', 'Cory Gislason    ', 'Joann_Fritsch1@hotmail.com'),
(4, 'Lakin, Goldner and Kilback   ', 'Luther Haag      ', 'Travis7@gmail.com'),
(5, 'Hyatt - McGlynn              ', 'Julian Rodriguez ', 'Alvin.Champlin77@hotmail.com'),
(6, 'Powlowski - Grant            ', 'Walter Koss      ', 'Nora_Hartmann@gmail.com'),
(7, 'Nikolaus - Williamson        ', 'Nellie Rice      ', 'Gabriel_Fadel@yahoo.com'),
(8, 'Hirthe Inc                   ', 'Sheri Herzog     ', 'Faith_Pouros@yahoo.com'),
(9, 'Spencer LLC                  ', 'Suzanne Wisozk   ', 'Courtney_Boehm11@yahoo.com'),
(10, 'Mraz, Padberg and McDermott  ', 'Daryl Hammes     ', 'Leo_Boehm64@gmail.com');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `listeclientpro`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `listeclientpro` (
`reference` varchar(10)
,`username` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `id` tinyint(4) DEFAULT NULL,
  `reference` varchar(10) DEFAULT NULL,
  `date_livraison` varchar(19) DEFAULT NULL,
  `id_commande` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`id`, `reference`, `date_livraison`, `id_commande`) VALUES
(1, '68440189  ', '2023-03-06 09:00:17', 9),
(2, '85364867  ', '2024-01-29 09:10:32', 1),
(3, '79350388  ', '2024-02-28 09:01:12', 10),
(4, '57066482  ', '2024-03-03 09:02:54', 7),
(5, '92013409  ', '2024-04-27 09:03:37', 4),
(6, '20674068  ', '2024-05-05 09:04:00', 6),
(7, '24300607  ', '2024-07-04 09:05:17', 1),
(8, '67559856  ', '2024-09-10 09:06:43', 4),
(9, '36949872  ', '2024-10-06 09:07:34', 7),
(10, '28278189  ', '2024-12-03 09:08:32', 8);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` tinyint(4) DEFAULT NULL,
  `reference` varchar(10) DEFAULT NULL,
  `libelle` varchar(17) DEFAULT NULL,
  `description` varchar(137) DEFAULT NULL,
  `prix_unitaire` smallint(6) DEFAULT NULL,
  `image` varchar(96) DEFAULT NULL,
  `stock` smallint(6) DEFAULT NULL,
  `tva` decimal(4,2) DEFAULT NULL,
  `active` varchar(7) DEFAULT NULL,
  `id_fournisseur` tinyint(4) DEFAULT NULL,
  `id_rubrique` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `reference`, `libelle`, `description`, `prix_unitaire`, `image`, `stock`, `tva`, `active`, `id_fournisseur`, `id_rubrique`) VALUES
(1, '54932090  ', 'Towels   ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 376, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/82.jpg   ', 3, 1.64, 'true   ', 1, 4),
(2, '70317226  ', 'Shoes    ', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart                        ', 537, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/943.jpg  ', 2, 23.39, 'false  ', 2, 5),
(3, '47855186  ', 'Sausages ', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals                       ', 684, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1198.jpg ', 5, 24.52, 'true   ', 3, 6),
(4, '02184012  ', 'Bacon    ', 'The Football Is Good For Training And Recreational Purposes                                                                              ', 289, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/363.jpg  ', 3, 17.93, 'false  ', 4, 7),
(5, '65283797  ', 'Cheese   ', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J                ', 303, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/904.jpg  ', 4, 18.30, 'true   ', 5, 8),
(6, '76639387  ', 'Computer ', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design                 ', 807, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/606.jpg  ', 4, 5.60, 'false  ', 6, 8),
(7, '22781869  ', 'Chair    ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 224, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/730.jpg  ', 4, 23.31, 'true   ', 7, 9),
(8, '43473251  ', 'Shirt    ', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart                        ', 922, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/439.jpg  ', 1, 3.10, 'false  ', 8, 10),
(9, '10643931  ', 'Ball     ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 86, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/836.jpg  ', 3, 22.41, 'true   ', 9, 5),
(10, '40477343  ', 'Fish     ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 537, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1113.jpg ', 1, 5.58, 'true   ', 10, 6),
(11, '54932091', 'Fender Telecaster', 'Une très belle guitare blanche', 1500, 'chemin/de/mon/image/stratocaster.webp', 200, 25.00, 'true', 5, 1);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `produit_categorie`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `produit_categorie` (
`Nom produit` varchar(17)
,`Rubrique` varchar(24)
);

-- --------------------------------------------------------

--
-- Structure de la table `produit_commande`
--

CREATE TABLE `produit_commande` (
  `id_produit` tinyint(4) DEFAULT NULL,
  `id_commande` tinyint(4) DEFAULT NULL,
  `quantite` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit_commande`
--

INSERT INTO `produit_commande` (`id_produit`, `id_commande`, `quantite`) VALUES
(2, 1, 3),
(1, 2, 3),
(4, 3, 8),
(3, 4, 5),
(5, 5, 2),
(6, 6, 5),
(7, 7, 10),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `produit_fournisseur`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `produit_fournisseur` (
`libelle` varchar(17)
,`nom` varchar(29)
);

-- --------------------------------------------------------

--
-- Structure de la table `produit_livraison`
--

CREATE TABLE `produit_livraison` (
  `id_produit` tinyint(4) DEFAULT NULL,
  `id_livraison` tinyint(4) DEFAULT NULL,
  `quantite_livree` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit_livraison`
--

INSERT INTO `produit_livraison` (`id_produit`, `id_livraison`, `quantite_livree`) VALUES
(5, 2, 18),
(10, 8, 25),
(6, 7, 7),
(8, 3, 22),
(9, 3, 5),
(4, 10, 14),
(1, 3, 19),
(8, 8, 10),
(5, 6, 25),
(6, 2, 23);

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `id` tinyint(4) DEFAULT NULL,
  `libelle` varchar(24) DEFAULT NULL,
  `image` varchar(95) DEFAULT NULL,
  `rubrique_parente` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rubrique`
--

INSERT INTO `rubrique` (`id`, `libelle`, `image`, `rubrique_parente`) VALUES
(1, 'Instruments à cordes', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/479.jpg', 'NULL'),
(2, 'Instruments à vent', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/850.jpg', 'NULL'),
(3, 'Instruments à percussion', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/518.jpg', 'NULL'),
(4, 'Violon', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1209.jpg', '1'),
(5, 'Guitare', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/218.jpg', '1'),
(6, 'Basse', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/377.jpg', '1'),
(7, 'Trompette', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/385.jpg', '2'),
(8, 'Saxophone', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/74.jpg', '2'),
(9, 'Batterie', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1033.jpg', '3'),
(10, 'Xylophone', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/702.jpg', '3');

-- --------------------------------------------------------

--
-- Structure de la vue `listeclientpro`
--
DROP TABLE IF EXISTS `listeclientpro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `listeclientpro`  AS SELECT `client`.`reference` AS `reference`, `client`.`username` AS `username` FROM `client` WHERE `client`.`type` = 'Professionnel' ;

-- --------------------------------------------------------

--
-- Structure de la vue `produit_categorie`
--
DROP TABLE IF EXISTS `produit_categorie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `produit_categorie`  AS SELECT `produit`.`libelle` AS `Nom produit`, `rubrique`.`libelle` AS `Rubrique` FROM (`produit` join `rubrique` on(`rubrique`.`id` = `produit`.`id_rubrique`)) ;

-- --------------------------------------------------------

--
-- Structure de la vue `produit_fournisseur`
--
DROP TABLE IF EXISTS `produit_fournisseur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `produit_fournisseur`  AS SELECT `produit`.`libelle` AS `libelle`, `fournisseur`.`nom` AS `nom` FROM (`produit` join `fournisseur` on(`fournisseur`.`id` = `produit`.`id_fournisseur`)) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
