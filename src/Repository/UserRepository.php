<?php

namespace App\Repository;

use App\Entity\User;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\Security\Core\Exception\UnsupportedUserException;
use Symfony\Component\Security\Core\User\PasswordUpgraderInterface;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * @method User|null find($id, $lockMode = null, $lockVersion = null)
 * @method User|null findOneBy(array $criteria, array $orderBy = null)
 * @method User[]    findAll()
 * @method User[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UserRepository extends ServiceEntityRepository implements PasswordUpgraderInterface
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, User::class);
    }

    /**
     * Used to upgrade (rehash) the user's password automatically over time.
     */
    public function upgradePassword(UserInterface $user, string $newEncodedPassword): void
    {
        if (!$user instanceof User) {
            throw new UnsupportedUserException(sprintf('Instances of "%s" are not supported.', \get_class($user)));
        }

        $user->setPassword($newEncodedPassword);
        $this->_em->persist($user);
        $this->_em->flush();
    }
    /**     
     * @return User[] Returns an array of User objects
     */
    public function findOneByToken($token)
    {
        return $this->findOneBy(array('token' => $token));
    }
    public function findOneByEmail($email)
    {
        return $this->findOneBy(array('email' => $email));
    }
    // /**
    //  * @return User[] Returns an array of User objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('u.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?User
    {
        return $this->createQueryBuilder('u')
            ->andWhere('u.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */

    /*public function userScoreExist($user){
         
        return $this->createQueryBuilder('u')
        
           ->select('u.bp')
           ->join('jeu', 'j')
           ->where('u.user = j.user_id')
           ->andWhere('u.user = j.user_id')        
           ->setParameter('id', $user)
           ->getQuery()
           ->getResult()
           
    ;
    }*/

    public function userBp($user, $newBp){
         
        return $this->createQueryBuilder('u')
        
           ->update(User::class, 'u')
           ->set('u.bp', ':newBp')
           ->where('u.id = :id')   
           ->setParameter('id', $user)
           ->setParameter('newBp', $newBp)
           ->getQuery()
           ->getResult()
           
    ;
    }

    public function bpUser($user){
         
        return $this->createQueryBuilder('u')
        
           ->select('MAX(u.bp)')
           ->where('u.id = :id')        
           ->setParameter('id', $user)
           ->getQuery()
           ->getSingleScalarResult()
           
    ;
    }

}
