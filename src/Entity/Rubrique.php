<?php

namespace App\Entity;

use App\Repository\RubriqueRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: RubriqueRepository::class)]
class Rubrique
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 50)]
    private $libelle;

    #[ORM\Column(type: 'string', length: 255)]
    private $image;

    #[ORM\OneToMany(mappedBy: 'rubrique', targetEntity: Produit::class)]
    private $produit;

    #[ORM\ManyToOne(targetEntity: self::class, inversedBy: 'sous_rubrique')]
    private $sous_rubrique;

    public function __construct()
    {
        $this->produit = new ArrayCollection();
        $this->sous_rubrique = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLibelle(): ?string
    {
        return $this->libelle;
    }

    public function setLibelle(string $libelle): self
    {
        $this->libelle = $libelle;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    /**
     * @return Collection<int, Produit>
     */
    public function getProduit(): Collection
    {
        return $this->produit;
    }

    public function addProduit(Produit $produit): self
    {
        if (!$this->produit->contains($produit)) {
            $this->produit[] = $produit;
            $produit->setRubrique($this);
        }

        return $this;
    }

    public function removeProduit(Produit $produit): self
    {
        if ($this->produit->removeElement($produit)) {
            // set the owning side to null (unless already changed)
            if ($produit->getRubrique() === $this) {
                $produit->setRubrique(null);
            }
        }

        return $this;
    }

    public function getSousRubrique(): ?self
    {
        return $this->sous_rubrique;
    }

    public function setSousRubrique(?self $sous_rubrique): self
    {
        $this->sous_rubrique = $sous_rubrique;

        return $this;
    }

    public function addSousRubrique(self $sousRubrique): self
    {
        if (!$this->sous_rubrique->contains($sousRubrique)) {
            $this->sous_rubrique[] = $sousRubrique;
            $sousRubrique->setSousRubrique($this);
        }

        return $this;
    }

    public function removeSousRubrique(self $sousRubrique): self
    {
        if ($this->sous_rubrique->removeElement($sousRubrique)) {
            // set the owning side to null (unless already changed)
            if ($sousRubrique->getSousRubrique() === $this) {
                $sousRubrique->setSousRubrique(null);
            }
        }

        return $this;
    }
}
