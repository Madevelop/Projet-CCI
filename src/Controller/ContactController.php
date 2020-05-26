<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class ContactController extends AbstractController
{

    /**
     * @Route("/contact", name="contact", methods={"GET","POST"})   
     */
    public function index(): Response
    {
        if (!empty($_POST['submitted'])) {

            // faille XSS
            $pseudo = trim(strip_tags($_POST['pseudo']));
            $email = trim(strip_tags($_POST['email']));
            $sujet = trim(strip_tags($_POST['sujet']));
            $message = trim(strip_tags($_POST['message']));


            if (isset($pseudo) && isset($email) && isset($sujet) && isset($message)) {

                //message de l'utilisateur

                $to        = 'mvsq.wordlescape@gmail.com';
                $subject   = 'Inscription';
                $message   = 'Bonjour ' . $pseudo . ', nous vous répondrons dès que possible';
                $headers   = 'from :' . $email . 'X-Mailer: PHP/' . phpversion();

                mail($to,  $subject,  $message, $headers);


                //message de l'Admin

                $to        =  $email;
                $subject   = 'Inscription';
                $messageConfirmation   = 'Bonjour ' . $pseudo  . ', nous vous répondrons dès que possible';
                $headers   = 'from :mvsq.wordlescape@gmail.com' . 'X-Mailer: PHP/' . phpversion();

                mail($to,  $subject,  $messageConfirmation, $headers);

                $this->addFlash('notice', 'Mail envoyé');

                return $this->redirectToRoute('homepage');

                /*
                Vue du message envoyé par l'utilisateur
                return $this->render('contact/_admin.html.twig', [
                    'contactUser' =>  $message,
                    'contactAdmin' => $messageConfirmation,
                ]);
                */
            } else {
                echo 'remplir tt les champs';
            }
        }
        return $this->render('contact/index.html.twig');
    }
}
