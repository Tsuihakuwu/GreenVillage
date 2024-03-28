<?php

namespace App\Controller;

use App\Repository\RubriqueRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class CatalogueController extends AbstractController
{
    #[Route('/catalogue', name: 'app_catalogue')]
    public function index(RubriqueRepository $rubrique): Response
    {
        $rubriques = $rubrique->findBy([ 'parent' => null ]);

        return $this->render('catalogue/index.html.twig', [
            'liste' => $rubriques,
        ]);
    }
}
