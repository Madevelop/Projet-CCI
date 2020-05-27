<?php

namespace App\Controller;

use App\Entity\Jeu;
use App\Entity\User;
use App\Form\JeuType;
use App\Repository\CommandeRepository;
use App\Repository\JeuRepository;
use App\Repository\UserRepository;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\User\UserInterface;

class WorldEscapeController extends AbstractController
{
    /**
     * @Route("/profil/worldescape", name="world_escape")
     */
    public function index(CommandeRepository $cmdRepo, UserInterface $user)
    {
      /*  $user = $user->getId();
        $userCmd = $cmdRepo->UserCmd($user);
        dd($userCmd);*/
        return $this->render('world_escape/index.html.twig', [
            'controller_name' => 'WorldEscapeController',
        ]);
    }

        /**
     * @Route("/graph", name="world_graph")
     */
    public function graph(JeuRepository $jeuRepo)
    {
        $score = $jeuRepo->orderScore();
        return $this->render('world_escape/graph.html.twig', [
            'score' => $score
        ]);
    }

    /**
     * @Route("/ajax", name="ajax_action")
     *NEW OK
     */
    /*public function ajaxAction(Request $request, JeuRepository $jeuRepo, Jeu $jeu)
{
    // on récupère la valeur envoyée 
    $user = $this->getUser();
    $idSelect = $request->request->get('idSelect');
    $scoreUser = $jeuRepo->maxUserScore($user);

    if ($idSelect > $scoreUser){
    

    $score = new Jeu();
  
    $em = $this->getDoctrine()->getManager();
    $score->setScore($idSelect)
    ->setUser($this->getUser());
    $em->persist($score);
    $em->flush();

	// On renvoie une réponse encodée en JSON //
	$response = new Response(json_encode(array(
        'info' => $idSelect
    )));

    $response->headers->set('Content-Type', 'application/json');

    return $response;
} else {
    
}
return $this->render('world_escape/index.html.twig');
}*/

    /**
     * @Route("/ajax", name="ajax_action")
     *NEW OK
     */
    public function ajaxAction(JeuRepository $jeuRepo, Request $request, UserRepository $userRepo)
    {
        //récupération/attribution des données
        $user = $this->getUser();
        $idSelect = $request->request->get('idSelect');
        $scoreUser = $jeuRepo->maxUserScore($user);
      
        
        $newBp = $userRepo->bpUser($user);
       // $newBp = 50;
        $newBp +=  + 50;
        if ($idSelect > $scoreUser) {
            if ($jeuRepo->userScoreExist($user)) {

                $score      = $jeuRepo->findAll();
                $userRepo   ->userBp($user, $newBp);
                $jeuRepo    ->updateScore($user, $idSelect);

            } else {

                $score      = new Jeu();
                $em         = $this->getDoctrine()->getManager();
                $score      ->setScore($idSelect)
                            ->setUser($this->getUser());
                $em         ->persist($score);
                $em         ->flush();

                // On renvoie une réponse encodée en JSON 
                $response   = new Response(json_encode(array(
                    'info'  => $idSelect
                )));

                $response->headers->set('Content-Type', 'application/json');

                return $response;
            }
        } else {
            return $this->render('world_escape/index.html.twig');
        }
        return $this->render('world_escape/index.html.twig');
    }




}
