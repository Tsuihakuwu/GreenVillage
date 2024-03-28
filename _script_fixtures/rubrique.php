<?php

class Rubrique {
    private $libelle;
    private $image;
    private $sousRubrique;
    
    public function setLibelle($libelle) {
        $this->libelle = $libelle;
    }
    
    public function setImage($image) {
        $this->image = $image;
    }
    
    public function setSousRubrique($sousRubrique) {
        $this->sousRubrique = $sousRubrique;
    }
    
    public function getLibelle() {
        return $this->libelle;
    }
    
    public function getImage() {
        return $this->image;
    }
    
    public function getSousRubrique() {
        return $this->sousRubrique;
    }
}

// Open the CSV file for reading
$csvFile = fopen('rubrique.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new Rubrique object
    $rubrique = new Rubrique();
    
    // Set values from the CSV
    $rubrique->setLibelle($row[1]);
    $rubrique->setImage($row[2]);
    
    // Set sousRubrique based on CSV data
    $sousRubrique = ($row[3] === 'NULL') ? NULL : $row[3];
    $rubrique->setSousRubrique($sousRubrique);
    
    // Optionally, you can persist $rubrique to database or do other operations
    
    // Generate variable name with counter
    $variableName = '$c' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new Rubrique();' . PHP_EOL;
    echo "<br>";
    echo $variableName . '->setLibelle("' . $rubrique->getLibelle() . '");' . PHP_EOL;
    echo "<br>";
    echo $variableName . '->setImage("' . $rubrique->getImage() . '");' . PHP_EOL;
    echo "<br>";
    echo $variableName . '->setSousRubrique(' . var_export($rubrique->getSousRubrique(), true) . ');' . PHP_EOL;
    echo "<br>";
    echo '$manager->persist(' . $variableName . ');' . PHP_EOL;
    echo "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>
