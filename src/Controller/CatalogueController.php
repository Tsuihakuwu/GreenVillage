<?php

namespace App\Controller;

use App\Entity\Rubrique;
use App\Entity\Produit;
use App\Repository\RubriqueRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CatalogueController extends AbstractController
{
    #[Route('/catalogue', name: 'app_catalogue')]
    public function index(RubriqueRepository $repository): Response
    {
        $rubriques = $repository->findBy([ 'parent' => null ]);
        return $this->render('catalogue/index.html.twig', [
            'rubriques' => $rubriques,
        ]);
    }

    #[Route('/rubrique/{rubrique}', name: 'app_sous_rubrique')]
    public function rubrique(Rubrique $rubrique): Response
    {
        return $this->render('catalogue/rubrique.html.twig', [
            'rubrique' => $rubrique
        ]);
    }

    #[Route('/produits/{rubrique}', name: 'app_produits')]
    public function produits(Rubrique $rubrique): Response
    {
        return $this->render('catalogue/produits.html.twig', [
            'rubrique' => $rubrique
        ]);
    }

    #[Route('/details/{produit}', name: 'app_details')]
    public function details(Produit $produit): Response
    {
        return $this->render('catalogue/details.html.twig', [
            'produit' => $produit
        ]);
    }
}