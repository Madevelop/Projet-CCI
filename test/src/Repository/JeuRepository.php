<?php

namespace App\Repository;

use App\Entity\Jeu;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Jeu|null find($id, $lockMode = null, $lockVersion = null)
 * @method Jeu|null findOneBy(array $criteria, array $orderBy = null)
 * @method Jeu[]    findAll()
 * @method Jeu[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class JeuRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Jeu::class);
    }

    // /**
    //  * @return Jeu[] Returns an array of Jeu objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('j')
            ->andWhere('j.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('j.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Jeu
    {
        return $this->createQueryBuilder('j')
            ->andWhere('j.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */

    public function orderScore(){

       /* $queryBuilder = $this->createQueryBuilder("s");
        $queryBuilder
        ->select('s')
        ->from(jeu::class, 's')
        ->orderBy("s.score", "desc");
        
        return $queryBuilder->getQuery()->getResult();*/

        return $this->createQueryBuilder('j')

            ->orderBy('j.score', 'DESC')
            ->getQuery()
            ->getResult()
    ;
    }

   /* public function maxUserScore($user){
         
         return $this->createQueryBuilder('j')
         
            ->select('MAX(j.score) AS max_score')
            ->where('j.user = :id')        
            ->setParameter('id', $user)
            ->getQuery()
            ->getResult()
            
     ;
     }*/

    /* public function maxUserScore($user, $idSelect){
         
        return $this->createQueryBuilder('j')
        
           ->update(Jeu::class, 'j')
           ->set('CASE WHEN j.score < :score) THEN :scoret ELSE j.score END')
           ->set('j.created_at', 'now()')
           ->where('j.user = :id')        
           ->setParameter('id', $user)
           ->setParameter('scoret', $idSelect)
           ->getQuery()
           ->getResult()
           
    ;
    }*/

    //NEW
    public function maxUserScore($user){
         
        return $this->createQueryBuilder('j')
        
           ->select('MAX(j.score)')
           ->where('j.user = :id')        
           ->setParameter('id', $user)
           ->getQuery()
           ->getSingleScalarResult()
           
    ;
    }
/*
    public function maxUserScore($user, $idSelect){
         
        return $this->createQueryBuilder('j')
        
           ->update('MAX(j.score)')
           ->where('j.user = :id')
           ->andWhere('j.score < :idSelect')
           ->setParameter('idSelect', $idSelect)        
           ->setParameter('id', $user)
           ->getQuery()
           ->getSingleScalarResult()
           
    ;
    }*/

    public function userScoreExist($user){
         
        return $this->createQueryBuilder('j')
        
           ->select('j.score')
           ->where('j.user = :id')        
           ->setParameter('id', $user)
           ->getQuery()
           ->getResult()
           
    ;
    }

    public function updateScore($user, $idSelect){
         
        return $this->createQueryBuilder('j')
        
           ->update(Jeu::class, 'j')
           ->set('j.score', ':newScore')
           ->set('j.created_at', ':now')
           ->where('j.user = :id')        
           ->setParameter('id', $user)
           ->setParameter('newScore', $idSelect)
           ->setParameter('now', new \DateTime('now'))
           ->getQuery()
           ->getResult()
           
    ;
    }

}
