INSERT INTO  produit (reference, libelle, description, prix_unitaire, image, stock, tva, active, id_fournisseur, id_rubrique)
VALUES ('54932091', 'Fender Stratocaster', 'Une très belle guitare noire', 2290.00,'chemin/de/mon/image/stratocaster.webp',200,25,true,5,1);

DELETE FROM produit
WHERE id=11;

UPDATE produit
SET libelle = "Fender Telecaster", description = "Une très belle guitare blanche", prix_unitaire = 1500
WHERE id=11;

UPDATE rubrique SET rubrique_parente = 5 WHERE id=?;

SELECT STRFTIME('%m', livraison.date_livraison) AS "Mois", SUM(produit.prix_unitaire*produit_livraison.quantite_livree)||" €" AS "Total CA"
FROM commande
JOIN livraison ON commande.id = livraison.id_commande
JOIN produit_livraison ON produit_livraison.id_livraison = livraison.id
JOIN produit ON produit.id = produit_livraison.id_produit
WHERE commande.status = 3 AND STRFTIME('%Y', livraison.date_livraison) = "2024"
GROUP BY STRFTIME('%m-%Y', livraison.date_livraison)
ORDER BY STRFTIME('%m', livraison.date_livraison);

SELECT SUM(produit.prix_unitaire*produit_livraison.quantite_livree)||"€" AS Total, fournisseur.nom AS "Nom du fournisseur"
FROM commande
JOIN livraison ON commande.id = livraison.id_commande
JOIN produit_livraison ON produit_livraison.id_livraison = livraison.id
JOIN produit ON produit.id = produit_livraison.id_produit
JOIN fournisseur ON produit.id_fournisseur = fournisseur.id
WHERE commande.status = 3
GROUP BY fournisseur.nom
ORDER BY SUM(produit.prix_unitaire*produit_livraison.quantite_livree) DESC
LIMIT 3;