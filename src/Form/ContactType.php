<?php

namespace App\Form;

use App\Entity\Contact;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ContactType extends AbstractType
{
    protected static $sujet = array('Subject A', 'Subject B', 'Subject C');

    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder

            ->add('name', TextType::class)
            ->add('mail',  TextType::class,)
            ->add('sujet', ChoiceType::class, [
                'choices' => [
                    'Je suis fatiguée' => 'Subject A',
                    'Je veux un câlin' => 'Subject B',
                    'Autres' => 'Subject C'
                ],
            ])
            ->add('message', TextareaType::class, [
                'trim'=>true,
            ])
       ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Contact::class,
        ]);
    }
}
