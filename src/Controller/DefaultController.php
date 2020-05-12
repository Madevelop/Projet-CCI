<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{
    /**
     * @Route("/", name="homepage")
     */
    public function index()
    {
        return $this->render('default/index.html.twig', [
            'controller_name' => 'DefaultController',
        ]);
    }
    /**
     * @Route("/contact", name="contact")
     */
    public function contact()
    {
        return $this->render('default/contact.html.twig', [
        ]);
    }
    /**
     * @Route("/mentions", name="mentions")
     */
    public function mentions()
    {
        return $this->render('default/mentions.html.twig', [
        ]);
    }
}
