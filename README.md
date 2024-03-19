<h1 align="center">Projet Fil Rouge CDA</h1>
<h2 align="center">🎷 🎸 Green Village 🎸 🎷</h2>
<br>
<p>Création d'un site marchand de vente d'instruments de musiques avec interface client et back-office d'administration</p>
<br><br>
<h4>TODO :</h4>


<h5>Préparation, documentation et design :</h5>

- Base de données
    - ✅ Dictionnaire des données
    - ✅ MCD
    - ✅ Dummy data pour tests SQL

- Création de requêtes
    - Module de gestion des produits
        - ✅ Ajouter produit
        - ✅ Supression produit
        - ✅ Modification produit
        - ✅ Modification arborescence des catégories
    - Tableau de bord de gestion
        - ✅ Chiffre d'affaire par mois pour une année sélectionnée
        - ✅ Chiffre d'affaire généré pour un fournisseur
        - ✅ Top 10 des produits les plus commandés sur une année sélectionnée (Référence, Nom, Quantité commandée, Fournisseur)
        - ✅ Top 10 des produits les plus rémunérateurs pour une année sélectionnée (Référence, Nom, Marge, Fournisseur)
        - ✅ Top 10 des clients en nombre de commande ou en chiffre d'affaire
        - ✅ Répartition du chiffre d'affaires par type de client
        - ✅ Nombre de commandes en cours de livraison

- Sauvegarde de la base de données
    - ✅ Création d'un script Powershell
    - Tâche CRON

- Composants d’accès
    - ✅ Création d’une procédure stockée qui sélectionne les commandes non soldées (en cours de livraison)
    - ✅ Création d’une procédure stockée qui renvoie le délai moyen entre la date de commande et la date de facturation.
    - ✅ Création d’une vue permettant d’afficher uniquement les clients professionnels
    - ✅ Création d’une vue permettant d’afficher la jointure produit/fournisseur
    - ✅ Création d’une vue permettant d’afficher la jointure produit/catégorie


- Création maquette
    - ✅ Compte éducation Figma
    - ✅ Définir ce qui apparaitra sur la page d'acceuil
    - ✅ Design Mobile
    - ✅ Design browser
    - ✅ Repertorier et créer toutes les pages nécessaires
    - Modification page panier sous forme de liste avec vignettes


<h5>Dev :</h5>

- Créer page d'acceuil
    - ⚠️ Mobile first ⚠️

- Page Catalogue
    - Tri par rubrique
    - Tri par sous-rubrique
    - Barre de recherche
    - Filtre latéral et/ou fil d'ariane
    
- Connexion back-office
    - Gestion vue superadmin avec possibilité de switch différents rôles pour tests
    - Gestion vue commercial
    - Gestion vue SAV
    - Gestion vue Comptabilité

- Connexion Utilisateur
    - Inscription nouvel utilisateur
    - Connexion/Déconnexion
    - Accès catalogue
    - Gestion panier avec validation créant une entrée commande
    - Visualisation des anciennes commandes
    - Visualisation profil