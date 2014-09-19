<?php
namespace Applications\Frontend\Modules\Films;

class FilmsController extends \Library\BackController
{
	public function executeIndex(\Library\HTTPRequest $request)
	{

		$annee = $this->app->formSearch()->getAttribute('annee');
		//print_r('année de recherche = '.$annee.'<br>');
		
		// On ajoute une définition pour le titre.
		$this->page->addVar('title', 'Mon Cinéma');

		// On récupère le manager des news.
		$manager = $this->managers->getManagerOf('Films');

		// Cette ligne, vous ne pouviez pas la deviner sachant qu'on n'a pas encore touché au modèle.
		// Contentez-vous donc d'écrire cette instruction, nous implémenterons la méthode ensuite.
		$listeFilms = $manager->getList($annee);
		
		// On ajoute la variable $listeNews à la vue.
		$this->page->addVar('listeFilms', $listeFilms);
	}
	
	public function executeShow(\Library\HTTPRequest $request)
	{
		//print_r($request->getData('id'));
		$film = $this->managers->getManagerOf('Films')->getUnique($request->getData('id'));
		//var_dump($film);
		if (empty($film))
		{
			$this->app->httpResponse()->redirect404();
		}
	
		$this->page->addVar('title', $film->titre());
		$this->page->addVar('film', $film);
	}
	
}