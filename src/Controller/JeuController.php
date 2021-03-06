<?php

namespace App\Controller;


use App\Entity\Jeu;
use App\Form\JeuType;
use App\Repository\JeuRepository;
use Doctrine\Common\Persistence\ObjectManager;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/jeu")
 */
class JeuController extends AbstractController
{
    /**
     * @Route("/", name="jeu_index", methods={"GET"})
     */
    public function index(JeuRepository $jeuRepo, Request $request, PaginatorInterface $paginator): Response
    {
        $score = $paginator->paginate(
            $jeuRepo->orderScore(),
            $request->query->getInt('page', 1),
            4
        );
        $user = $this->getUser();
        $scoreUser = $jeuRepo->maxUserScore($user);
        $rankUser = $jeuRepo->userRank();

       // $rankUser = array_search($user->toArray(), $scoreRank->toArray());
      // $rankUser = $jeuRepo->userRank($user);
     
       // $score = $jeuRepo->orderScore();
        return $this->render('jeu/index.html.twig', [
            'score' => $score,
            'rankUser' => $rankUser,
            'userSelect' => $user,
            'scoreUser' => $scoreUser
        ]);
    }

        /**
     * @Route("/lol", name="jeu_lol", methods={"GET", "POST"})
     */
    /*public function score(JeuRepository $jeuRepo)
    {
        
        $score = $jeuRepo->orderScore();
        return $this->render('jeu/test.html.twig', [
            'score' => $score
        ]);
    }*/

    /**
     * @Route("/new", name="jeu_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $jeu = new Jeu();
        $form = $this->createForm(JeuType::class, $jeu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid() )  {
           /* $entityManager = $this->getDoctrine()->getManager();
           // $jeu->setUser($this->getUser());
            $entityManager->persist($jeu);
            $entityManager->flush();*/

            return $this->redirectToRoute('jeu_index');
        }

        return $this->render('jeu/new.html.twig', [
            'jeu' => $jeu,
            'form' => $form->createView(),
        ]);
    }

    
    /**
     * @Route("/{id}", name="jeu_show", methods={"GET"})
     */
    public function show(Jeu $jeu): Response
    {
        return $this->render('jeu/show.html.twig', [
            'jeu' => $jeu,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="jeu_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Jeu $jeu): Response
    {
        $form = $this->createForm(JeuType::class, $jeu);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('jeu_index');
        }

        return $this->render('jeu/edit.html.twig', [
            'jeu' => $jeu,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="jeu_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Jeu $jeu): Response
    {
        if ($this->isCsrfTokenValid('delete'.$jeu->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($jeu);
            $entityManager->flush();
        }

        return $this->redirectToRoute('jeu_index');
    }


}
