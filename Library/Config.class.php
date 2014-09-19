<?php
namespace Library;

class Config extends ApplicationComponent
{
	protected $vars = array();
  
	public function get($var)
	{
		//print_r('config _ param : '.$var);
		//print_r('<br>');

		if (!$this->vars)
		{
			$xml = new \DOMDocument;
			$xml->load(str_replace('\\', '/', __DIR__).'/../Applications/'.$this->app->name().'/Config/app.xml');
      
			$elements = $xml->getElementsByTagName('define');
      
			foreach ($elements as $element)
			{
				$this->vars[$element->getAttribute('var')] = $element->getAttribute('value');
			}
		}
    
		if (isset($this->vars[$var]))
		{
			return $this->vars[$var];
		}
    return null;
  }
}