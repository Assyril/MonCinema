<table border='1' cellpadding='0' cellspacing='0' align='left' width ='90%'>
	<tr bordercolor='#ffffff'>
  		<td colspan='3' align='center' valign='middle'><img src='images/<?php echo $formSearch->getAttribute('annee')  ?>.jpg'></td>
  		<td colspan='1' align='right' valign='middle'><a href='http://www.allocine.fr/' target='_blank'><img src='images/allocine_com.jpg' width='167' height='32' border='0'></a></td>
  	</tr>
  	<tr bordercolor='#FFFFFF' bgcolor='#969696'>
		<td align='center' width='15%'><b><font size='4' color='white'>Affiche de Cin&eacute;ma</font></b></td>
		<td align='center' width='12%'><b><font size='4' color='white'>Date</font></b></td>
		<td align='center' width='58%'><b><font size='4' color='white'>Titre</font></b></td>
		<td align='center' width='5%'><b><font size='4' color='white'>Bruno</font></b></td>
	</tr>

<?php
$mois = array ('01' => 'Jan','02' => 'Fev','03' => 'Mar','04' => 'Avr','05' => 'Mai','06' => 'Juin','07' => 'Juil','08' => 'Août','09' => 'Sep','10' => 'Oct','11' => 'Nov','12' => 'Déc');
	
foreach ($listeFilms as $films)
{
	$Date = $films['date_vu'];
	list ($year, $month, $day) = preg_split( '/[-\.\/ ]/', $Date );
	$Date_Seance = $day.' '.$mois[$month].' '.$year;
	$Synopsis = htmlentities ($films['films']['synopsis'],ENT_QUOTES,"UTF-8");
	
?>
	<tr bordercolor='#000000'>
		<td align='center' width='15%'><?php echo'<img src="/images/affiches/small/'.$films['films']['affiche'].'">';?></td>
		<td align='center' width='10%'><font size='+1'><?php echo $Date_Seance ?></font> </td> 
		<td align='center' width='60%'>
			<font size='+2'>				
				<a rel="tooltip" title="<?php echo $Synopsis ?>" href='films-<?php echo $films['films']['idFilm']; ?>.html'>
					<?php echo $films['films']['titre']; ?>
				</a>
			</font>
		</td>	
		<td align='center' width='5%'><?php echo $films['note_Film']; ?></td>
	</tr>	
<?php
}
?>
	<tr valign='middle'>
		<td bordercolor='#ffffff' align='right' colspan='3'><h2><strong>Nombre de film :</strong></h2></td>
		<td bordercolor='#000000' align='center'><h2><strong><?php echo $nbFilms['nbFilms'] ?></strong></h2>
	</tr>
	<tr>
		<td bordercolor='#ffffff' colspan='4'>&nbsp</td>
	</tr>
	
	<tr>
		<td align='left' bordercolor='#ffffff' colspan='2'>
			<input type="button" name="print" id="print" class="bouton" value="Imprimer" onclick="javascript:window.location='/print.php'" />
		</td>
		<td align='right' bordercolor='#ffffff' colspan='3'>
			<input type="button" name="index" id="index" class="bouton" value="Retour au debut" onclick="javascript:window.location='/search.html'" />
		</td>
	</tr>
</table>
