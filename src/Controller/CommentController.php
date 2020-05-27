<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/comment")
 */
class CommentController extends AbstractController
{
  
   /**
     * @Route("/{id}/edit", name="comment_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Comment $comment, Article $article): Response
    {
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
        $idArt= $comment->getArticle()->getId();
        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            
            
            return $this->redirectToRoute('article_show',['id'=>$idArt]);
            $this->addFlash('success', 'Commentaire ajouté ;)');
        }

        return $this->render('comment/edit.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="comment_delete", methods={"DELETE"})
     *
     */
    public function delete(Request $request, Comment $comment,Article $article): Response
    {
        $idArt= $comment->getArticle()->getId();

        if ($this->isCsrfTokenValid('delete' . $comment->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($comment);
            $entityManager->flush();
        }
        return $this->redirectToRoute(
            "article_show",['id'=>$idArt]
        );
    }
}
