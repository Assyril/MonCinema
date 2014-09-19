<?php
namespace Library;

abstract class Application
{
  protected $httpRequest;
  protected $httpResponse;
  protected $name;
  protected $config;
  protected $formSearch;
  
  public function __construct()
  {
    $this->httpRequest = new HTTPRequest($this);
    $this->httpResponse = new HTTPResponse($this);
    
    $this->name = '';
	$this->config = new Config($this);
	$this->formSearch = new FormSearch($this);
  }
  
  public function getController()
  {
    $router = new \Library\Router;
	//print_r($router);
	//print_r('<br>');
    
    $xml = new \DOMDocument;
	//print_r(str_replace('\\', '/', __DIR__).'/../Applications/'.$this->name.'/Config/routes.xml');
	//print_r('<br>');

    //$xml->load(__DIR__.'/../Applications/'.$this->name.'/Config/routes.xml');
    $xml->load(str_replace('\\', '/', __DIR__).'/../Applications/'.$this->name.'/Config/routes.xml');
    
    $routes = $xml->getElementsByTagName('route');
    
    // On parcourt les routes du fichier XML.
	//print_r('Analyse de routes.xml');
	//print_r('<br>');
    foreach ($routes as $route)
    {
		//print_r('url : '.$route->getAttribute('url'));
		//print_r('<br>');
		//print_r('module : '.$route->getAttribute('module'));
		//print_r('<br>');
		//print_r('action : '.$route->getAttribute('action'));
		//print_r('<br>');
		//print_r('<br>');

		$vars = array();
      
      // On regarde si des variables sont présentes dans l'URL.
      if ($route->hasAttribute('vars'))
      {
        $vars = explode(',', $route->getAttribute('vars'));
      }
      
      // On ajoute la route au routeur.
	  $temp = new Route($route->getAttribute('url'), $route->getAttribute('module'), $route->getAttribute('action'), $vars);
		//print_r($temp->module());
		//print_r('<br>');
		//print_r($temp->action());
		//print_r('<br>');
	  
      $router->addRoute(new Route($route->getAttribute('url'), $route->getAttribute('module'), $route->getAttribute('action'), $vars));
    }
    
    try
    {
      // On récupère la route correspondante à l'URL.
	  //print_r('URL actuelle = '.$this->httpRequest->requestURI());
	  //print_r('<br>');
      $matchedRoute = $router->getRoute($this->httpRequest->requestURI());
    }
    catch (\RuntimeException $e)
    {
		print_r('C\'est cassé');
		print_r('<br>');
		if ($e->getCode() == \Library\Router::NO_ROUTE)
		{
			// Si aucune route ne correspond, c'est que la page demandée n'existe pas.
			$this->httpResponse->redirect404();
		}
    }
    
    // On ajoute les variables de l'URL au tableau $_GET.
    $_GET = array_merge($_GET, $matchedRoute->vars());
    
    // On instancie le contrôleur.
    $controllerClass = 'Applications\\'.$this->name.'\\Modules\\'.$matchedRoute->module().'\\'.$matchedRoute->module().'Controller';
    //print_r($controllerClass);
    //print_r('<br>');
    return new $controllerClass($this, $matchedRoute->module(), $matchedRoute->action());
  }
  
  abstract public function run();
  
  public function httpRequest()
  {
    return $this->httpRequest;
  }
  
  public function httpResponse()
  {
    return $this->httpResponse;
  }
  
  public function name()
  {
    return $this->name;
  }
  
  public function config()
  {
	return $this->config;
  }

  public function formSearch()
  {
	return $this->formSearch;
  }
}