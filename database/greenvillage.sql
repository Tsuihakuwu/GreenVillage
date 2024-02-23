CREATE TABLE rubrique(
   id INTEGER,
   libelle TEXT,
   id_1 INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES rubrique(id)
);

CREATE TABLE fournisseur(
   id INTEGER,
   nom TEXT,
   contact TEXT,
   adresse TEXT,
   PRIMARY KEY(id)
);

CREATE TABLE client(
   id INTEGER,
   reference INTEGER,
   username TEXT,
   password TEXT,
   type INTEGER,
   tel TEXT,
   coef_vente NUMERIC(15,2)  ,
   rue TEXT,
   cp TEXT,
   ville TEXT,
   PRIMARY KEY(id)
);

CREATE TABLE employe(
   id INTEGER,
   username TEXT,
   password TEXT NOT NULL,
   role INTEGER,
   PRIMARY KEY(id)
);

CREATE TABLE facture(
   id INTEGER,
   reference INTEGER,
   PRIMARY KEY(id)
);

CREATE TABLE produit(
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
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES rubrique(id)
);

CREATE TABLE commande(
   id INTEGER,
   reference INTEGER,
   quantite TEXT,
   reduction NUMERIC(4,2)  ,
   date_com NUMERIC,
   mode_paiement INTEGER,
   delai_paiement NUMERIC,
   status TEXT,
   id_1 INTEGER NOT NULL,
   id_2 INTEGER NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(id_1),
   FOREIGN KEY(id_1) REFERENCES facture(id),
   FOREIGN KEY(id_2) REFERENCES client(id)
);

CREATE TABLE livraison(
   id INTEGER,
   reference INTEGER,
   adresse_livraison TEXT,
   date_livraison TEXT,
   id_1 INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES commande(id)
);

CREATE TABLE produit_fournisseur(
   id INTEGER,
   id_1 INTEGER,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES produit(id),
   FOREIGN KEY(id_1) REFERENCES fournisseur(id)
);

CREATE TABLE produit_commande(
   id INTEGER,
   id_1 INTEGER,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES produit(id),
   FOREIGN KEY(id_1) REFERENCES commande(id)
);

CREATE TABLE employe_client(
   id INTEGER,
   id_1 INTEGER,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES client(id),
   FOREIGN KEY(id_1) REFERENCES employe(id)
);
