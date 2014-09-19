<?php
namespace Library\Models;
use \Library\Entities\Films;
use \Library\Entities\Note;
use \Library\Entities\Acteurs;
use \Library\Entities\Realisateurs;
use \Library\Entities\Origines;
use Library\Entities\Genres;
class FilmsManager_PDO extends FilmsManager
{
	public function getList($annee=2012)
  	{
    	$sql = 'SELECT film.Nr_film as idFilm,Titre,Synopsis,Affiche,Note_Film,Date_vu FROM film join note on film.Nr_Film=note.Nr_Film WHERE year(Date_Vu)='.$annee.' and Nr_Cinephile=1';

	    $requete = $this->dao->query($sql);
	    $Notes= array();
	    $requete->setFetchMode(\PDO::FETCH_ASSOC);  
	    
	    while (($row = $requete->fetch()) !== false)
	    {
		   	$film = new Films();
	    		$film->setidFilm($row['idFilm']);
	    		$film->setTitre($row['Titre']);
	    		$film->setAffiche($row['Affiche']);
	    		$film->setSynopsis($row['Synopsis']);
	    	$note = new Note();
	    		$note->setDate_vu($row['Date_vu']);
	    		$note->setNote_Film($row['Note_Film']);
	    		$note->setFilms($film);
	    	$Notes[] = $note;
	    } 
	    $requete->closeCursor();
	       
	    return $Notes;
  	}
  	
  	public function getUnique($id)
  	{
  		// les 'as' sont obligatoire pour faire correspondres les champs de la BDD et les propriétés de l'objet
  		$requete = $this->dao->prepare('SELECT Nr_film as idFilm, Titre as titre,Synopsis as synopsis,Affiche as affiche FROM film WHERE Nr_film= :id');
  		$requete->bindValue(':id', (int) $id, \PDO::PARAM_INT);
  		$requete->execute();

   		$requete->setFetchMode(\PDO::FETCH_CLASS, '\Library\Entities\Films');
  	
  		$film = $requete->fetch();
  		$requete->closeCursor();

  		if ($film) 
  		{
  			//Requête pour remplir le tableau d'acteurs ayant interpréter ce film.
	  		$requete = $this->dao->prepare('SELECT acteurs.Nr_Individus as idActeur,Nom_Individu,Sexe
											FROM film
											join est_interpreter_par on film.Nr_Film = est_interpreter_par.Nr_Film
											join acteurs on est_interpreter_par.Nr_individus = acteurs.Nr_individus
											join individus on acteurs.Nr_individus = individus.Nr_individus
											WHERE film.Nr_film= :id');
	  		$requete->bindValue(':id', (int) $id, \PDO::PARAM_INT);
	  		$requete->execute();
	  		$requete->setFetchMode(\PDO::FETCH_ASSOC);
	  		$Acteurs = array(); 
	  		
	  		while (($row = $requete->fetch()) !== false)
	  		{
	  			$acteur = new Acteurs();
	  				$acteur->setIdActeur($row['idActeur']);
	  				$acteur->setNom($row['Nom_Individu']);
	  				$acteur->setSexe($row['Sexe']);
	  			$Acteurs[]=$acteur;
	  		}
	  		$requete->closeCursor();
	  		
			$film->setActeurs($Acteurs);
	  		//var_dump($film);
	  		
			
			//Requête pour remplir le tableau de réalisateurs ayant réaliser ce film.
			$requete = $this->dao->prepare('SELECT realisateurs.Nr_Individus as idRealisateur,Nom_Individu,Sexe
											FROM film
											join est_realise_par on film.Nr_Film = est_realise_par.Nr_Film
											join realisateurs on est_realise_par.Nr_individus = realisateurs.Nr_individus
											join individus on realisateurs.Nr_individus = individus.Nr_individus
											WHERE film.Nr_film= :id');
			$requete->bindValue(':id', (int) $id, \PDO::PARAM_INT);
			$requete->execute();
			$requete->setFetchMode(\PDO::FETCH_ASSOC);
			$Realisateurs = array();
			 
			while (($row = $requete->fetch()) !== false)
			{
				$realisateur = new Realisateurs();
				$realisateur->setIdRealisateur($row['idRealisateur']);
				$realisateur->setNom($row['Nom_Individu']);
				$realisateur->setSexe($row['Sexe']);
				$Realisateurs[]=$realisateur;
			}
			$requete->closeCursor();
			 
			$film->setRealisateurs($Realisateurs);
			//var_dump($film);
					
	  		
			//Requête pour remplir le tableau des origines de ce film.
			$requete = $this->dao->prepare('SELECT nationalites.Nr_Nation as idOrigine,Nom
											FROM film
											join est_d_origine on film.Nr_Film = est_d_origine.Nr_Film
											join nationalites on est_d_origine.Nr_Nation = nationalites.Nr_Nation
											WHERE film.Nr_film= :id');
			$requete->bindValue(':id', (int) $id, \PDO::PARAM_INT);
			$requete->execute();
			$requete->setFetchMode(\PDO::FETCH_ASSOC);
			$Origines = array();
			 
			while (($row = $requete->fetch()) !== false)
			{
				$origine = new Origines();
				$origine->setIdOrigine($row['idOrigine']);
				$origine->setNom($row['Nom']);
				$Origines[]=$origine;
			}
			$requete->closeCursor();
			 
			$film->setOrigines($Origines);
			//var_dump($film);
					
			//Requête pour remplir le tableau des genres de ce film.
			$requete = $this->dao->prepare('SELECT genre.Id_Genre as idGenre,Nom_Genre
											FROM film
											join est_classe_dans_le on film.Nr_Film = est_classe_dans_le.Nr_Film
											join genre on est_classe_dans_le.Id_Genre = genre.Id_Genre
											WHERE film.Nr_film= :id');
			$requete->bindValue(':id', (int) $id, \PDO::PARAM_INT);
			$requete->execute();
			$requete->setFetchMode(\PDO::FETCH_ASSOC);
			$Genres = array();
			 
			while (($row = $requete->fetch()) !== false)
			{
				$genre = new Genres();
				$genre->setIdGenre($row['idGenre']);
				$genre->setNom_Genre($row['Nom_Genre']);
				$Genres[]=$genre;
			}
			$requete->closeCursor();
			 
			$film->setGenres($Genres);
			//var_dump($film);
					
			return $film;
	  	}
  		return null;  		
  	}	 
}
