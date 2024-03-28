<?php

class Produit {
    private $reference;
    private $libelle;
    private $description;
    private $prix_unitaire;
    private $image;
    private $stock;
    private $tva;
    private $active;
    private $fournisseur;
    private $rubrique;
    
    public function setReference($reference) {
        $this->reference = $reference;
    }
    
    public function setLibelle($libelle) {
        $this->libelle = $libelle;
    }
    
    public function setDescription($description) {
        $this->description = $description;
    }
    
    public function setPrixUnitaire($prix_unitaire) {
        $this->prix_unitaire = $prix_unitaire;
    }
    
    public function setImage($image) {
        $this->image = $image;
    }
    
    public function setStock($stock) {
        $this->stock = $stock;
    }
    
    public function setTva($tva) {
        $this->tva = $tva;
    }
    
    public function setActive($active) {
        $this->active = $active;
    }
    
    public function setFournisseur($fournisseur) {
        $this->fournisseur = $fournisseur;
    }
    
    public function setRubrique($rubrique) {
        $this->rubrique = $rubrique;
    }
    
    public function getReference() {
        return $this->reference;
    }
    
    public function getLibelle() {
        return $this->libelle;
    }
    
    public function getDescription() {
        return $this->description;
    }
    
    public function getPrixUnitaire() {
        return $this->prix_unitaire;
    }
    
    public function getImage() {
        return $this->image;
    }
    
    public function getStock() {
        return $this->stock;
    }
    
    public function getTva() {
        return $this->tva;
    }
    
    public function getActive() {
        return $this->active;
    }
    
    public function getFournisseur() {
        return $this->fournisseur;
    }
    
    public function getRubrique() {
        return $this->rubrique;
    }
}

// Open the CSV file for reading
$csvFile = fopen('produit.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new Produit object
    $produit = new Produit();
    
    // Set values from the CSV
    $produit->setReference($row[1]);
    $produit->setLibelle($row[2]);
    $produit->setDescription($row[3]);
    $produit->setPrixUnitaire($row[4]);
    $produit->setImage($row[5]);
    $produit->setStock($row[6]);
    $produit->setTva($row[7]);
    $produit->setActive($row[8]);
    
    // Set Fournisseur and Rubrique using existing instances
    $produit->setFournisseur('$f' . $row[9]);
    $produit->setRubrique('$r' . $row[10]);
    
    // Generate variable name with counter
    $variableName = '$p' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new Produit();' . "<br>";
    echo $variableName . '->setReference("' . $produit->getReference() . '");' . "<br>";
    echo $variableName . '->setLibelle("' . $produit->getLibelle() . '");' . "<br>";
    echo $variableName . '->setDescription("' . $produit->getDescription() . '");' . "<br>";
    echo $variableName . '->setPrixUnitaire("' . $produit->getPrixUnitaire() . '");' . "<br>";
    echo $variableName . '->setImage("' . $produit->getImage() . '");' . "<br>";
    echo $variableName . '->setStock(' . $produit->getStock() . ');' . "<br>";
    echo $variableName . '->setTva(' . $produit->getTva() . ');' . "<br>";
    echo $variableName . '->setActive(' . ($produit->getActive() ? 'true' : 'false') . ');' . "<br>";
    echo $variableName . '->setFournisseur(' . $produit->getFournisseur() . ');' . "<br>";
    echo $variableName . '->setRubrique(' . $produit->getRubrique() . ');' . "<br>";
    echo '$manager->persist(' . $variableName . ');' . "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>
