<?php
namespace Library\Entities;
use \Library\Entities\Films;
class Note extends \Library\Entity
{
	protected $idNote;
	protected $note_Film;
	protected $date_vu;
	protected $films;
	//Il faudra corriger cela et mettre un tableau de Note dans Films
	
	// SETTERS //
	
	public function setIdNote($idNote)
	{
		$this->idNote=$idNote;
	}
	
	public function setDate_vu($date_vu)
	{
		$this->date_vu=$date_vu;
	}
	
	public function setFilms($films)
	{
		$this->films=$films;
	}
	
	public function setNote_Film($note_Film)
	{
		$this->note_Film=$note_Film;
	}
	
	// GETTERS //
	
	public function idNote()
	{
		return $this->idNote;
	}
	
	public function date_vu()
	{
		return $this->date_vu;
	}
	
	public function films()
	{
		return $this->films;
	}
	
	public function note_Film()
	{
		return $this->note_Film;
	}	
}