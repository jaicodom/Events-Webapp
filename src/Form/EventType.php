<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;


class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, array("attr" => ["class" => "form-control my-2"]))
            ->add('description', null, array("attr" => ["class" => "form-control my-2"]))
            ->add('image', FileType::class, [
                'label' => 'Picture (jpg, jpeg or png)',
                'mapped' => false,
                'required' => false,
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/jpg',
                            'image/jpeg',
                            'image/png',
                        ],
                        'mimeTypesMessage' => 'Please upload a valid image file',
                    ])
                ], "attr" => ["class" => "form-control my-2"]
            ])
            ->add('capacity', null, array("attr" => ["class" => "form-control my-2"]))
            ->add('email', null, array("attr" => ["class" => "form-control my-2"]))
            ->add('phone_number', null, array("attr" => ["class" => "form-control my-2"]))
            ->add('url', null, array("attr" => ["class" => "form-control my-2"]))
            ->add(
                'type',
                ChoiceType::class,
                ["choices" => [
                    'Opera' => "Opera",
                    'Music' => "Music",
                    'Sport' => "Sport",
                    'Movie' => "Movie",
                    'Theater' => "Theater",

                ], "attr" => ["class" => "form-control my-2"]]
            )
            ->add('address', null, array("attr" => ["class" => "form-control my-2"]))
            ->add('date', null, array("attr" => ["class" => "form-control my-2"]));
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
