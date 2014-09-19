<?php
namespace Library\Entities;
class Acteurs extends \Library\Entity
{
	protected $idActeur;
	protected $nom;
	protected $sexe;
	protected $nationalite;
	
  // SETTERS //
  
	public function setIdActeur($idActeur)
	{
		$this->idActeur=$idActeur;
	}
	
  	public function setNom($nom)
  	{
      	$this->nom = $nom;
  	}
  
	public function setSexe($sexe)
	{
		$this->sexe = $sexe;
	}	
	
	public function setNationalite($nationalite)
	{
		$this->nationalite = $nationalite;
	}
	
	// GETTERS //
	
	public function idActeur()
	{
		return $this->idActeur;
	}
	
	public function nom()
	{
		return $this->nom;
	}
	
	public function sexe()
	{
		return $this->sexe;
	}
	
	public function nationalite()
	{
		return $this->nationalite;
	} 
}