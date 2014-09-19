<?php
abstract class Individus
{
	protected $_nom;
	protected $_sexe;

	//Cette méthode va ajouter un individus à la table Individus
	//les methodes des class filles devra donc insérer une entrée dans la table fille et une entrée dans la table Individus
	// ex: INSERT INTO acteurs (Nr_Individus,Nr_Nation) values (x,y)
	//		INSERT INTO individus (Nr_Individus,Nom_Individus,Sexe) values (x,'abcdef','H|F')
	abstract public function AddIndiv();

	//Cette méthode va modifier un Individus dans la table Individus et la table fille
	// ex: UPDATE acteurs SET Nr_Nation=y 
	//		UPDATE Individus SET Nom_Individus='abcdef', SET Sexe='F'
	abstract public function ChangeIndiv();
	
	//Cette méthode est commune à toute les classe filles et ne pourra être modifié par celles ci
	final public function ShowIndiv()
	{
		
	}
	
	//méthode getter
	public function nom()	{		return $this->_nom;	}
	public function sexe()	{		return $this->_sexe;}
	
	//méthode setter $_nom
	public function setNom($name)
	{
		$this->_nom = $name;
	}
	
	//méthode setter $_sexe
	public function setSexe($sex)
	{
		$this->_sexe = $sex;
	}
}
?>
