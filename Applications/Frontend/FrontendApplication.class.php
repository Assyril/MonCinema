<?php
namespace Applications\Frontend;
class FrontendApplication extends \Library\Application
{
  public function __construct()
  {
    parent::__construct();
    
    $this->name = 'Frontend';
  }
  
  public function run()
  {
  	if ($this->formSearch->isFormSearchShow())
  	{
  		$controller = $this->getController();
  		//$this->formSearch->setFormSearchShow(false);
  	}
  	else
  	{
  		$controller = new Modules\Search\SearchController($this, 'Search', 'index');
  	}
	//print_r($controller);
	//print_r('<br>');
    $controller->execute();
    
    $this->httpResponse->setPage($controller->page());
    $this->httpResponse->send();
  }
}