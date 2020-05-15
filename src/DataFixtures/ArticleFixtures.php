<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Article;


class ArticleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create();
        $author=\Faker\Factory::create();
        $faker->addProvider(new \BlogArticleFaker\FakerProvider($faker));
        $author->addProvider(new \Bezhanov\Faker\Provider\Species($author));
       
        
        for ($i=0 ; $i < 20; $i++) {
            $article = new Article();
            $article->setTitre($faker->articleTitle);
            $article->setContenu($faker->articleContentMarkdown);
            $article->setAuteur($author->creature);
            $article->setCreatedAt(new \DateTime());
            
            
            $manager->persist($article);
        }

        $manager->flush();
    }
}
