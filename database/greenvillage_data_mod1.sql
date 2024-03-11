--
-- Fichier généré par SQLiteStudio v3.4.4 sur mer. févr. 28 09:39:13 2024
--
-- Encodage texte utilisé : UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tableau : client
DROP TABLE IF EXISTS client;
CREATE TABLE IF NOT EXISTS client(
   id INTEGER,
   reference TEXT,
   username TEXT,
   password TEXT,
   type NUMERIC,
   tel TEXT,
   coef_vente NUMERIC(15,2)  ,
   rue TEXT,
   cp TEXT,
   ville TEXT,
   id_employe INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   FOREIGN KEY(id_employe) REFERENCES employe(id)
);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (1, '20614417  ', 'Gayle.Klein@gmail.com         ', 'LA905RtXLINXNhn ', 'Particulier   ', '+33489639251 ', 1.7, '7783 Bartell Plaza        ', '285201 ', 'Muellermouth    ', 2);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (2, '39233178  ', 'Antonia_Schowalter@gmail.com  ', '8CpLITiRR1ydIZs ', 'Particulier   ', '+33975374362 ', 1.7, '17572 Emery Circles       ', '601300 ', 'North Odellland ', 2);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (3, '72831361  ', 'Bryan.Schamberger@hotmail.com ', 'p3FiTdPQjVvDvW3 ', 'Particulier   ', '+33725914197 ', 1.7, '57282 Predovic Stravenue  ', '974257 ', 'Lake Elsaburgh  ', 2);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (4, '17982237  ', 'Lucille.Romaguera45@gmail.com ', 'pRqnC1sv2OPNePq ', 'Professionnel ', '+33168435690 ', 1.2, '53793 Hahn Canyon         ', '738035 ', 'Denton          ', 3);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (5, '18251883  ', 'Enrique19@hotmail.com         ', 'gZxbAqNUf964RwG ', 'Professionnel ', '+33327969376 ', 1.2, '158 Herman Radial         ', '848283 ', 'Goldenton       ', 4);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (6, '61804243  ', 'Daniel42@yahoo.com            ', 'LtAmp52_hP3oNo0 ', 'Professionnel ', '+33837447734 ', 1.2, '866 Kessler Forks         ', '338195 ', 'Moenstad        ', 5);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (7, '37248993  ', 'Karla13@yahoo.com             ', 'NMyVtFKSGwZyuhD ', 'Professionnel ', '+33129515785 ', 1.2, '79950 Veda Light          ', '732134 ', 'Port Warren     ', 6);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (8, '90206310  ', 'Ora_Quigley34@gmail.com       ', 'uTif5Z1uQeAUhkV ', 'Professionnel ', '+33057656275 ', 1.2, '96627 Jacobson Trafficway ', '007805 ', 'Josefort        ', 7);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (9, '00004567  ', 'Leona_Wilkinson@hotmail.com   ', 'w4SrDeoBJ1QraVV ', 'Professionnel ', '+33468101315 ', 1.2, '31650 Luisa Vista         ', '068150 ', 'Berylborough    ', 8);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville, id_employe) VALUES (10, '89097093  ', 'Cedric_Paucek@gmail.com       ', 'GgzGsW4fVUXaI0b ', 'Particulier   ', '+33560568282 ', 1.7, '756 Madisen Underpass     ', '100515 ', 'Warrentown      ', 2);

