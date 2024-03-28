<?php

namespace App\Entity;

use App\Repository\LigneLivraisonRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LigneLivraisonRepository::class)]
class LigneLivraison
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column]
    private ?int $qtt_livree = null;

    #[ORM\ManyToOne(inversedBy: 'ligneLivraisons')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Produit $produit = null;

    #[ORM\ManyToOne(inversedBy: 'ligneLivraisons')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Livraison $livraison = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getQttLivree(): ?int
    {
        return $this->qtt_livree;
    }

    public function setQttLivree(int $qtt_livree): static
    {
        $this->qtt_livree = $qtt_livree;

        return $this;
    }

    public function getProduit(): ?Produit
    {
        return $this->produit;
    }

    public function setProduit(?Produit $produit): static
    {
        $this->produit = $produit;

        return $this;
    }

    public function getLivraison(): ?Livraison
    {
        return $this->livraison;
    }

    public function setLivraison(?Livraison $livraison): static
    {
        $this->livraison = $livraison;

        return $this;
    }
}
