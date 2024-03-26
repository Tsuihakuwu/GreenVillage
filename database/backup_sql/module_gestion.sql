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

SELECT produit.reference AS "Reference produit",
produit.libelle AS "Nom du produit",
produit_commande.quantite AS "Quantité commandée",
fournisseur.nom AS "Nom du fournisseur"
FROM commande
JOIN produit_commande ON commande.id = produit_commande.id_commande
JOIN produit ON produit.id = produit_commande.id_commande
JOIN fournisseur ON produit.id_fournisseur = fournisseur.id
WHERE commande.status = 3
AND STRFTIME('%Y', commande.date_com) = "2024"
LIMIT 10;

SELECT produit.reference AS "Reference produit",
produit.libelle AS "Nom du produit",
ROUND((SUM(((produit.prix_unitaire)*client.coef_vente))-produit.prix_unitaire),2) AS "Marge brute",
fournisseur.nom AS "Nom du fournisseur",
client.type
FROM client
JOIN commande ON client.id = commande.id_client
JOIN livraison ON livraison.id_commande = commande.id
JOIN produit_livraison ON produit_livraison.id_livraison = livraison.id
JOIN produit ON produit.id = produit_livraison.id_produit
JOIN fournisseur ON fournisseur.id = produit.id_fournisseur
WHERE client.type = "true" AND commande.status = 3 AND STRFTIME('%Y', commande.date_com) = "2024"
GROUP BY produit.reference
UNION
SELECT produit.reference AS "Reference produit",
produit.libelle AS "Nom du produit",
ROUND((SUM(((produit.prix_unitaire*produit.tva)*client.coef_vente))-produit.prix_unitaire),2) AS "Marge brute",
fournisseur.nom AS "Nom du fournisseur",
client.type
FROM client
JOIN commande ON client.id = commande.id_client
JOIN livraison ON livraison.id_commande = commande.id
JOIN produit_livraison ON produit_livraison.id_livraison = livraison.id
JOIN produit ON produit.id = produit_livraison.id_produit
JOIN fournisseur ON fournisseur.id = produit.id_fournisseur
WHERE client.type = "false" AND commande.status = 3 AND STRFTIME('%Y', commande.date_com) = "2024"
GROUP BY produit.reference
ORDER BY "Marge brute" DESC


SELECT client.reference AS "Référence client", client.username AS "Nom d'utilisateur", client.type AS "Type client",
ROUND(SUM(((produit.prix_unitaire*produit.tva)*client.coef_vente))) AS "Chiffre d'affaire généré",
COUNT(commande.reference) AS "Nombre de commandes" FROM commande
JOIN client ON client.id = commande.id_client
JOIN produit_commande ON commande.id = produit_commande.id_commande
JOIN produit ON produit_commande.id_produit = produit.id
WHERE id_client = client.id
GROUP BY client.id
ORDER BY "Chiffre d'affaire généré" DESC

SELECT client.type AS "Type client", ROUND(SUM(((produit.prix_unitaire*produit.tva)*client.coef_vente))) AS "Chiffre d'affaire généré" FROM client
JOIN commande ON client.id = commande.id_client
JOIN produit_commande ON commande.id = produit_commande.id_commande
JOIN produit ON produit.id = produit_commande.id_produit
GROUP BY client.type
ORDER BY "Chiffre d'affaire généré" DESC