<?php 
	$path = 'http://'.$_SERVER["HTTP_HOST"];
	$path_affiche = $path.'/images/affiches/';
	$path_acteur = $_SERVER['DOCUMENT_ROOT'].'/images/acteurs/';
	//pour le web
	//$path_acteur = $_SERVER['DOCUMENT_ROOT'].'/Cinema/images/acteurs/';
	$path_acteur2 = $path.'/images/acteurs/';
	//echo $path_acteur2;
	$bonus = $_SERVER['DOCUMENT_ROOT'].'/Bonus/';
?>
<div class="header">
	<?php echo $film['titre'];?>
</div>

<div class="left">
	<?php echo'<img src="/images/affiches/'.$film['affiche'].'" height="400">';?>
</div>
<div class="middle">
	<p><strong>Film </strong>
	<?php 
		foreach ($film['origines'] as $nationalite)
		{
			echo $nationalite['nom'].". ";
		}
	?>
	<strong>Genre :</strong> 
	<?php 
		foreach ($film['genres'] as $genres)
		{
			echo $genres['nom_Genre'].". ";
		}
	?>
	
	<strong>Année :</strong> 
	</p>
	<p class="histoire"><strong>Histoire </strong>: <?php echo $film['synopsis'];?></p>
	<p><strong>Avec </strong>
	<?php 
		foreach ($film['acteurs'] as $acteur)
		{
	?>
			<a rel="tooltip" title="<center><img src='/images/acteurs/<?php echo $acteur['nom']; ?>.jpg' /></center>" href='acteurs-<?php echo $acteur['idActeur']; ?>.html'>
				<?php echo $acteur['nom']; ?>
			</a>		
	<?php
		echo " . ";
		}
	?>
	</p>
	<p><strong>Réalisé par </strong>
	<?php 
		foreach ($film['realisateurs'] as $realisateur)
		{
	?>
			<a rel="tooltip" title="<center><img src='/images/acteurs/<?php echo $realisateur['nom']; ?>.jpg' /></center>" href='acteurs-<?php echo $realisateur['idRealisateur']; ?>.html'>
				<?php echo $realisateur['nom']; ?>
			</a>		
	<?php
		echo " . ";
		}
	?>
	</p>
</div>
<br><br>
Source : <a href='http://www.allocine.fr/'><img src='/images/allocine_com.jpg' width='167' height='32' border='0'></a>
<!-- 
<?php 
	$dir = $bonus.$film['idFilm'];
	//var_dump($dir);
	//var_dump(is_dir($dir));
	if(is_dir($dir))	{
		if(is_dir($dir."/images"))	{
			echo "Images Bonus:<br><br>\n";
				
			echo "<img src=";
			echo "\"$image\"";
			echo "name='image'><br><br>\n";
	
			if($nb_image > 1)	{
			echo "<form name='vision'>\n";
					echo "<input type='button' name='precedent' value='Précédente' onClick='precedente();'>&nbsp;&nbsp;&nbsp;\n";
							echo "<input type='button' name='suivant' value=' Suivante ' onClick='suivante();'>&nbsp;&nbsp;&nbsp;\n";
							echo "<input type='button' name='automat' value=' Lect/Auto ' onClick='auto();'>\n</form><br><br>\n";
			}
		}
	}
	
?>
 -->