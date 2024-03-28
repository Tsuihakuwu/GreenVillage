<?php

class LigneCommande {
    private $produit;
    private $commande;
    private $quantite;
    
    public function setProduit($produit) {
        $this->produit = $produit;
    }
    
    public function setCommande($commande) {
        $this->commande = $commande;
    }
    
    public function setQuantite($quantite) {
        $this->quantite = $quantite;
    }
    
    public function getProduit() {
        return $this->produit;
    }
    
    public function getCommande() {
        return $this->commande;
    }
    
    public function getQuantite() {
        return $this->quantite;
    }
}

// Open the CSV file for reading
$csvFile = fopen('lignecommande.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new LigneCommande object
    $ligneCommande = new LigneCommande();
    
    // Set values from the CSV
    $ligneCommande->setProduit('$p' . $row[0]);
    $ligneCommande->setCommande('$c' . $row[1]);
    $ligneCommande->setQuantite($row[2]);
    
    // Generate variable name with counter
    $variableName = '$lc' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new LigneCommande();' . "<br>";
    echo $variableName . '->setProduit(' . $ligneCommande->getProduit() . ');' . "<br>";
    echo $variableName . '->setCommande(' . $ligneCommande->getCommande() . ');' . "<br>";
    echo $variableName . '->setQuantite("' . $ligneCommande->getQuantite() . '");' . "<br>";
    echo '$manager->persist(' . $variableName . ');' . "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>
