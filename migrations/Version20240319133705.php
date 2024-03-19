<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240319133705 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE commande');
        $this->addSql('DROP TABLE employe');
        $this->addSql('DROP TABLE fournisseur');
        $this->addSql('DROP TABLE livraison');
        $this->addSql('DROP TABLE produit');
        $this->addSql('DROP TABLE produit_commande');
        $this->addSql('DROP TABLE produit_livraison');
        $this->addSql('DROP TABLE rubrique');
        $this->addSql('ALTER TABLE client ADD nom VARCHAR(255) NOT NULL, DROP reference, DROP username, DROP password, DROP type, DROP tel, DROP coef_vente, DROP rue, DROP cp, DROP ville, DROP id_employe, CHANGE id id INT AUTO_INCREMENT NOT NULL, ADD PRIMARY KEY (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE commande (id TINYINT(1) DEFAULT NULL, reference VARCHAR(10) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, reduction NUMERIC(4, 2) DEFAULT NULL, date_com VARCHAR(19) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, mode_paiement TINYINT(1) DEFAULT NULL, reference_facture VARCHAR(18) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, date_facture DATETIME DEFAULT NULL, delai_paiement VARCHAR(15) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, status TINYINT(1) DEFAULT NULL, facturation_rue VARCHAR(25) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, facturation_cp VARCHAR(15) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, facturation_ville VARCHAR(19) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, livraison_rue VARCHAR(20) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, livraison_cp VARCHAR(13) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, livraison_ville VARCHAR(22) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, id_client TINYINT(1) DEFAULT NULL) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE employe (id TINYINT(1) DEFAULT NULL, username VARCHAR(16) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, password VARCHAR(16) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, role TINYINT(1) DEFAULT NULL) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE fournisseur (id TINYINT(1) DEFAULT NULL, nom VARCHAR(29) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, contact VARCHAR(17) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, email VARCHAR(28) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE livraison (id TINYINT(1) DEFAULT NULL, reference VARCHAR(10) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, date_livraison VARCHAR(19) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, id_commande TINYINT(1) DEFAULT NULL) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE produit (id TINYINT(1) DEFAULT NULL, reference VARCHAR(10) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, libelle VARCHAR(17) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, description VARCHAR(137) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, prix_unitaire SMALLINT DEFAULT NULL, image VARCHAR(96) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, stock SMALLINT DEFAULT NULL, tva NUMERIC(4, 2) DEFAULT NULL, active VARCHAR(7) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, id_fournisseur TINYINT(1) DEFAULT NULL, id_rubrique TINYINT(1) DEFAULT NULL) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE produit_commande (id_produit TINYINT(1) DEFAULT NULL, id_commande TINYINT(1) DEFAULT NULL, quantite TINYINT(1) DEFAULT NULL) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE produit_livraison (id_produit TINYINT(1) DEFAULT NULL, id_livraison TINYINT(1) DEFAULT NULL, quantite_livree TINYINT(1) DEFAULT NULL) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE rubrique (id TINYINT(1) DEFAULT NULL, libelle VARCHAR(24) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, image VARCHAR(95) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`, rubrique_parente VARCHAR(4) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_general_ci`) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_general_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE client MODIFY id INT NOT NULL');
        $this->addSql('DROP INDEX `primary` ON client');
        $this->addSql('ALTER TABLE client ADD reference VARCHAR(10) DEFAULT NULL, ADD username VARCHAR(30) DEFAULT NULL, ADD password VARCHAR(16) DEFAULT NULL, ADD type VARCHAR(14) DEFAULT NULL, ADD tel VARCHAR(13) DEFAULT NULL, ADD coef_vente NUMERIC(2, 1) DEFAULT NULL, ADD rue VARCHAR(26) DEFAULT NULL, ADD cp VARCHAR(7) DEFAULT NULL, ADD ville VARCHAR(16) DEFAULT NULL, ADD id_employe TINYINT(1) DEFAULT NULL, DROP nom, CHANGE id id TINYINT(1) DEFAULT NULL');
    }
}
