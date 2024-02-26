--
-- Fichier généré par SQLiteStudio v3.4.4 sur lun. févr. 26 12:49:59 2024
--
-- Encodage texte utilisé : UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tableau : client
DROP TABLE IF EXISTS client;
CREATE TABLE IF NOT EXISTS client(
   id INTEGER,
   reference INTEGER,
   username TEXT,
   password TEXT,
   type TEXT,
   tel TEXT,
   coef_vente NUMERIC(15,2)  ,
   rue TEXT,
   cp TEXT,
   ville TEXT,
   PRIMARY KEY(id),
   UNIQUE(reference)
);
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (1, 20614417, 'Gayle.Klein@gmail.com         ', 'LA905RtXLINXNhn ', 'Particulier   ', '+33489639251 ', 2.31, '7783 Bartell Plaza        ', '285201 ', 'Muellermouth');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (2, 39233178, 'Antonia_Schowalter@gmail.com  ', '8CpLITiRR1ydIZs ', 'Particulier   ', '+33975374362 ', 10.21, '17572 Emery Circles       ', '601300 ', 'North Odellland');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (3, 72831361, 'Bryan.Schamberger@hotmail.com ', 'p3FiTdPQjVvDvW3 ', 'Particulier   ', '+33725914197 ', 38.15, '57282 Predovic Stravenue  ', '974257 ', 'Lake Elsaburgh');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (4, 17982237, 'Lucille.Romaguera45@gmail.com ', 'pRqnC1sv2OPNePq ', 'Professionnel ', '+33168435690 ', 15.78, '53793 Hahn Canyon         ', '738035 ', 'Denton');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (5, 18251883, 'Enrique19@hotmail.com         ', 'gZxbAqNUf964RwG ', 'Professionnel ', '+33327969376 ', 31.62, '158 Herman Radial         ', '848283 ', 'Goldenton');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (6, 61804243, 'Daniel42@yahoo.com            ', 'LtAmp52_hP3oNo0 ', 'Professionnel ', '+33837447734 ', 8.35, '866 Kessler Forks         ', '338195 ', 'Moenstad');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (7, 37248993, 'Karla13@yahoo.com             ', 'NMyVtFKSGwZyuhD ', 'Professionnel ', '+33129515785 ', 14.59, '79950 Veda Light          ', '732134 ', 'Port Warren');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (8, 90206310, 'Ora_Quigley34@gmail.com       ', 'uTif5Z1uQeAUhkV ', 'Professionnel ', '+33057656275 ', 0.85, '96627 Jacobson Trafficway ', '007805 ', 'Josefort');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (9, 4567, 'Leona_Wilkinson@hotmail.com   ', 'w4SrDeoBJ1QraVV ', 'Professionnel ', '+33468101315 ', 36.47, '31650 Luisa Vista         ', '068150 ', 'Berylborough');
INSERT INTO client (id, reference, username, password, type, tel, coef_vente, rue, cp, ville) VALUES (10, 89097093, 'Cedric_Paucek@gmail.com       ', 'GgzGsW4fVUXaI0b ', 'Particulier   ', '+33560568282 ', 39.59, '756 Madisen Underpass     ', '100515 ', 'Warrentown');

