<?php

namespace App\EventListener;

use Doctrine\ORM\EntityManagerInterface;
use App\Entity\User;
use App\Repository\UserRepository;
use DateTime;
use Symfony\Component\Security\Core\Event\AuthenticationEvent;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Contracts\EventDispatcher\Event;
use Symfony\Component\HttpFoundation\Request;

class LoginListener {
    private $em;
    private $request;
    private $targetUser;
    private $token;
    public function __construct(EntityManagerInterface $em, Request $request, UserInterface $targetUser, TokenInterface $token = null) {
        $this->em = $em;
        $this->request = $request;
        $this->targetUser = $targetUser;
        $this->token = $token;
    }
    
    public function onSecurityAuthenticationSuccess(AuthenticationEvent $event) {
        $user = $event->getAuthenticationToken()->getUser();

        $this->addFlash('notice', 'Mail envoyé');

        $this->em->persist($user);
        $this->em->flush();
    }
        
    
}