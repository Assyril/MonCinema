<?php
	class Acteur extends Individus
	{
		private $_nationalite;
		
		//méthode getter
		public function nationalite()	{		return $this->_nationalite;	}
		
		//méthode setter $_nationalite
		public function setNationalite($origin)
		{
			$this->_nationalite = $origin;
		}
		
		public function AddIndiv()
		{
			
		}
		
		public function ChangeIndiv()
		{
			
		}
	}
?>