-- Tableau : commande
DROP TABLE IF EXISTS commande;
CREATE TABLE IF NOT EXISTS commande(
   id INTEGER,
   reference TEXT,
   reduction NUMERIC(4,2)  ,
   date_com NUMERIC,
   mode_paiement INTEGER,
   reference_facture TEXT,
   delai_paiement NUMERIC,
   status INTEGER,
   facturation_rue TEXT,
   facturation_cp TEXT,
   facturation_ville TEXT,
   livraison_rue TEXT,
   livraison_cp TEXT,
   livraison_ville TEXT,
   id_client INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   UNIQUE(reference_facture),
   FOREIGN KEY(id_client) REFERENCES client(id)
);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (1, '38884441  ', 4.66, '2024-02-26 10:27:12', 1, '98285197          ', '27-02-24       ', 3, '90773 Nickolas Brooks    ', '776643         ', 'Catharinefort      ', '13844 Schumm Wells  ', '252934       ', 'Parisiancester        ', 1);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (2, '35546667  ', 15.39, '2024-02-26 10:28:12', 2, '82929776          ', '01-03-24       ', 3, '8069 Walter Orchard      ', '478159         ', 'Gulgowskiworth     ', '952 Dante Road      ', '260134       ', 'Idellfield            ', 2);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (3, '39210192  ', 18.39, '2024-02-26 10:29:12', 1, '28916340          ', '06-03-24       ', 3, '16288 Konopelski Gardens ', '542720         ', 'Fort Peyton        ', '48822 Koelpin Ford  ', '294792       ', 'Lake Una              ', 3);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (4, '83935958  ', 6.61, '2024-02-26 10:30:12', 3, '53079468          ', '06-03-24       ', 3, '584 Godfrey Way          ', '107824         ', 'Colintown          ', '225 Gabriel Union   ', '959327       ', 'North Cassandrecester ', 4);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (5, '89557911  ', 23.54, '2024-02-26 10:31:12', 1, '92638498          ', '07-03-24       ', 3, '638 Caitlyn Keys         ', '470651         ', 'Lake Shyannecester ', '243 Hauck Streets   ', '527768       ', 'Richland              ', 5);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (6, '46109176  ', 20.28, '2024-02-26 10:32:12', 2, '58337644          ', '09-03-24       ', 3, '28802 Kuhn Brook         ', '531155         ', 'East Queeniestad   ', '52118 Maudie Ports  ', '897057       ', 'South Bell            ', 6);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (7, '70232488  ', 21.8, '2024-02-26 10:33:12', 2, '33495514          ', '04-03-24       ', 3, '8565 Hickle Place        ', '534457         ', 'McGlynntown        ', '65451 Judge Pines   ', '398263       ', 'Fort Carlotta         ', 7);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (8, '65962662  ', 13.79, '2024-02-26 10:34:12', 3, '32210703          ', '09-03-24       ', 3, '844 Isaac Expressway     ', '871414         ', 'Miami              ', '798 Cremin Springs  ', '676636       ', 'Klingville            ', 8);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (9, '17721091  ', 13.42, '2024-02-26 10:35:12', 2, '73510379          ', '03-03-24       ', 3, '3499 Gideon Meadows      ', '302394         ', 'Port Rodolfoworth  ', '9916 Rolfson Avenue ', '808369       ', 'Fort Zakaryburgh      ', 9);
INSERT INTO commande (id, reference, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, facturation_rue, facturation_cp, facturation_ville, livraison_rue, livraison_cp, livraison_ville, id_client) VALUES (10, '23248992  ', 1.38, '2024-02-26 10:36:12', 2, '18107398          ', '07-03-24       ', 3, '1917 Toy Center          ', '474483         ', 'North Normaworth   ', '4947 Nickolas Cove  ', '170625       ', 'South Amelie          ', 10);

-- Tableau : employe
DROP TABLE IF EXISTS employe;
CREATE TABLE IF NOT EXISTS employe(
   id INTEGER,
   username TEXT,
   password TEXT NOT NULL,
   role INTEGER,
   PRIMARY KEY(id)
);
INSERT INTO employe (id, username, password, role) VALUES (1, 'Frank.Jones     ', '7Me5NRbrcLz7RWb ', 1);
INSERT INTO employe (id, username, password, role) VALUES (2, 'Orin_Marquardt  ', 'rM2VexCg4Z01m4M ', 4);
INSERT INTO employe (id, username, password, role) VALUES (3, 'Peyton_Denesik  ', 'FtLVGEbVw6MTalG ', 4);
INSERT INTO employe (id, username, password, role) VALUES (4, 'Suzanne_Ward79  ', 'xV2yMNacPQrivzz ', 4);
INSERT INTO employe (id, username, password, role) VALUES (5, 'Jorge90         ', 'JAqjCXKzc9NvKJm ', 4);
INSERT INTO employe (id, username, password, role) VALUES (6, 'Frank_Bartell73 ', '8HLeD4K0nssniqp ', 4);
INSERT INTO employe (id, username, password, role) VALUES (7, 'Casper.Beahan   ', 'QeBZkDisyCqdqqs ', 4);
INSERT INTO employe (id, username, password, role) VALUES (8, 'Etha.Kuhn82     ', 'C2zSS19u80y8F9v ', 4);
INSERT INTO employe (id, username, password, role) VALUES (9, 'Shaniya_Quigley ', '9xIa2HRHy2wgFGA ', 2);
INSERT INTO employe (id, username, password, role) VALUES (10, 'Ruthe.Lang      ', '_SXr8uqD9CU29Sf ', 3);

