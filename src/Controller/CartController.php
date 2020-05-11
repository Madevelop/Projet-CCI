<?php

namespace App\Controller;

use App\Repository\ProduitRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/panier")
 */

class CartController extends AbstractController
{

     /**
     * @Route("/", name="cart_index")
     */
    public function index(SessionInterface $session, ProduitRepository $produitRepository)
    {
        $panier = $session->get('panier', []);
        $panierWithData = [];
        foreach ($panier as $id => $quantity) {
            $panierWithData []= [
                'produit' => $produitRepository->find($id),
                'quantité' => $quantity
            ];
        }
       
        //dd($panierWithData);
        $total = 0;
        foreach ($panierWithData as $item) {
            $totalItem = $item['produit']->getPrix() * $item['quantité'];
            $total += $totalItem;
        }
        return $this->render('cart/index.html.twig', [
            'items' => $panierWithData,
            'total' => $total
        ]);
    }
    /**
     * @Route("/add/{id}", name="cart_add")
     */
    public function add($id, SessionInterface $session)
    {
        $panier = $session->get('panier', []);
        if (!empty($panier[$id])) {
            $panier[$id]++;
        } else {
            $panier[$id] = 1;
        }
        $session->set('panier', $panier);

        return $this->redirectToRoute('cart_index'); 
    }
    /**
     * @Route("/remove/{id}", name="cart_remove")
     */
    public function remove($id, SessionInterface $session)
    {
        $panier = $session->get('panier', []);
        if (!empty($panier[$id])) {
            unset($panier[$id]); 
        }
        $session->set('panier', $panier);
        //dd($session->get('panier'))

        return $this->redirectToRoute('cart_index');

    }
}