-- Tableau : commande
DROP TABLE IF EXISTS commande;
CREATE TABLE IF NOT EXISTS commande(
   id INTEGER,
   reference INTEGER,
   quantite TEXT,
   reduction NUMERIC(4,2)  ,
   date_com NUMERIC,
   mode_paiement INTEGER,
   reference_facture INTEGER,
   delai_paiement NUMERIC,
   status TEXT,
   id_1 INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   UNIQUE(reference_facture),
   FOREIGN KEY(id_1) REFERENCES client(id)
);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (1, 79170089, '1        ', 62.95, '26-02-24 ', 'CB            ', 72968910, '30-03-24       ', 'Livrée                ', 7);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (2, 55461122, '10       ', 68.59, '26-02-24 ', 'CB            ', 20011641, '26-03-24       ', 'Annulée               ', 3);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (3, 44046937, '1        ', 70.85, '26-02-24 ', 'Différé       ', 28221415, '04-03-24       ', 'Livrée                ', 4);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (4, 96692754, '1        ', 58.95, '26-02-24 ', 'CB            ', 32761326, '18-03-24       ', 'Annulée               ', 2);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (5, 49356213, '7        ', 58.4, '26-02-24 ', 'Différé       ', 8194987, '09-03-24       ', 'En cours de livraison ', 10);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (6, 74558341, '9        ', 40.95, '26-02-24 ', 'Différé       ', 88104371, '26-03-24       ', 'Livrée                ', 5);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (7, 32211653, '10       ', 52.85, '26-02-24 ', 'Mandat        ', 12813819, '23-03-24       ', 'Livrée                ', 4);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (8, 51985071, '9        ', 74.53, '26-02-24 ', 'CB            ', 14950263, '18-03-24       ', 'En cours de livraison ', 10);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (9, 63825563, '2        ', 0.36, '26-02-24 ', 'CB            ', 48397483, '12-03-24       ', 'En cours de livraison ', 6);
INSERT INTO commande (id, reference, quantite, reduction, date_com, mode_paiement, reference_facture, delai_paiement, status, id_1) VALUES (10, 42357813, '2        ', 95.32, '26-02-24 ', 'Différé       ', 68114561, '30-03-24       ', 'En cours de livraison ', 7);

-- Tableau : employe
DROP TABLE IF EXISTS employe;
CREATE TABLE IF NOT EXISTS employe(
   id INTEGER,
   username TEXT,
   password TEXT NOT NULL,
   role INTEGER,
   PRIMARY KEY(id)
);
INSERT INTO employe (id, username, password, role) VALUES (1, 'Frank.Jones     ', '7Me5NRbrcLz7RWb ', 'Service relationnel');
INSERT INTO employe (id, username, password, role) VALUES (2, 'Orin_Marquardt  ', 'rM2VexCg4Z01m4M ', 'Commercial');
INSERT INTO employe (id, username, password, role) VALUES (3, 'Peyton_Denesik  ', 'FtLVGEbVw6MTalG ', 'Comptabilité');
INSERT INTO employe (id, username, password, role) VALUES (4, 'Suzanne_Ward79  ', 'xV2yMNacPQrivzz ', 'Commercial');
INSERT INTO employe (id, username, password, role) VALUES (5, 'Jorge90         ', 'JAqjCXKzc9NvKJm ', 'Service après-vente');
INSERT INTO employe (id, username, password, role) VALUES (6, 'Frank_Bartell73 ', '8HLeD4K0nssniqp ', 'Comptabilité');
INSERT INTO employe (id, username, password, role) VALUES (7, 'Casper.Beahan   ', 'QeBZkDisyCqdqqs ', 'Commercial');
INSERT INTO employe (id, username, password, role) VALUES (8, 'Etha.Kuhn82     ', 'C2zSS19u80y8F9v ', 'Service relationnel');
INSERT INTO employe (id, username, password, role) VALUES (9, 'Shaniya_Quigley ', '9xIa2HRHy2wgFGA ', 'Service après-vente');
INSERT INTO employe (id, username, password, role) VALUES (10, 'Ruthe.Lang      ', '_SXr8uqD9CU29Sf ', 'Service après-vente');

-- Tableau : employe_client
DROP TABLE IF EXISTS employe_client;
CREATE TABLE IF NOT EXISTS employe_client(
   id INTEGER,
   id_1 INTEGER,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES client(id),
   FOREIGN KEY(id_1) REFERENCES employe(id)
);
INSERT INTO employe_client (id, id_1) VALUES (2, 7);
INSERT INTO employe_client (id, id_1) VALUES (4, 4);
INSERT INTO employe_client (id, id_1) VALUES (2, 4);
INSERT INTO employe_client (id, id_1) VALUES (4, 8);
INSERT INTO employe_client (id, id_1) VALUES (4, 7);
INSERT INTO employe_client (id, id_1) VALUES (7, 5);
INSERT INTO employe_client (id, id_1) VALUES (6, 6);
INSERT INTO employe_client (id, id_1) VALUES (3, 4);
INSERT INTO employe_client (id, id_1) VALUES (3, 7);
INSERT INTO employe_client (id, id_1) VALUES (10, 8);

