<?php
namespace Library\Models;
use \Library\Entities\Films;
abstract class FilmsManager extends \Library\Manager
{
  /**
   * Méthode retournant une liste de news demandée.
   * @param $debut int La première news à sélectionner
   * @param $limite int Le nombre de news à sélectionner
   * @return array La liste des news. Chaque entrée est une instance de News.
   */
  abstract public function getList($annee=2012);
  
  /**
   * Méthode retournant les informations d'un film.
   * @param $id int l'identifiant du film
   * @return resource l'objet \Library\Entities\Films.
   */
  abstract public function getUnique($id);
  
}