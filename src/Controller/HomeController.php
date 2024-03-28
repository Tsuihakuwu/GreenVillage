<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Form\ContactFormType;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(): Response
    {
        // $this->addFlash('notice', 'Hello world');        
        return $this->render('pages/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    #[Route('/conditions', name: 'app_conditions')]
    public function conditions(): Response
    {
        return $this->render('pages/conditions.html.twig', [
            'controller_name' => 'ConditionsController',
        ]);
    }

    #[Route('/confidentialite', name: 'app_confidentialite')]
    public function confidentialite(): Response
    {
        return $this->render('pages/confidentialite.html.twig', [
            'controller_name' => 'ConfidentialiteController',
        ]);
    }

    #[Route('/cgv', name: 'app_cgv')]
    public function cgv(): Response
    {
        return $this->render('pages/cgv.html.twig', [
            'controller_name' => 'CgvController',
        ]);
    }

    #[Route('/contact', name: 'app_contact')]
    public function contact(Request $request): Response
    {
        $form = $this->createForm(ContactFormType::class);
        return $this->render('pages/contact.html.twig', [
                'form' => $form->createView(),
        ]);
    }

    #[Route('/legal', name: 'app_legal')]
    public function legal(): Response
    {
        return $this->render('pages/legal.html.twig', [
            'controller_name' => 'LegalController',
        ]);
    }
}
