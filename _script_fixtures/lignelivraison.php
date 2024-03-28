<?php

class LigneLivraison {
    private $produit;
    private $livraison;
    private $qttLivree;
    
    public function setProduit($produit) {
        $this->produit = $produit;
    }
    
    public function setLivraison($livraison) {
        $this->livraison = $livraison;
    }
    
    public function setQttLivree($qttLivree) {
        $this->qttLivree = $qttLivree;
    }
    
    public function getProduit() {
        return $this->produit;
    }
    
    public function getLivraison() {
        return $this->livraison;
    }
    
    public function getQttLivree() {
        return $this->qttLivree;
    }
}

// Open the CSV file for reading
$csvFile = fopen('lignelivraison.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new LigneLivraison object
    $ligneLivraison = new LigneLivraison();
    
    // Set values from the CSV
    $ligneLivraison->setProduit('$p' . $row[0]);
    $ligneLivraison->setLivraison('$l' . $row[1]);
    $ligneLivraison->setQttLivree($row[2]);
    
    // Generate variable name with counter
    $variableName = '$ll' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new LigneLivraison();' . "<br>";
    echo $variableName . '->setProduit(' . $ligneLivraison->getProduit() . ');' . "<br>";
    echo $variableName . '->setLivraison(' . $ligneLivraison->getLivraison() . ');' . "<br>";
    echo $variableName . '->setQttLivree("' . $ligneLivraison->getQttLivree() . '");' . "<br>";
    echo '$manager->persist(' . $variableName . ');' . "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>
