<?php

class Commande {
    private $reference;
    private $reduction;
    private $date_com;
    private $mode_paiement;
    private $reference_facture;
    private $delai_paiement;
    private $status;
    private $facturation_rue;
    private $facturation_cp;
    private $facturation_ville;
    private $livraison_rue;
    private $livraison_cp;
    private $livraison_ville;
    private $client;
    
    public function setReference($reference) {
        $this->reference = $reference;
    }
    
    public function setReduction($reduction) {
        $this->reduction = $reduction;
    }

    public function setDateCommande($date_com) {
        $this->date_com = $date_com;
    }
    
    public function setModePaiement($mode_paiement) {
        $this->mode_paiement = $mode_paiement;
    }
    
    public function setReferenceFacture($reference_facture) {
        $this->reference_facture = $reference_facture;
    }
    
    public function setDelaiPaiement($delai_paiement) {
        $this->delai_paiement = $delai_paiement;
    }
    
    public function setStatus($status) {
        $this->status = $status;
    }
    
    public function setFacturationRue($facturation_rue) {
        $this->facturation_rue = $facturation_rue;
    }
    
    public function setFacturationCp($facturation_cp) {
        $this->facturation_cp = $facturation_cp;
    }
    
    public function setFacturationVille($facturation_ville) {
        $this->facturation_ville = $facturation_ville;
    }
    
    public function setLivraisonRue($livraison_rue) {
        $this->livraison_rue = $livraison_rue;
    }
    
    public function setLivraisonCp($livraison_cp) {
        $this->livraison_cp = $livraison_cp;
    }
    
    public function setLivraisonVille($livraison_ville) {
        $this->livraison_ville = $livraison_ville;
    }
    
    public function setClient($client) {
        $this->client = $client;
    }
    
    public function getReference() {
        return $this->reference;
    }
    
    public function getReduction() {
        return $this->reduction;
    }

    public function getDateCommande() {
        return $this->date_com;
    }
    
    public function getModePaiement() {
        return $this->mode_paiement;
    }
    
    public function getReferenceFacture() {
        return $this->reference_facture;
    }
    
    public function getDelaiPaiement() {
        return $this->delai_paiement;
    }
    
    public function getStatus() {
        return $this->status;
    }
    
    public function getFacturationRue() {
        return $this->facturation_rue;
    }
    
    public function getFacturationCp() {
        return $this->facturation_cp;
    }
    
    public function getFacturationVille() {
        return $this->facturation_ville;
    }
    
    public function getLivraisonRue() {
        return $this->livraison_rue;
    }
    
    public function getLivraisonCp() {
        return $this->livraison_cp;
    }
    
    public function getLivraisonVille() {
        return $this->livraison_ville;
    }
    
    public function getClient() {
        return $this->client;
    }
}

// Open the CSV file for reading
$csvFile = fopen('commande.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new Commande object
    $commande = new Commande();
    
    date_default_timezone_set('Europe/Paris');
    // Set values from the CSV
    $commande->setReference($row[1]);
    $commande->setReduction($row[2]);
    $commande->setDateCommande(date(DATE_ATOM,strtotime($row[3])));
    $commande->setModePaiement($row[4]);
    $commande->setReferenceFacture($row[5]);
    $commande->setDelaiPaiement(date(DATE_ATOM,strtotime($row[6])));
    $commande->setStatus($row[7]);
    $commande->setFacturationRue($row[8]);
    $commande->setFacturationCp($row[9]);
    $commande->setFacturationVille($row[10]);
    $commande->setLivraisonRue($row[11]);
    $commande->setLivraisonCp($row[12]);
    $commande->setLivraisonVille($row[13]);
    
    // Set Client using existing instance
    $commande->setClient('$u' . $row[14]);
    
    // Generate variable name with counter
    $variableName = '$c' . $counter;
    
     // Output PHP code to create object
     echo $variableName . ' = new Commande();' . "<br>";
     echo $variableName . '->setReference("' . $commande->getReference() . '");' . "<br>";
     echo $variableName . '->setReduction(' . $commande->getReduction() . ');' . "<br>";
     echo $variableName . '->setDateCommande(new DateTimeImmutable("' . $commande->getDateCommande() . '"));' . "<br>";
     echo $variableName . '->setModePaiement(' . $commande->getModePaiement() . ');' . "<br>";
     echo $variableName . '->setReferenceFacture("' . $commande->getReferenceFacture() . '");' . "<br>";
     echo $variableName . '->setDelaiPaiement(new DateTimeImmutable("' . $commande->getDelaiPaiement() . '"));' . "<br>";
     echo $variableName . '->setStatus(' . $commande->getStatus() . ');' . "<br>";
     echo $variableName . '->setFacturationRue("' . $commande->getFacturationRue() . '");' . "<br>";
     echo $variableName . '->setFacturationCp("' . $commande->getFacturationCp() . '");' . "<br>";
     echo $variableName . '->setFacturationVille("' . $commande->getFacturationVille() . '");' . "<br>";
     echo $variableName . '->setLivraisonRue("' . $commande->getLivraisonRue() . '");' . "<br>";
     echo $variableName . '->setLivraisonCp("' . $commande->getLivraisonCp() . '");' . "<br>";
     echo $variableName . '->setLivraisonVille("' . $commande->getLivraisonVille() . '");' . "<br>";
     echo $variableName . '->setClient(' . $commande->getClient() . ');' . "<br>";
     echo '$manager->persist(' . $variableName . ');' . "<br>";
     
     // Increment counter
     $counter++;
 }
 
 // Close the CSV file
 fclose($csvFile);
 
 ?>