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
     * @Route("/apropos", name="apropos")
     */
    public function apropos()
    {
        return $this->render('default/apropos.html.twig', [
            'controller_name' => 'DefaultController',
        ]);
    }
    /**
     * @Route("/mentions", name="mentions")
     */
    public function mentions()
    {
        return $this->render('default/mentionslegales.html.twig', [
            'controller_name' => 'DefaultController',
        ]);
    }
}
