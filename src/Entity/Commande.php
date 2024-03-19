<?php

namespace App\Entity;

use App\Repository\CommandeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CommandeRepository::class)]
class Commande
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $reference;

    #[ORM\Column(type: 'decimal', precision: 15, scale: 2)]
    private $reduction;

    #[ORM\Column(type: 'datetime')]
    private $date_commande;

    #[ORM\Column(type: 'integer')]
    private $mode_paiement;

    #[ORM\Column(type: 'string', length: 255)]
    private $reference_facture;

    #[ORM\Column(type: 'datetime')]
    private $date_facture;

    #[ORM\Column(type: 'date')]
    private $delai_paiement;

    #[ORM\Column(type: 'smallint')]
    private $status;

    #[ORM\Column(type: 'string', length: 255)]
    private $facturation_rue;

    #[ORM\Column(type: 'string', length: 255)]
    private $facturation_cp;

    #[ORM\Column(type: 'string', length: 255)]
    private $facturation_ville;

    #[ORM\Column(type: 'string', length: 255)]
    private $livraison_rue;

    #[ORM\Column(type: 'string', length: 255)]
    private $livraison_cp;

    #[ORM\Column(type: 'string', length: 255)]
    private $livraison_ville;

    #[ORM\ManyToOne(targetEntity: Client::class, inversedBy: 'client')]
    private $client;

    #[ORM\OneToMany(mappedBy: 'commande', targetEntity: Livraison::class)]
    private $livraisons;

    #[ORM\ManyToMany(targetEntity: Produit::class, mappedBy: 'commande')]
    private $produits;

    public function __construct()
    {
        $this->livraisons = new ArrayCollection();
        $this->produits = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getReference(): ?string
    {
        return $this->reference;
    }

    public function setReference(string $reference): self
    {
        $this->reference = $reference;

        return $this;
    }

    public function getReduction(): ?string
    {
        return $this->reduction;
    }

    public function setReduction(string $reduction): self
    {
        $this->reduction = $reduction;

        return $this;
    }

    public function getDateCommande(): ?\DateTimeInterface
    {
        return $this->date_commande;
    }

    public function setDateCommande(\DateTimeInterface $date_commande): self
    {
        $this->date_commande = $date_commande;

        return $this;
    }

    public function getModePaiement(): ?int
    {
        return $this->mode_paiement;
    }

    public function setModePaiement(int $mode_paiement): self
    {
        $this->mode_paiement = $mode_paiement;

        return $this;
    }

    public function getReferenceFacture(): ?string
    {
        return $this->reference_facture;
    }

    public function setReferenceFacture(string $reference_facture): self
    {
        $this->reference_facture = $reference_facture;

        return $this;
    }

    public function getDateFacture(): ?\DateTimeInterface
    {
        return $this->date_facture;
    }

    public function setDateFacture(\DateTimeInterface $date_facture): self
    {
        $this->date_facture = $date_facture;

        return $this;
    }

    public function getDelaiPaiement(): ?\DateTimeInterface
    {
        return $this->delai_paiement;
    }

    public function setDelaiPaiement(\DateTimeInterface $delai_paiement): self
    {
        $this->delai_paiement = $delai_paiement;

        return $this;
    }

    public function getStatus(): ?int
    {
        return $this->status;
    }

    public function setStatus(int $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getFacturationRue(): ?string
    {
        return $this->facturation_rue;
    }

    public function setFacturationRue(string $facturation_rue): self
    {
        $this->facturation_rue = $facturation_rue;

        return $this;
    }

    public function getFacturationCp(): ?string
    {
        return $this->facturation_cp;
    }

    public function setFacturationCp(string $facturation_cp): self
    {
        $this->facturation_cp = $facturation_cp;

        return $this;
    }

    public function getFacturationVille(): ?string
    {
        return $this->facturation_ville;
    }

    public function setFacturationVille(string $facturation_ville): self
    {
        $this->facturation_ville = $facturation_ville;

        return $this;
    }

    public function getLivraisonRue(): ?string
    {
        return $this->livraison_rue;
    }

    public function setLivraisonRue(string $livraison_rue): self
    {
        $this->livraison_rue = $livraison_rue;

        return $this;
    }

    public function getLivraisonCp(): ?string
    {
        return $this->livraison_cp;
    }

    public function setLivraisonCp(string $livraison_cp): self
    {
        $this->livraison_cp = $livraison_cp;

        return $this;
    }

    public function getLivraisonVille(): ?string
    {
        return $this->livraison_ville;
    }

    public function setLivraisonVille(string $livraison_ville): self
    {
        $this->livraison_ville = $livraison_ville;

        return $this;
    }

    public function getClient(): ?Client
    {
        return $this->client;
    }

    public function setClient(?Client $client): self
    {
        $this->client = $client;

        return $this;
    }

    /**
     * @return Collection<int, Livraison>
     */
    public function getLivraisons(): Collection
    {
        return $this->livraisons;
    }

    public function addLivraison(Livraison $livraison): self
    {
        if (!$this->livraisons->contains($livraison)) {
            $this->livraisons[] = $livraison;
            $livraison->setCommande($this);
        }

        return $this;
    }

    public function removeLivraison(Livraison $livraison): self
    {
        if ($this->livraisons->removeElement($livraison)) {
            // set the owning side to null (unless already changed)
            if ($livraison->getCommande() === $this) {
                $livraison->setCommande(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Produit>
     */
    public function getProduits(): Collection
    {
        return $this->produits;
    }

    public function addProduit(Produit $produit): self
    {
        if (!$this->produits->contains($produit)) {
            $this->produits[] = $produit;
            $produit->addCommande($this);
        }

        return $this;
    }

    public function removeProduit(Produit $produit): self
    {
        if ($this->produits->removeElement($produit)) {
            $produit->removeCommande($this);
        }

        return $this;
    }
}
