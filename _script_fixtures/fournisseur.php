<?php

class Fournisseur {
    private $nom;
    private $contact;
    private $email;
    
    public function setNom($nom) {
        $this->nom = $nom;
    }
    
    public function setContact($contact) {
        $this->contact = $contact;
    }
    
    public function setEmail($email) {
        $this->email = $email;
    }
    
    public function getNom() {
        return $this->nom;
    }
    
    public function getContact() {
        return $this->contact;
    }
    
    public function getEmail() {
        return $this->email;
    }
}

// Open the CSV file for reading
$csvFile = fopen('fournisseur.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new Fournisseur object
    $fournisseur = new Fournisseur();
    
    // Set values from the CSV
    $fournisseur->setNom($row[1]);
    $fournisseur->setContact($row[2]);
    $fournisseur->setEmail($row[3]);
    
    // Generate variable name with counter
    $variableName = '$f' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new Fournisseur();' . "<br>";
    echo $variableName . '->setNom("' . $fournisseur->getNom() . '");' . "<br>";
    echo $variableName . '->setContact("' . $fournisseur->getContact() . '");' . "<br>";
    echo $variableName . '->setEmail("' . $fournisseur->getEmail() . '");' . "<br>";
    echo '$manager->persist(' . $variableName . ');' . "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>
