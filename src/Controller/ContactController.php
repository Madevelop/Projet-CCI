<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class ContactController extends AbstractController
{

    /**
     * @Route("/contact", name="contact", methods={"GET","POST"})
     *  
     */
    public function index(Request $request, \Swift_Mailer $mailer): Response
    {
        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);
        $pseudo = $contact->getName();


        if ($request->isMethod('POST')) {

            if ($form->isSubmitted() && $form->isValid()) {

                $entityManager = $this->getDoctrine()->getManager();
                $entityManager->persist($contact);
                $entityManager->flush();

                //message de l'utilisateur
                $message = (new \Swift_Message('Envie de nous dire quelques mots ? '))
                    ->setSubject($contact->getSujet())
                    ->setFrom($contact->getMail())
                    ->setTo('mvsq.wordlescape@gmail.com')
                    ->setBody(
                        $contact->getMessage()
                    );
                $mailer->send($message);

                //message de confirmation d'envoi du mail                
                $messageConfirmation = (new \Swift_Message(''))
                    ->setFrom('mvsq.wordlescape@gmail.com')
                    ->setTo($contact->getMail())
                    ->setBody(
                        $this->renderView(
                            'emails/_contact.html.twig',
                            ['name' => $pseudo]
                        )
                    );
                $mailer->send($messageConfirmation);
                
               return $this->redirectToRoute('homepage');
               
               /*Vue du message envoyé par l'utilisateur
               return $this->render('contact/_admin.html.twig', [
                    'contact' =>  $message,
                ]);*/
            }



            $this->addFlash('notice', 'Mail envoyé');
        }
        return $this->render('contact/index.html.twig', [
            'form' => $form->createView(),



        ]);
    
    }
}
