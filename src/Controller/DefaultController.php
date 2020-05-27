<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ArticleRepository;
use App\Repository\ProduitRepository;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends AbstractController
{
    /**
     * @Route("/", name="homepage")
     */
    public function index(ArticleRepository $artRepo, ProduitRepository $prodRepo)
    {
        $article =  $artRepo->lastFourArticle();
        $produit = $prodRepo->lastFourProduit();
        return $this->render('default/index.html.twig', [
            'controller_name' => 'DefaultController',
            'articles' => $article,
            'produits' => $produit
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
