<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
     <title>Titre de la page</title>
     <meta name="keywords" lang="fr" content="motcle1,mocle2" />
     <meta name="description" content="Description de ma page web." />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <meta http-equiv="Content-Language" content="fr" />
     <link href="styles.css" rel="stylesheet" type="text/css" />
	 <script type="text/javascript">
	 </script>
</head>
<body>

<?php
		function chargerClasse($classe)
		{
			require $classe.'.class.php';
		}
		
		spl_autoload_register('chargerClasse');
		
		require 'Connect.php';
		//$db = new PDO('mysql:host=localhost;dbname=Cinema', 'root', '');
		$manager = new FilmManager($db);
				
		$film = $manager->get(1);
?>
<table border='1' cellpadding='0' cellspacing='0' align='left' width ='90%'>
<tr bordercolor='#ffffff'><td colspan='3' align='center' valign='middle'><img src='images/2012.jpg'></td>
<td colspan='1' align='right' valign='middle'><a href='http://www.allocine.fr/' target='_blank'><img src='images/allocine_com.jpg' width='167' height='32' border='0'></a></td></tr>
<tr bordercolor='#FFFFFF' bgcolor='#969696'><td align='center' width='15%'><b><font size='4' color='white'>Affiche de Cin&eacute;ma</font></b></td><td align='center' width='12%'><b><font size='4' color='white'>Date</font></b></td><td align='center' width='58%'><b><font size='4' color='white'>Titre</font></b></td><td align='center' width='5%'><b><font size='4' color='white'>Bruno</font></b></td>
<tr bordercolor='#000000'>
<td align='center' width='15%'>
<?php echo'<img src="http://localhost:8080/Cinema/images/affiches/small/'.utf8_encode($film->affiche()).'">';?>
</td>
<td align='center' width='10%'>18 Fév 2012
</td>
<td align='center' width='60%'><font size='+2'><a onmouseover='poplink(" ");' onmouseout='killlink()' href=film.php?film=830 target='_self'><?php echo utf8_encode($film->titre());?></a></font>
</td>
<td align='center' width='5%'>
</td>
</tr>

</body>
</html>

    