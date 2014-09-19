		<style type="text/css">
			.popperlink	{ 
				position: absolute;
				visibility: hidden; 
			}
		</style>
		<div class="popperlink" id="topdecklink"></div>
		<!-- il faut absolument les javascripts dans les balises BODY -->

		<script type="text/javascript">		
		Note = "<table  border='1' align ='center' cellpadding='0' cellspacing='0' bordercolor='#000000'><tr bordercolor=#0099FF><td colspan='3' align='center'><center><b><u> Syst&egrave;me de Notation : </u></b></center></td></tr><tr bordercolor=#0099FF><td align='center'>On jugera un film sur les crit&egrave;res suivants :</td><td width='10%' align='center'><b>0</b></td><td >Aucun des crit&egrave;res : &agrave; oublier illico</td></tr><tr bordercolor=#0099FF ><td><li>Un bon sc&eacute;nario.</li></td><td align='center'><b>1</b></td><td>Un des crit&egrave;res, ne laissera pas un souvenir imp&eacute;rissable </td></tr><tr bordercolor=#0099FF ><td><li>Le jeu des acteurs.</li></td><td align='center'><b>2</b></td><td>Deux des crit&egrave;res, un film qui se laisse regarder </td></tr><tr bordercolor=#0099FF ><td><li>L'image, effets sp&eacute;ciaux.</li></td><td align='center'><b>3</b></td><td>Trois des crit&egrave;res, un bon film </td></tr><tr bordercolor=#0099FF ><td><li>Une  r&eacute;alisation, une mise en sc&egrave;ne.</li></td><td align='center'><b>4</b></td><td>Quatre crit&egrave;res, un tr&egrave;s bon film </td></tr><tr bordercolor=#0099FF><td><li>Un sentiment de ne pas avoir perdu son temps.</li></td><td align='center'><b>5</b></td><td>Tous les crit&egrave;res, Un chef d'oeuvre</td></tr></table>"
		domok = document.getElementById;
		
		if (domok)
		{			
			skn = document.getElementById("topdecklink").style;			
			if(navigator.appName.substring(0,3) == "Net")
				document.captureEvents(Event.MOUSEMOVE);
				document.onmousemove = get_mouse;				
		}

		function poplink(msg)	{
			var content ="<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 BGCOLOR=#000000><TR><TD><TABLE WIDTH=100% BORDER=0 CELLPADDING=2 CELLSPACING=1><TR><TD BGCOLOR=#0096c7><FONT COLOR=#000000 SIZE=2 face='Verdana'>"+msg+"</TD></TR></TABLE></TD></TR></TABLE>";
			if (domok)	{
				document.getElementById("topdecklink").innerHTML = content;
				skn.visibility = "visible";
			}
		}

		function get_mouse(e)	{
			var x = (navigator.appName.substring(0,3) == "Net") ? e.pageX : event.x+document.body.scrollLeft;
			var y = (navigator.appName.substring(0,3) == "Net") ? e.pageY : event.y+document.body.scrollTop;			
			skn.left = x - 60;
			skn.top = y + 20;
			//alert(skn.left);
		}

		function killlink()	{
			if (domok)	skn.visibility = "hidden";
		}

		function PopupImage(img) {
			w=open("",'image','weigth=toolbar=no,menubar=no,scrollbars=no,resizable=no, width=600, height=800');  
			w.document.write("<HTML><BODY onblur=\"window.close();\"><IMG src='"+img+"'>");
			w.document.write("</BODY></HTML>");
			w.document.close();
		}
		</script>

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
		<td align='center' width='15%'><?php echo'<img src="http://localhost/Cinema/images/affiches/small/'.$films['films']['affiche'].'">';?></td>
		<td align='center' width='10%'><font size='+1'><?php echo $Date_Seance ?></font> </td> 
		<td align='center' width='60%'>
			<font size='+2'>
				<a onmouseover='poplink("<?php echo $Synopsis ?>");' onmouseout='killlink();' href='films-<?php echo $films['films']['idFilm']; ?>.html'>
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
		<td bordercolor='#000000' align='center'><h2><strong>$Nb_film</strong></h2>
	</tr>
	<tr>
		<td bordercolor='#ffffff' colspan='4'>&nbsp</td>
	</tr>
	
	<tr>
		<td align='left' bordercolor='#ffffff' colspan='2'>
			<input type='button' name='print' id='print' class='bouton' value='Imprimer' onclick='javascript:window.location=\"print.php\'>
		</td>
		<td align='right' bordercolor='#ffffff' colspan='3'>
			<input type='button' name='index' id='index' class='bouton' value='Retour au debut' onclick='javascript:window.location=\"index.php\'>
		</td>
	</tr>
</table>
