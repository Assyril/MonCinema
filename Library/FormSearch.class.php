<?php
namespace Library;

session_start();

class FormSearch extends ApplicationComponent
{
  public function getAttribute($attr)
  {
    return isset($_SESSION[$attr]) ? $_SESSION[$attr] : null;
  }
  
  public function getFlash()
  {
    $flash = $_SESSION['flash'];
    unset($_SESSION['flash']);
    
    return $flash;
  }
  
  public function hasFlash()
  {
    return isset($_SESSION['flash']);
  }
  
  public function isFormSearchShow()
  {
    return isset($_SESSION['search']) && $_SESSION['search'] === true;
  }
  
  public function setAttribute($attr, $value)
  {
    $_SESSION[$attr] = $value;
  }
  
  public function setFormSearchShow($formSearchShow = true)
  {
    if (!is_bool($formSearchShow))
    {
      throw new \InvalidArgumentException('La valeur spécifiée à la méthode FormSearch::setFormSearchShow() doit être un boolean');
    }
    
    $_SESSION['search'] = $formSearchShow;
  }
  
  public function setFlash($value)
  {
    $_SESSION['flash'] = $value;
  }
}