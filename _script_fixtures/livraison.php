<?php

class Livraison {
    private $reference;
    private $date_livraison;
    private $commande;
    
    public function setReference($reference) {
        $this->reference = $reference;
    }
    
    public function setDateLivraison($date_livraison) {
        $this->date_livraison = $date_livraison;
    }
    
    public function setCommande($commande) {
        $this->commande = $commande;
    }
    
    public function getReference() {
        return $this->reference;
    }
    
    public function getDateLivraison() {
        return $this->date_livraison;
    }
    
    public function getCommande() {
        return $this->commande;
    }
}

// Open the CSV file for reading
$csvFile = fopen('livraison.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new Livraison object
    $livraison = new Livraison();
    
    // Set values from the CSV
    $livraison->setReference($row[1]);
    $livraison->setDateLivraison($row[2]);
    
    // Set Commande using existing instance
    $livraison->setCommande('$c' . $row[3]);
    
    // Generate variable name with counter
    $variableName = '$l' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new Livraison();' . "<br>";
    echo $variableName . '->setReference("' . $livraison->getReference() . '");' . "<br>";
    echo $variableName . '->setDateLivraison(new DateTimeImmutable("' . $livraison->getDateLivraison() . '"));' . "<br>";
    echo $variableName . '->setCommande(' . $livraison->getCommande() . ');' . "<br>";
    echo '$manager->persist(' . $variableName . ');' . "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>
