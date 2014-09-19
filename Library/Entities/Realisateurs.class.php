<?php
namespace Library\Entities;
class Realisateurs extends \Library\Entity
{
	protected $idRealisateur;
	protected $nom;
	protected $sexe;
	protected $nationalite;
	
  // SETTERS //
  
	public function setIdRealisateur($idRealisateur)
	{
		$this->idRealisateur=$idRealisateur;
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
	
	public function idRealisateur()
	{
		return $this->idRealisateur;
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