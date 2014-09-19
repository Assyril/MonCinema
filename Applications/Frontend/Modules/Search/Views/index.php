<form action="" method="post">
	<u><h3>Critères de recherche :</h3></u>
	<strong>Les films de l'année :</strong>														
	<select name="Saison">
		<?php	for ($i=1997;$i<=2012;$i++) {	?>
		<option value="<?php echo $i?>"> <?php echo $i?> </option>
		<?php	} ?>
		<option value="" selected>Tout</option>
	</select>
	<br />
	<br />
	
	<input name="Submit" type="image" value="Envoyer" src="/images/clap.gif" />
</form>