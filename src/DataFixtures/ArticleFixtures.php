<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Article;
use App\Entity\Comment;

class ArticleFixtures extends Fixture
{
    /**
     * @param ObjectManager $manager
     * @throws \Exception
     */
    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create();
        $author = \Faker\Factory::create();
        $faker->addProvider(new \BlogArticleFaker\FakerProvider($faker));
        $author->addProvider(new \Bezhanov\Faker\Provider\Species($author));


        for ($i = 0; $i < 20; $i++) {
            $article = new Article();
            $article->setTitre($faker->articleTitle);
            $article->setContenu($faker->articleContentMarkdown);
            $article->setAuteur($author->creature);
            $article->setCreatedAt(new \DateTime());

            $manager->persist($article);

            for ($j = 1; $j <= rand(5, 15); $j++) {
                $comment = new Comment();
                $comment->setAuthor("Auteur " . $i);
                $comment->setContent("Commentaire N°" . $j);
                $comment->setArticle($article);

                $manager->persist($comment);
            }
        }
        $manager->flush();
    }
}
