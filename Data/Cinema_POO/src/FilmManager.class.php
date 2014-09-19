<?php
class FilmManager
{
	private $_db;//instance de PDO
	
	public function __construct($db)
	{
		$this->setDb($db);
	}
	
	public function setDb(PDO $db)
	{
		$this->_db = $db;
	}
	
	public function get($id)
	{
		//execute une requete de type select avec clause WHERE et retourn un objet Film
		$id = (int)$id;
		$req = $this->_db->query('SELECT Nr_film,Titre,Synopsis,Affiche FROM new_film WHERE nr_film='.$id);
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		
		return new Film($donnees);
	}
	
	public function add(Film $film)
	{
		//Préparation de la requête d'insertion
		//Assignation des valeurs pour le titre, le synopsis, l'affiche ...
		//Exécution de la requête
	}
	
	public function update(Film $film)
	{
		
	}	
}
?>