<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use App\Repository\EventRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Service\FileUploader;
use Doctrine\Persistence\ManagerRegistry;

#[Route('/')]
class EventController extends AbstractController
{
    #[Route('/', name: 'app_event_index', methods: ['GET'])]
    public function index(EventRepository $eventRepository): Response
    {
        return $this->render('event/index.html.twig', [
            'events' => $eventRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_event_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EventRepository $eventRepository,  FileUploader $fileUploader): Response
    {
        $event = new Event();

        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var UploadedFile $brochureFile */

            $event = $form->getData();

            $image = $form->get('image')->getData();

            if ($image) {
                $imageName = $fileUploader->upload($image);
                $event->setimage($imageName);
            }

            $eventRepository->save($event, true);


            return $this->redirectToRoute('app_event_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('event/new.html.twig', [
            'event' => $event,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_event_show', methods: ['GET'])]
    public function show(Event $event): Response
    {
        return $this->render('event/show.html.twig', [
            'event' => $event,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_event_edit', methods: ['GET', 'POST'])]

    public function edit(Request $request, Event $event, EventRepository $eventRepository, FileUploader $fileUploader): Response
    {
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var UploadedFile $brochureFile */

            $event = $form->getData();

            $image = $form->get('image')->getData();

            if ($image) {
                $imageName = $fileUploader->upload($image);
                $event->setimage($imageName);
            }

            $eventRepository->save($event, true);

            return $this->redirectToRoute('app_event_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('event/edit.html.twig', [
            'event' => $event,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_event_delete', methods: ['POST'])]
    public function delete(Request $request, Event $event, EventRepository $eventRepository): Response
    {
        if ($this->isCsrfTokenValid('delete' . $event->getId(), $request->request->get('_token'))) {
            $eventRepository->remove($event, true);
        }

        return $this->redirectToRoute('app_event_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/event/music', name: 'music', methods: ['GET'])]
    public function music(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'Music']);


        return $this->render('event/music.html.twig', [
            'events' => $events,
        ]);
    }

    #[Route('/event/theater', name: 'theater', methods: ['GET'])]
    public function theater(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'theater']);


        return $this->render('event/theater.html.twig', [
            'events' => $events,
        ]);
    }
    #[Route('/event/opera', name: 'opera', methods: ['GET'])]
    public function opera(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'opera']);


        return $this->render('event/opera.html.twig', [
            'events' => $events,
        ]);
    }
    #[Route('/event/sport', name: 'sport', methods: ['GET'])]
    public function sport(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'sport']);


        return $this->render('event/sport.html.twig', [
            'events' => $events,
        ]);
    }
    #[Route('/event/movie', name: 'movie', methods: ['GET'])]
    public function movie(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'movie']);


        return $this->render('event/movie.html.twig', [
            'events' => $events,
        ]);
    }
}
