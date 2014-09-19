<?php
namespace Library\Entities;
class Genres extends \Library\Entity
{
	protected $idGenre;
	protected $nom_Genre;
	
  // SETTERS //
  
	public function setIdGenre($idGenre)
	{
		$this->idGenre=$idGenre;
	}
	
  	public function setNom_Genre($nom)
  	{
      	$this->nom_Genre = $nom;
  	}
  
	// GETTERS //
	
	public function idGenre()
	{
		return $this->idGenre;
	}
	
	public function nom_Genre()
	{
		return $this->nom_Genre;
	}
	
}