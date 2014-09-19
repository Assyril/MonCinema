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
		//exécute une requête de type SELECT avec clause WHERE et retourne un objet Film
		$id = (int)$id;
		$req = $this->_db->query('SELECT Nr_film,Titre,Synopsis,Affiche FROM film WHERE nr_film='.$id);
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		
		return new Film($donnees);
	}
	
	public function add(Film $film)
	{
		//Préparation de la requête d'insertion
		//Assignation des valeurs pour le titre, le synopsis, l'affiche ...
		//Exécution de la requête
		$req = $this->_db->prepare('INSERT INTO film set Titre=:titre, Synopsis=:synopsis, Affiche=:affiche,DVD=0,Date_Modif_Film="2055-01-01"');
		$req->bindValue(':titre', $film->titre());
		$req->bindValue(':synopsis',$film->synopsis());
		$req->bindValue(':affiche',$film->affiche());
		$req->execute();
	}
	
	public function update(Film $film)
	{
		
	}
	
	public function getFilmsbyYear($annee)
	{
		$req = $this->_db->query('SELECT film.Nr_film,Titre,Synopsis,Affiche,Note_Film FROM film join note on film.Nr_Film=note.Nr_Film WHERE year(Date_Vu)='.$annee.' and Nr_Cinephile=1');
		$donnees = $req->fetch(PDO::FETCH_ASSOC);
		print_r($donnees);
		
	}
}
?>