<!DOCTYPE html>
<!-- le doctype pose un problème pour la fonction poplink, la bulle s'affiche en (0,0) -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">
	<head>
    	<title>
      		<?php if (!isset($title)) { ?>
        		Mon Cinéma
			<?php } else { echo $title; } ?>    
    	</title>
    
	    <meta http-equiv="Content-type" content="text/html; charset=utf8" />

    	<script src="/Mes_fonctions.js"></script>
    	<script type="text/javascript">
    		<!--
			function acteur_select()	{
				document.getElementById(id).value = document.getElementById('Acteur_liste').value;
			}
			-->
		</script>

    	
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {

				//Revoir JQUERY pour selectionner tooltip ou image-tip
				
				//Select all anchor tag with rel set to tooltip
				$('a[rel=tooltip]').mouseover(function(e) {
					
					//Grab the title attribute's value and assign it to a variable
					var tip = $(this).attr('title');	
					
					//Remove the title attribute's to avoid the native tooltip from the browser
					$(this).attr('title','');
					
					//Append the tooltip template and its value
					$(this).append('<div id="tooltip"><div class="tipHeader"></div><div class="tipBody">' + tip + '</div><div class="tipFooter"></div></div>');		
							
					//Show the tooltip with faceIn effect
					$('#tooltip').fadeIn('500');
					$('#tooltip').fadeTo('10',0.9);
					
				}).mousemove(function(e) {
				
					//Keep changing the X and Y axis for the tooltip, thus, the tooltip move along with the mouse
					$('#tooltip').css('top', e.pageY + 10 );
					$('#tooltip').css('left', e.pageX + 20 );
					
				}).mouseout(function() {
				
					//Put back the title attribute's value
					$(this).attr('title',$('.tipBody').html());
				
					//Remove the appended tooltip template
					$(this).children('div#tooltip').remove();
					
				});
			
			});
		</script>
		
		<style>
		/* Tooltip */
		
		#tooltip {
			position:absolute;
			z-index:9999;
			color:#000000;
			font-size:16px;
			width:500px;
		}
		
		#imagetip {
			position:absolute;
			z-index:9999;
			color:#000000;
			font-size:12px;
			width:110px;
		}

		#tooltip .tipHeader {
			height:2px;
			background-color:#000000;
		}
		
		
		#tooltip .tipBody {
			background-color:#0096c7;			
			padding:5px 5px 5px 15px;
			text-align: justify;
		}
		
		#tooltip .tipFooter {
			height:2px;
			background-color:#000000;
		}
		</style>
    	
<!-- Style à revoir pour ne faire qu'un fichier -->    	
    	<link rel="stylesheet" href="/css/cinema.css" type="text/css" />   
    	<link rel="stylesheet" href="/css/film.css" type="text/css" /> 	
    </head>
  
	<body>
		<?php echo $content; ?>
	</body>
</html>