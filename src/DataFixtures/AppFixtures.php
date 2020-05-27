<?php

namespace App\DataFixtures;

use App\Entity\Produit;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create();
        $faker->addProvider(new \Bezhanov\Faker\Provider\Commerce($faker));
        $faker->addProvider(new \Liior\Faker\Prices($faker));

        for ($i = 0; $i < 10; $i++) {
            $produit = new Produit();
            $produit->setNom($faker->productName)
                    ->setPrix($faker->price(20, 200))
                    ->setCategorie($faker->category())
                    ->setDescription($faker->description())
                    ->setImage($faker->imageUrl(400, 400));

            $manager->persist($produit);
        }

        $manager->flush();
    }
}
