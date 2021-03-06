﻿<?php
class Film
{
	private $_Nr_Film;
	private $_Titre;
	private $_Synopsis;
	private $_Affiche;

	public function hydrate($donnees)
	{
		foreach ($donnees as $key=>$value)
		{
			//on récupère le nom du setter correspondant à l'attribut
			$method = 'set'.ucfirst($key);
			// Si le setter correspondant existe.
			if(method_exists($this, $method))
			{
				//on appelle le setter
				$this->$method($value);
			}
		}		
	}
	
	public function nr_film()	{		return $this->_Nr_Film;	}
	
	public function titre()		{		return $this->_Titre;	}
	
	public function synopsis()	{		return $this->_Synopsis;}
	
	public function affiche()	{		return $this->_Affiche;	}
	
	
	public function setNr_Film($idFilm)
	{
		$idFilm = (int)$idFilm;
		if (!is_int($idFilm))
		{
			trigger_error('L\'identifiant d\'un film doit être un entier',E_USER_WARNING);
			return;
		}
		$this->_Nr_Film=$idFilm;
	}
	
	public function setTitre($titreFilm)
	{
		//prévoir si il faut du code de contrôle la variable $titreFilm
		$this->_Titre=$titreFilm;
	}
	
	public function setSynopsis($histoire)
	{
		$this->_Synopsis=$histoire;
	}
	
	public function setAffiche($nomFichier)
	{
		$this->_Affiche=$nomFichier;
	}
	
	public function __construct(array $donnees)
	{
		$this->hydrate($donnees);
	}
}
?>
