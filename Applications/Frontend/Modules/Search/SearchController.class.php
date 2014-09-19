<?php
namespace Applications\Frontend\Modules\Search;

class SearchController extends \Library\BackController
{
  public function executeIndex(\Library\HTTPRequest $request)
  {
    $this->page->addVar('title', 'Search');
    
    if ($request->postExists('Saison'))
    {
    	print_r('hello<br>');
      	$annee = $request->postData('Saison');
      	$this->app->FormSearch()->setAttribute('annee',$annee);
      	print_r('Année = '.$annee.'<br>');
      	$this->app->FormSearch()->setFormSearchShow(true);
	    $this->app->httpResponse()->redirect('.');
    }
  }
}