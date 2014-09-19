<?php
namespace Library;

class Page extends ApplicationComponent
{
  protected $contentFile;
  protected $vars = array();
  
  public function addVar($var, $value)
  {
    if (!is_string($var) || is_numeric($var) || empty($var))
    {
      throw new \InvalidArgumentException('Le nom de la variable doit être une chaine de caractère non nulle');
    }
    
    $this->vars[$var] = $value;
  }
  
  public function getGeneratedPage()
  {
	//print_r($this->contentFile);
	//print_r('<br>');
    if (!file_exists($this->contentFile))
    {
      throw new \InvalidArgumentException('La vue spécifiée n\'existe pas');
    }
    
    //Très important pour pouvoir utiliser la variable $formsearch dans layout.php
    $formSearch = $this->app->formSearch();
    extract($this->vars);
    
    ob_start();
      require $this->contentFile;
    $content = ob_get_clean();
    
    ob_start();
      require dirname(__FILE__).'/../Applications/'.$this->app->name().'/Templates/layout.php';
    return ob_get_clean();
  }
  
  public function setContentFile($contentFile)
  {
    if (!is_string($contentFile) || empty($contentFile))
    {
      throw new \InvalidArgumentException('La vue spécifiée est invalide');
    }
    
    $this->contentFile = $contentFile;
  }
}