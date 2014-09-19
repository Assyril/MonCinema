<?php
namespace Library\Entities;
class Origines extends \Library\Entity
{
	protected $idOrigine;
	protected $nom;
	
  // SETTERS //
  
	public function setIdOrigine($idOrigine)
	{
		$this->idOrigine=$idOrigine;
	}
	
  	public function setNom($nom)
  	{
      	$this->nom = $nom;
  	}
  
	// GETTERS //
	
	public function idOrigine()
	{
		return $this->idOrigine;
	}
	
	public function nom()
	{
		return $this->nom;
	}
	
}