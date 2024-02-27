CREATE TABLE rubrique(
   id INTEGER,
   libelle TEXT,
   image TEXT,
   rubrique_parente INTEGER,
   PRIMARY KEY(id),
   FOREIGN KEY(rubrique_parente) REFERENCES rubrique(id)
);

CREATE TABLE fournisseur(
   id INTEGER,
   nom TEXT,
   contact TEXT,
   email TEXT,
   PRIMARY KEY(id)
);

CREATE TABLE employe(
   id INTEGER,
   username TEXT,
   password TEXT NOT NULL,
   role INTEGER,
   PRIMARY KEY(id)
);

CREATE TABLE produit(
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

CREATE TABLE client(
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

CREATE TABLE commande(
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

CREATE TABLE livraison(
   id INTEGER,
   reference TEXT,
   date_livraison NUMERIC,
   id_commande INTEGER,
   PRIMARY KEY(id),
   UNIQUE(reference),
   FOREIGN KEY(id_commande) REFERENCES commande(id)
);

CREATE TABLE produit_commande(
   id_produit INTEGER,
   id_commande INTEGER,
   quantite INTEGER,
   PRIMARY KEY(id_produit, id_commande),
   FOREIGN KEY(id_produit) REFERENCES produit(id),
   FOREIGN KEY(id_commande) REFERENCES commande(id)
);

CREATE TABLE produit_livraison(
   id_produit INTEGER,
   id_livraison INTEGER,
   quantite_livree INTEGER,
   PRIMARY KEY(id_produit, id_livraison),
   FOREIGN KEY(id_produit) REFERENCES produit(id),
   FOREIGN KEY(id_livraison) REFERENCES livraison(id)
);