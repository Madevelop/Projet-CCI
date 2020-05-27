<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('email')
            ->add('roles', ChoiceType::class,
                array(
                    'choices' =>
                        array(
                            'USER' => 'ROLE_USER',
                            'ADMIN' => 'ROLE_ADMIN',
                            'SUPER_ADMIN' => 'ROLE_SUPER_ADMIN',
                        ),
                        'expanded'  => true,
                        'multiple' => true
                    )
                )
            ->add('password')
            ->add('pseudo')
            ->add('age')
            ->add('bp')
            ->add('avatar')
            ->add('pays')
            ->add('token')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
