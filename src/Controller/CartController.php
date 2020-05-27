<?php

namespace App\Controller;

use App\Repository\CommandeRepository;
use App\Repository\ProduitRepository;
use App\Repository\UserRepository;
use App\Entity\Commande;
use App\Entity\User;
use App\Entity\Produit;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
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
       
        //dd($panierWithData[0]);
        $total = 0;
        foreach ($panierWithData as $item) {
            $totalItem = $item['produit']->getPrix() * $item['quantité'];
            $total += $totalItem;
        }
        return $this->render('cart/index.html.twig', [
            'items' => $panierWithData,
            'total' => $total,
            
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


      /**
     * @Route("/buycart/{id}", name="cart_buy")
     */
   /* public function buyCart($id, SessionInterface $session, Produit $produit, CommandeRepository $cmdRepo, ProduitRepository $produitRepository, UserRepository $userRepo) {
        $panier = $session->get('panier', []);
        $user = $this->getUser();
        $bp = $userRepo->bpUser($user);

        $panierWithData = [];
        foreach ($panier as $id => $quantity) {
            $panierWithData []= [
                'produit' => $produitRepository->find($id),
                'quantité' => $quantity
            ];
        }
        $total = 0;
        foreach ($panierWithData as $item) {
            $totalItem = $item['produit']->getPrix() * $item['quantité'];
            $total += $totalItem;
            
            $bp = intval($bp);
            dd($item);
            dd($panierWithData[$key]['produit']->getId());
       if ($bp > $total) {

       
        $cmd        = new Commande();
        $em         = $this->getDoctrine()->getManager();
        $cmd        ->setQuantity($item['quantité']);
        $cmd        ->setUser($user);
        $cmd        ->addProduit($produit);
        $em         ->persist($cmd);
        $em         ->flush();
        unset($panier[$id]);
    } else {
       
    }
    return $this->render('cart/index.html.twig', [
        'items' => $panierWithData,
        'total' => $total,
        
    ]);
        $session->set('panier', $panier);
        return $this->redirectToRoute('cart_index');
    }
    
}*/

      /**
     * @Route("/buycart/{id}", name="cart_buy")
     */
    public function buyCart($id, SessionInterface $session, Produit $produit, CommandeRepository $cmdRepo, ProduitRepository $produitRepository, UserRepository $userRepo, Request $req) {
      
        
        
        

        $panier = $session->get('panier', []);
        $user = $this->getUser();
        $bp = $userRepo->bpUser($user);
   
        $panierWithData = [];
        foreach ($panier as $id => $quantity) {
            $panierWithData []= [
                'produit' => $produitRepository->find($id),
                'quantité' => $quantity,
            ];
          
            
        }
        $req = $req->query->get('id');
       
        
        
        
       
        $total = 0;
        foreach ($panierWithData  as $item) {
        
            $totalItem = $item['produit']->getPrix() * $item['quantité'];
            $total += $totalItem;
           // $lol = $item['produit']->getId($panier);
            
            $bp = intval($bp);
        $newBp = $bp - $totalItem;
 
        $userRepo   ->userBp($user, $newBp);
        $cmd        = new Commande();
        $em         = $this->getDoctrine()->getManager();
        $cmd        ->setQuantity($item['quantité']);
        $cmd        ->setUser($user);
        $cmd        ->addProduit($produit);
        $em         ->persist($cmd);
        $em         ->flush();
        $this->addFlash('success', 'Achat effectué !');
        unset($panier[$id]);


        $session->set('panier', $panier);
        return $this->redirectToRoute('cart_index');
    }
    
}
}
