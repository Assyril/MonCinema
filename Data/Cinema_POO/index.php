<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
     <title>Mon Cinema</title>
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
		
		$db = new PDO('mysql:host=localhost;dbname=moncinema', 'root', '');
		$manager = new FilmManager($db);
		
		$annee = 2012;
		$film= $manager->getFilmsbyYear($annee);
?>
<table border='1' cellpadding='0' cellspacing='0' align='left' width ='90%'>
	<tr bordercolor='#ffffff'>
		<td colspan='3' align='center' valign='middle'><img src='../../Cinema/images/2012.jpg'></td>
		<td colspan='1' align='right' valign='middle'><a href='http://www.allocine.fr/' target='_blank'><img src='../../Cinema/images/allocine_com.jpg' width='167' height='32' border='0'></a></td>
	</tr>
	<tr bordercolor='#FFFFFF' bgcolor='#969696'>
		<td align='center' width='15%'><b><font size='4' color='white'>Affiche de Cinéma</font></b></td>
		<td align='center' width='12%'><b><font size='4' color='white'>Date</font></b></td>
		<td align='center' width='58%'><b><font size='4' color='white'>Titre</font></b></td>
		<td align='center' width='5%'><b><font size='4' color='white'>Bruno</font></b></td>
	</tr>
	<tr bordercolor='#000000'>
		<td align='center' width='15%'><?php echo'<img src="http://localhost/Cinema/images/affiches/small/'.$film->affiche().'">';?></td>
		<td align='center' width='10%'>18 Fév 2012</td>
		<td align='center' width='60%'><font size='+2'><?php echo $film[0]->titre();?></font></td>
		<td align='center' width='5%'><?php echo 'note'?></td>
	</tr>
	<tr>
		<td colspan="4"><?php echo $film[0]->synopsis();?></td>
	</tr>
	</table>
	
</body>
</html>

    