-- Tableau : fournisseur
DROP TABLE IF EXISTS fournisseur;
CREATE TABLE IF NOT EXISTS fournisseur(
   id INTEGER,
   nom TEXT,
   contact TEXT,
   adresse TEXT,
   PRIMARY KEY(id)
);
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (1, 'Corkery, Mueller and Goodwin ', 'Kimberly Kuhn    ', 'Kevin_Mante@gmail.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (2, 'Abernathy, O''Hara and Sawayn ', 'Edmund Homenick  ', 'Darrel96@hotmail.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (3, 'Marks, Kulas and Sanford     ', 'Cory Gislason    ', 'Joann_Fritsch1@hotmail.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (4, 'Lakin, Goldner and Kilback   ', 'Luther Haag      ', 'Travis7@gmail.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (5, 'Hyatt - McGlynn              ', 'Julian Rodriguez ', 'Alvin.Champlin77@hotmail.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (6, 'Powlowski - Grant            ', 'Walter Koss      ', 'Nora_Hartmann@gmail.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (7, 'Nikolaus - Williamson        ', 'Nellie Rice      ', 'Gabriel_Fadel@yahoo.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (8, 'Hirthe Inc                   ', 'Sheri Herzog     ', 'Faith_Pouros@yahoo.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (9, 'Spencer LLC                  ', 'Suzanne Wisozk   ', 'Courtney_Boehm11@yahoo.com');
INSERT INTO fournisseur (id, nom, contact, adresse) VALUES (10, 'Mraz, Padberg and McDermott  ', 'Daryl Hammes     ', 'Leo_Boehm64@gmail.com');

-- Tableau : livraison
DROP TABLE IF EXISTS livraison;
CREATE TABLE IF NOT EXISTS livraison(
   id INTEGER,
   reference INTEGER,
   rue TEXT,
   cp TEXT,
   ville TEXT,
   date_livraison TEXT,
   id_1 INTEGER,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES commande(id)
);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (1, 68440189, '5666 Bechtelar Groves ', '195146 ', 'Baytown          ', '06-03-24       ', 9);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (2, 85364867, '82547 Leora Route     ', '819680 ', 'Maryjaneworth    ', '29-02-24       ', 1);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (3, 79350388, '56479 Wehner Meadow   ', '316822 ', 'Santinaton       ', '28-02-24       ', 10);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (4, 57066482, '3867 Schmidt Gateway  ', '349916 ', 'East Laron       ', '03-03-24       ', 7);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (5, 92013409, '11035 Elza Glens      ', '639407 ', 'Fort Orlo        ', '27-02-24       ', 4);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (6, 20674068, '69965 Batz Street     ', '061488 ', 'Gulgowskichester ', '05-03-24       ', 6);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (7, 24300607, '25780 Mariane Glens   ', '743500 ', 'South Gate       ', '04-03-24       ', 1);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (8, 67559856, '8805 Maya Ford        ', '993613 ', 'San Mateo        ', '10-03-24       ', 4);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (9, 36949872, '64841 Becker Dale     ', '784045 ', 'Cummingsburgh    ', '06-03-24       ', 7);
INSERT INTO livraison (id, reference, rue, cp, ville, date_livraison, id_1) VALUES (10, 28278189, '730 Winona Terrace    ', '297176 ', 'Spokane Valley   ', '03-03-24       ', 8);

-- Tableau : produit
DROP TABLE IF EXISTS produit;
CREATE TABLE IF NOT EXISTS produit(
   id INTEGER,
   reference TEXT,
   libelle TEXT,
   description TEXT,
   prix_unitaire NUMERIC,
   image TEXT,
   stock INTEGER,
   tva NUMERIC(15,2)  ,
   active NUMERIC,
   id_1 INTEGER NOT NULL,
   id_2 INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   FOREIGN KEY(id_1) REFERENCES fournisseur(id),
   FOREIGN KEY(id_2) REFERENCES rubrique(id)
);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (1, '54932090  ', 'Towels   ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 376, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/82.jpg   ', 3, 1.64, 'true   ', 1, 3);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (2, '70317226  ', 'Shoes    ', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart                        ', 537, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/943.jpg  ', 2, 23.39, 'false  ', 3, 5);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (3, '47855186  ', 'Sausages ', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals                       ', 684, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1198.jpg ', 5, 24.52, 'true   ', 3, 6);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (4, '02184012  ', 'Bacon    ', 'The Football Is Good For Training And Recreational Purposes                                                                              ', 289, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/363.jpg  ', 3, 17.93, 'false  ', 1, 1);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (5, '65283797  ', 'Cheese   ', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J                ', 303, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/904.jpg  ', 4, 18.3, 'true   ', 1, 9);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (6, '76639387  ', 'Computer ', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design                 ', 807, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/606.jpg  ', 4, 5.6, 'false  ', 1, 7);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (7, '22781869  ', 'Chair    ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 224, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/730.jpg  ', 4, 23.31, 'true   ', 2, 4);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (8, '43473251  ', 'Shirt    ', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart                        ', 922, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/439.jpg  ', 1, 3.1, 'false  ', 2, 10);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (9, '10643931  ', 'Ball     ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 86, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/836.jpg  ', 3, 22.41, 'true   ', 3, 2);
INSERT INTO produit (id, reference, libelle, description, prix_unitaire, image, stock, tva, active, id_1, id_2) VALUES (10, '40477343  ', 'Fish     ', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality ', 537, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1113.jpg ', 1, 5.58, 'true   ', 3, 8);

-- Tableau : produit_commande
DROP TABLE IF EXISTS produit_commande;
CREATE TABLE IF NOT EXISTS produit_commande(
   id INTEGER,
   id_1 INTEGER,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES produit(id),
   FOREIGN KEY(id_1) REFERENCES commande(id)
);
INSERT INTO produit_commande (id, id_1) VALUES (2, 6);
INSERT INTO produit_commande (id, id_1) VALUES (1, 4);
INSERT INTO produit_commande (id, id_1) VALUES (1, 6);
INSERT INTO produit_commande (id, id_1) VALUES (6, 1);
INSERT INTO produit_commande (id, id_1) VALUES (3, 6);
INSERT INTO produit_commande (id, id_1) VALUES (2, 10);
INSERT INTO produit_commande (id, id_1) VALUES (5, 1);
INSERT INTO produit_commande (id, id_1) VALUES (9, 10);
INSERT INTO produit_commande (id, id_1) VALUES (2, 1);
INSERT INTO produit_commande (id, id_1) VALUES (6, 8);

-- Tableau : rubrique
DROP TABLE IF EXISTS rubrique;
CREATE TABLE IF NOT EXISTS rubrique(
   id INTEGER,
   libelle TEXT,
   id_1 INTEGER,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES rubrique(id)
);
INSERT INTO rubrique (id, libelle, id_1) VALUES (1, 'Instruments à cordes', 'NULL');
INSERT INTO rubrique (id, libelle, id_1) VALUES (2, 'Instruments à vent', 'NULL');
INSERT INTO rubrique (id, libelle, id_1) VALUES (3, 'Instruments à percussion', 'NULL');
INSERT INTO rubrique (id, libelle, id_1) VALUES (4, 'Violon', 1);
INSERT INTO rubrique (id, libelle, id_1) VALUES (5, 'Guitare', 1);
INSERT INTO rubrique (id, libelle, id_1) VALUES (6, 'Basse', 1);
INSERT INTO rubrique (id, libelle, id_1) VALUES (7, 'Trompette', 2);
INSERT INTO rubrique (id, libelle, id_1) VALUES (8, 'Saxophone', 2);
INSERT INTO rubrique (id, libelle, id_1) VALUES (9, 'Batterie', 3);
INSERT INTO rubrique (id, libelle, id_1) VALUES (10, 'Xylophone', 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
