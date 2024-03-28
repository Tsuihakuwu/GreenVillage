<?php

class Users {
    private $reference;
    private $email;
    private $password;
    private $roles;
    private $tel;
    private $coef_vente;
    private $rue;
    private $cp;
    private $ville;
    private $commercial;
    
    public function setReference($reference) {
        $this->reference = $reference;
    }
    
    public function setEmail($email) {
        $this->email = $email;
    }
    
    public function setPassword($password) {
        $this->password = $password;
    }
    
    public function setRoles($roles) {
        $this->roles = $roles;
    }
    
    public function setTel($tel) {
        $this->tel = $tel;
    }
    
    public function setCoefVente($coef_vente) {
        $this->coef_vente = $coef_vente;
    }
    
    public function setRue($rue) {
        $this->rue = $rue;
    }
    
    public function setCp($cp) {
        $this->cp = $cp;
    }
    
    public function setVille($ville) {
        $this->ville = $ville;
    }
    
    public function setCommercial($commercial) {
        $this->commercial = $commercial;
    }
    
    public function getReference() {
        return $this->reference;
    }
    
    public function getEmail() {
        return $this->email;
    }
    
    public function getPassword() {
        return $this->password;
    }
    
    public function getRoles() {
        return $this->roles;
    }
    
    public function getTel() {
        return $this->tel;
    }
    
    public function getCoefVente() {
        return $this->coef_vente;
    }
    
    public function getRue() {
        return $this->rue;
    }
    
    public function getCp() {
        return $this->cp;
    }
    
    public function getVille() {
        return $this->ville;
    }
    
    public function getCommercial() {
        return $this->commercial;
    }
}

// Open the CSV file for reading
$csvFile = fopen('users.csv', 'r');

// Skip the header row if needed
// fgetcsv($csvFile);

// Initialize counter
$counter = 1;

// Read each line of the CSV file
while (($row = fgetcsv($csvFile)) !== false) {
    // Create a new Users object
    $user = new Users();
    
    // Set values from the CSV
    $user->setReference($row[1]);
    $user->setEmail($row[2]);
    $user->setPassword($row[3]);
    $user->setRoles($row[4]);
    $user->setTel($row[5]);
    $user->setCoefVente($row[6]);
    $user->setRue($row[7]);
    $user->setCp($row[8]);
    $user->setVille($row[9]);
    if($row[10]==NULL){
        $row[10] = "NULL";
    }
    $user->setCommercial($row[10]);
    
    // Generate variable name with counter
    $variableName = '$u' . $counter;
    
    // Output PHP code to create object
    echo $variableName . ' = new Users();' . "<br>";
    echo $variableName . '->setReference("' . $user->getReference() . '");' . "<br>";
    echo $variableName . '->setEmail("' . $user->getEmail() . '");' . "<br>";
    echo $variableName . '->setPassword("' . $user->getPassword() . '");' . "<br>";
    echo $variableName . '->setRoles("' . $user->getRoles() . '");' . "<br>";
    echo $variableName . '->setTel("' . $user->getTel() . '");' . "<br>";
    echo $variableName . '->setCoefVente("' . $user->getCoefVente() . '");' . "<br>";
    echo $variableName . '->setRue("' . $user->getRue() . '");' . "<br>";
    echo $variableName . '->setCp("' . $user->getCp() . '");' . "<br>";
    echo $variableName . '->setVille("' . $user->getVille() . '");' . "<br>";
    echo $variableName . '->setCommercial("' . $user->getCommercial() . '");' . "<br>";
    echo '$manager->persist(' . $variableName . ');' . "<br>";
    
    // Increment counter
    $counter++;
}

// Close the CSV file
fclose($csvFile);

?>