-- Tableau : fournisseur
DROP TABLE IF EXISTS fournisseur;
CREATE TABLE IF NOT EXISTS fournisseur(
   id INTEGER,
   nom TEXT,
   contact TEXT,
   email TEXT,
   PRIMARY KEY(id)
);
INSERT INTO fournisseur (id, nom, contact, email) VALUES (1, 'Corkery, Mueller and Goodwin ', 'Kimberly Kuhn    ', 'Kevin_Mante@gmail.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (2, 'Abernathy, O''Hara and Sawayn ', 'Edmund Homenick  ', 'Darrel96@hotmail.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (3, 'Marks, Kulas and Sanford     ', 'Cory Gislason    ', 'Joann_Fritsch1@hotmail.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (4, 'Lakin, Goldner and Kilback   ', 'Luther Haag      ', 'Travis7@gmail.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (5, 'Hyatt - McGlynn              ', 'Julian Rodriguez ', 'Alvin.Champlin77@hotmail.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (6, 'Powlowski - Grant            ', 'Walter Koss      ', 'Nora_Hartmann@gmail.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (7, 'Nikolaus - Williamson        ', 'Nellie Rice      ', 'Gabriel_Fadel@yahoo.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (8, 'Hirthe Inc                   ', 'Sheri Herzog     ', 'Faith_Pouros@yahoo.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (9, 'Spencer LLC                  ', 'Suzanne Wisozk   ', 'Courtney_Boehm11@yahoo.com');
INSERT INTO fournisseur (id, nom, contact, email) VALUES (10, 'Mraz, Padberg and McDermott  ', 'Daryl Hammes     ', 'Leo_Boehm64@gmail.com');

-- Tableau : livraison
DROP TABLE IF EXISTS livraison;
CREATE TABLE IF NOT EXISTS livraison(
   id INTEGER,
   reference TEXT,
   date_livraison NUMERIC,
   id_commande INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   FOREIGN KEY(id_commande) REFERENCES commande(id)
);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (1, '68440189  ', '2023-03-06 09:00:17', 9);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (2, '85364867  ', '2024-01-29 09:10:32', 1);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (3, '79350388  ', '2024-02-28 09:01:12', 10);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (4, '57066482  ', '2024-03-03 09:02:54', 7);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (5, '92013409  ', '2024-04-27 09:03:37', 4);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (6, '20674068  ', '2024-05-05 09:04:00', 6);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (7, '24300607  ', '2024-07-04 09:05:17', 1);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (8, '67559856  ', '2024-09-10 09:06:43', 4);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (9, '36949872  ', '2024-10-06 09:07:34', 7);
INSERT INTO livraison (id, reference, date_livraison, id_commande) VALUES (10, '28278189  ', '2024-12-03 09:08:32', 8);

-- Tableau : produit
DROP TABLE IF EXISTS produit;
CREATE TABLE IF NOT EXISTS produit(
   id INTEGER,
   reference TEXT,
   libelle TEXT,
   description TEXT,
   prix_unitaire NUMERIC(15,2)  ,
   image TEXT,
   stock INTEGER,
   tva NUMERIC(15,2)  ,
   active NUMERIC,
   id_fournisseur INTEGER NOT NULL,
   id_rubrique INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id),
   FOREIGN KEY(id_rubrique) REFERENCES rubrique(id)
);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (1, '54932090  ', 'Towels   ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 376, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/82.jpg   ', 3, 1.64, 'true   ', 1, 4);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (2, '70317226  ', 'Shoes    ', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart                        ', 537, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/943.jpg  ', 2, 23.39, 'false  ', 2, 5);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (3, '47855186  ', 'Sausages ', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals                       ', 684, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1198.jpg ', 5, 24.52, 'true   ', 3, 6);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (4, '02184012  ', 'Bacon    ', 'The Football Is Good For Training And Recreational Purposes                                                                              ', 289, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/363.jpg  ', 3, 17.93, 'false  ', 4, 7);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (5, '65283797  ', 'Cheese   ', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J                ', 303, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/904.jpg  ', 4, 18.3, 'true   ', 5, 8);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (6, '76639387  ', 'Computer ', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design                 ', 807, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/606.jpg  ', 4, 5.6, 'false  ', 6, 8);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (7, '22781869  ', 'Chair    ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 224, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/730.jpg  ', 4, 23.31, 'true   ', 7, 9);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (8, '43473251  ', 'Shirt    ', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart                        ', 922, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/439.jpg  ', 1, 3.1, 'false  ', 8, 10);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (9, '10643931  ', 'Ball     ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 86, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/836.jpg  ', 3, 22.41, 'true   ', 9, 5);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (10, '40477343  ', 'Fish     ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 537, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1113.jpg ', 1, 5.58, 'true   ', 10, 6);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique) VALUES (11, '54932091', 'Fender Telecaster', 'Une très belle guitare blanche', 1500, 'chemin/de/mon/image/stratocaster.webp', 200, 25, 'true', 5, 1);

-- Tableau : produit_commande
DROP TABLE IF EXISTS produit_commande;
CREATE TABLE IF NOT EXISTS produit_commande(
   id_produit INTEGER,
   id_commande INTEGER,
   quantite INTEGER,
   PRIMARY KEY(id_produit, id_commande),
   FOREIGN KEY(id_produit) REFERENCES produit(id),
   FOREIGN KEY(id_commande) REFERENCES commande(id)
);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (2, 1, 3);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (1, 2, 3);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (4, 3, 8);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (3, 4, 5);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (5, 5, 2);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (6, 6, 5);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (7, 7, 10);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (8, 8, 1);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (9, 9, 1);
INSERT INTO produit_commande (id_produit, id_commande, quantite) VALUES (10, 10, 2);

-- Tableau : produit_livraison
DROP TABLE IF EXISTS produit_livraison;
CREATE TABLE IF NOT EXISTS produit_livraison(
   id_produit INTEGER,
   id_livraison INTEGER,
   quantite_livree INTEGER,
   PRIMARY KEY(id_produit, id_livraison),
   FOREIGN KEY(id_produit) REFERENCES produit(id),
   FOREIGN KEY(id_livraison) REFERENCES livraison(id)
);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (5, 2, 18);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (10, 8, 25);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (6, 7, 7);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (8, 3, 22);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (9, 3, 5);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (4, 10, 14);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (1, 3, 19);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (8, 8, 10);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (5, 6, 25);
INSERT INTO produit_livraison (id_produit, id_livraison, quantite_livree) VALUES (6, 2, 23);

-- Tableau : rubrique
DROP TABLE IF EXISTS rubrique;
CREATE TABLE IF NOT EXISTS rubrique(
   id INTEGER,
   libelle TEXT,
   image TEXT,
   rubrique_parente INTEGER,
   PRIMARY KEY(id),
   FOREIGN KEY(rubrique_parente) REFERENCES rubrique(id)
);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (1, 'Instruments à cordes', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/479.jpg', 'NULL');
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (2, 'Instruments à vent', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/850.jpg', 'NULL');
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (3, 'Instruments à percussion', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/518.jpg', 'NULL');
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (4, 'Violon', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1209.jpg', 1);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (5, 'Guitare', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/218.jpg', 1);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (6, 'Basse', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/377.jpg', 1);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (7, 'Trompette', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/385.jpg', 2);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (8, 'Saxophone', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/74.jpg', 2);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (9, 'Batterie', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1033.jpg', 3);
INSERT INTO rubrique (id, libelle, image, rubrique_parente) VALUES (10, 'Xylophone', 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/702.jpg', 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
