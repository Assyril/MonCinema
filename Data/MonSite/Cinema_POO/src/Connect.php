<?php
	$PARAM_hote= 'localhost';
	//$PARAM_port= '8080';
	$PARAM_port= '';
	$PARAM_nomBDD = 'Cinema';
	$PARAM_user = 'root';
	$PARAM_pwd = '';
	
	try {
		$db = new PDO('mysql:host='.$PARAM_hote.';port='.$PARAM_port.';dbname='.$PARAM_nomBDD, $PARAM_user, $PARAM_pwd);
		$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}
	catch (Exception $e)
	{
		echo 'Erreur : '.$e->getMessage().'<br/>';
		echo 'N° : '.$e->getCode();
		die();
	}
	
?>