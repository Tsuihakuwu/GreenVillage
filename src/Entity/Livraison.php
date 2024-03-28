<?php

namespace App\Entity;

use App\Repository\LivraisonRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LivraisonRepository::class)]
class Livraison
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $reference;

    #[ORM\Column(type: 'datetime', nullable: true)]
    private $date_livraison;

    #[ORM\OneToMany(targetEntity: LigneLivraison::class, mappedBy: 'livraison')]
    private Collection $ligneLivraisons;

    public function __construct()
    {
        $this->ligneLivraisons = new ArrayCollection();
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

    public function getDateLivraison(): ?\DateTimeInterface
    {
        return $this->date_livraison;
    }

    public function setDateLivraison(?\DateTimeInterface $date_livraison): self
    {
        $this->date_livraison = $date_livraison;

        return $this;
    }

    /**
     * @return Collection<int, LigneLivraison>
     */
    public function getLigneLivraisons(): Collection
    {
        return $this->ligneLivraisons;
    }

    public function addLigneLivraison(LigneLivraison $ligneLivraison): static
    {
        if (!$this->ligneLivraisons->contains($ligneLivraison)) {
            $this->ligneLivraisons->add($ligneLivraison);
            $ligneLivraison->setLivraison($this);
        }

        return $this;
    }

    public function removeLigneLivraison(LigneLivraison $ligneLivraison): static
    {
        if ($this->ligneLivraisons->removeElement($ligneLivraison)) {
            // set the owning side to null (unless already changed)
            if ($ligneLivraison->getLivraison() === $this) {
                $ligneLivraison->setLivraison(null);
            }
        }

        return $this;
    }
}
