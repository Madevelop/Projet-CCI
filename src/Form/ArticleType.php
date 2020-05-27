<?php

namespace App\Form;

use App\Entity\Article;
use Doctrine\DBAL\Types\TextType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichImageType;
use Symfony\Component\Form\Extension\Core\Type\TextType as TypeTextType;
use Symfony\Component\Validator\Constraints\Length;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre')
            ->add('resume', TypeTextType::class, [
                // instead of being set onto the object directly,
                // this is read and encoded in the controller
                'constraints' => [

                    new Length([
                        'min' => 6,
                        'minMessage' => 'Plus de mot pour le résumé',
                       
                        'max' => 255,
                        'maxMessage' => 'moins de mots stp',
                    ]),
                ]
            ])
            ->add('contenu')
            ->add('imageFile', VichImageType::class, [
                'required' => false
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
