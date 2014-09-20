<?php
namespace Library\Entities;

use \Library\Entities\Acteurs;
use \Library\Entities\Realisateurs;
use \Library\Entities\Origines;
use \Library\Entities\Genres;

class Films extends \Library\Entity
{
	protected $idFilm;
	protected $titre;
	protected $synopsis;
	protected $affiche;
	
	protected $acteurs;
	protected $realisateurs;
	protected $origines;
	protected $genres;
	
  // SETTERS //
  
	public function setIdFilm($idFilm)
	{
		$this->idFilm=$idFilm;
	}
	
  	public function setTitre($titre)
  	{
      	$this->titre = $titre;
  	}
  
	public function setSynopsis($synopsis)
	{
		$this->synopsis = $synopsis;
	}	
	
	public function setAffiche($affiche)
	{
		$this->affiche = $affiche;
	}
	
	public function setActeurs($acteurs)
	{
		$this->acteurs = $acteurs;
	}
	
	public function setRealisateurs($realisateurs)
	{
		$this->realisateurs = $realisateurs;
	}
	
	public function setOrigines($origines)
	{
		$this->origines = $origines;
	}
	
	
	public function setGenres($genres)
	{
		$this->genres = $genres;
	}
	
	// GETTERS //
	
	public function idFilm()
	{
		return $this->idFilm;
	}
	
	public function titre()
	{
		return $this->titre;
	}
	
	public function synopsis()
	{
		return $this->synopsis;
	}
	
	public function affiche()
	{
		return $this->affiche;
	} 

	public function acteurs()
	{
		return $this->acteurs;
	} 

	public function realisateurs()
	{
		return $this->realisateurs;
	} 
	
	public function origines()
	{
		return $this->origines;
	} 
	
	public function genres()
	{
		return $this->genres;
	} 
	
}