<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserEditType;
use App\Form\UserMailEdit;
use App\Form\UserPasswordEdit;
use App\Form\UserType;
use App\Repository\CommandeRepository;
use App\Repository\JeuRepository;
use App\Repository\UserRepository;
use Symfony\Component\Security\Core\User\UserInterface;
use App\Model\ChangePassword;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\FormError;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

/**
 * @Route("/user")
 */
class UserController extends AbstractController
{
    /**
     * @Route("/", name="user_index", methods={"GET"})
     */
    public function index(UserRepository $userRepository): Response
    {
        return $this->render('user/index.html.twig', [
            'users' => $userRepository->findAll(),
            
        ]);
    }

    /**
     * @Route("/new", name="user_new", methods={"GET","POST"})
     */
    public function new(Request $request,UserPasswordEncoderInterface $passwordEncoder): Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $user->setPassword(
                $passwordEncoder->encodePassword(
                    $user,
                    $form->get('password')->getData()
                )
            );
            $entityManager->persist($user);
            $entityManager->flush();

            return $this->redirectToRoute('user_index');
        }

        return $this->render('user/new.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="user_show", methods={"GET"})
     */
    public function show(User $user, CommandeRepository $cmdRepo, JeuRepository $jeuRepo): Response
    {
        $score = $jeuRepo->orderScore();
        return $this->render('user/show.html.twig', [
            'user' => $user,
            'commandes' => $cmdRepo->findAll(),  
            'score' => $score

        ]);
    }

    /**
     * @Route("/admin/{id}/edit", name="user_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, User $user): Response
    {
        $form = $this->createForm(UserEditType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('user_index');
        }

        return $this->render('user/edit.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}/mail_edit", name="user_edit_mail", methods={"GET","POST"})
     */
    public function editMail(Request $request, User $user): Response
    {
        $form = $this->createForm(UserMailEdit::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('user_index');
        }

        return $this->render('user/mail_edit.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }

        /**
     * @Route("/{id}/password_edit", name="user_edit_password", methods={"GET","POST"})
     */
    /*public function editPassword(Request $request, User $user): Response
    {
        $form = $this->createForm(UserPasswordEdit::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('user_index');
        }

        return $this->render('user/password_edit.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }*/

            /**
     * @Route("/{id}/password_edit", name="user_edit_password", methods={"GET","POST"})
     */
   /* public function editPassword(Request $request, UserPasswordEncoderInterface $passwordEncoder)

    {

    	$em = $this->getDoctrine()->getManager();

        $user = $this->getUser();

    	$form = $this->createForm(UserPasswordEdit::class, $user);

    	$form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

           

            $oldPassword = $user->getPassword();

            // Si l'ancien mot de passe est bon

            if ($passwordEncoder->isPasswordValid($user, $oldPassword)) {

                $newEncodedPassword = $passwordEncoder->encodePassword($user, $user->getPlainPassword());

                $user->setPassword($newEncodedPassword);

                

                $em->persist($user);

                $em->flush();

                $this->addFlash('notice', 'Votre mot de passe à bien été changé !');

                return $this->redirectToRoute('profile');

            } else {

                $form->addError(new FormError('Ancien mot de passe incorrect'));

            }

        }

    	

    	return $this->render('user/password_edit.html.twig', array(

    		'form' => $form->createView(),

    	));

    }*/

             /**
     * @Route("/{id}/password_edit", name="user_edit_password", methods={"GET","POST"})
     */
    public function editPassword(Request $request, UserPasswordEncoderInterface $passwordEncoder) {
        $this->denyAccessUnlessGranted('ROLE_USER');
        $em = $this->getDoctrine()->getManager();
        $user = $this->getUser();
        $changePassword = new ChangePassword();
        // rattachement du formulaire avec la class changePassword
        $form = $this->createForm(UserPasswordEdit::class, $changePassword);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
 
            $newpwd = $form->get('Password')['first']->getData();
 
            $newEncodedPassword = $passwordEncoder->encodePassword($user, $newpwd);
            $user->setPassword($newEncodedPassword);
 
            $em->flush();
            //$this->addFlash('notice', 'Votre mot de passe à bien été changé !');
 
            return $this->redirectToRoute('user_index');
        }
 
        return $this->render('user/password_edit.html.twig', array(
                    'form' => $form->createView(),
                    'user' => $user
        ));
    }
 


    /**
     * @Route("/{id}", name="user_delete", methods={"DELETE"})
     */
    public function delete(Request $request, User $user): Response
    {
        if ($this->isCsrfTokenValid('delete'.$user->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($user);
            $entityManager->flush();
        }

        return $this->redirectToRoute('homepage');
    }
}
