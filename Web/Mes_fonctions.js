// JavaScript Document
function format(f) {
	var str = document.selection.createRange().text;
	document.Film.Synopsis.focus();
	var sel = document.selection.createRange();
	sel.text = "<" + f + ">" + str + "</" + f + ">";
	return;
}

function format2(f) {
	var str = document.selection.createRange().text;
	document.Film.Synopsis.focus();
	var sel = document.selection.createRange();
	sel.text = "<i>" + f + "</i>";
	return;
}
		
var xhr = null; 
var acteur = null;
var taille_acteur = 0;
var id = " ";
		
function getXhr()	{
	if(window.XMLHttpRequest) // Firefox et autres
		xhr = new XMLHttpRequest(); 
	else if(window.ActiveXObject)	{ // Internet Explorer 
		try {
	    	xhr = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
	else { // XMLHttpRequest non supporté par le navigateur 
		alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest..."); 
		xhr = false; 
	} 
}
			
function go(text)	{
	id = text;
	getXhr();
	if(document.getElementById(id).value.length>1)	{
		temp = document.getElementById(id).value;
		acteur = temp.split(', ');
		taille_acteur = acteur.length;
		//alert(acteur[taille_acteur-1]);
		xhr.onreadystatechange = handleHttpResponse;
		xhr.open("GET","ajax.php?"+acteur[taille_acteur-1],true);
		xhr.send(null);
	}
}
		
function handleHttpResponse() {
	if (xhr.readyState == 4 && xhr.status == 200) {
		var club = xhr.responseText.indexOf('</XMP>');
		if (club >0)	{var actor = xhr.responseText.slice(0,club);}
		else	{var actor = xhr.responseText}
		results = actor.split(",");
		taille = results.length;
		if (taille > 8) {taille = 8}
		//alert(xhr.responseText);
		chaine = "";
	    chaine += "<select name='liste' id='liste'";
		chaine +=" size=";
		chaine += taille;
		chaine +=' onclick="javascript:acteur_select();">\n';
		//alert(chaine);
		for (p in results) {
			//alert (results[p]);
			chaine += "<option value='";
      		chaine += results[p];
			chaine += "'>";
      		chaine += results[p];
			chaine += "</option>";
			chaine += "\n";
		}
		chaine += "</select>\n";
		//alert(chaine);
		document.getElementById('Acteur_liste').innerHTML = chaine;
	}
}
		
function acteur_select()	{
	//alert(taille_acteur);
	if (taille_acteur == 1)	{
		//alert(document.getElementById('liste').value);
		document.getElementById(id).value = document.getElementById('liste').value + ", ";}
	else	{
		//alert(document.getElementById('Acteur_liste').value);
		temp = document.getElementById(id).value;
		acteur = temp.split(', ');
		//alert(acteur);
		taille = acteur.length;
		//alert(taille);
		//alert(acteur[0]);
		document.getElementById(id).value = acteur[0];
		for(i=1;i<taille-1;i++)	{
			document.getElementById(id).value = document.getElementById(id).value + ", " + acteur[i];
		}
		document.getElementById(id).value = document.getElementById(id).value + ", " + document.getElementById('liste').value + ", ";
	}
}

/*
Script amélioré, mis à jour pour NS6+ - Mozilla 1+ et commenté par le site WEB Creation.
Non testé pour NS4 mais devrait fonctionner.
D'autres scripts ?
>> http://www.web-creation-fr.com
Merci de laisser ces commentaires.
*/

// On définit 3 variables, selon les propriétés de calques gérées par le navigateur
var ie = document . all ? 1 : 0
var ns = document . layers ? 1 : 0
var ns6 = document.getElementById && !document.all ? 1 : 0

// Position en hauteur une fois le menu ouvert
var topOpen = 10;
// Position en hauteur lorsque le menu est fermé
var topClosed = 10;

var master = new Object("element")
master . curLeft = -250; // Position de départ du calque, à modifier si chgt de largeur du menu
master . curTop = 10; // Hauteur de départ du calque
master . gapLeft = 0;
master . gapTop = 0;
master . timer = null;

function moveAlong(layerName, paceLeft, paceTop, fromLeft, fromTop)
{
	clearTimeout(eval(layerName) . timer);

    if (eval(layerName) . curLeft != fromLeft) {
	    // Calcul position horizontale
        if ((Math . max(eval(layerName) . curLeft, fromLeft) - Math . min(eval(layerName) . curLeft, fromLeft)) < paceLeft) {
            eval(layerName) . curLeft = fromLeft;
        } else if (eval(layerName) . curLeft < fromLeft) {
            eval(layerName) . curLeft = eval(layerName) . curLeft + paceLeft;
        } else if (eval(layerName) . curLeft > fromLeft) {
            eval(layerName) . curLeft = eval(layerName) . curLeft - paceLeft;
        }
        // Définition de la position horizontale du menu
        if (ie) {
            document . all[layerName] . style . left = eval(layerName) . curLeft;}
        if (ns) {
            document[layerName] . left = eval(layerName) . curLeft;
        }
        if (ns6) {
            document . getElementById(layerName) . style . left = eval(layerName) . curLeft;
        }
    }

    if (eval(layerName) . curTop != fromTop) {
	    // Calcul position verticale
        if ((Math . max(eval(layerName) . curTop, fromTop) - Math . min(eval(layerName) . curTop, fromTop)) < paceTop) {
            eval(layerName) . curTop = fromTop;
        } else if (eval(layerName) . curTop < fromTop) {
            eval(layerName) . curTop = eval(layerName) . curTop + paceTop;
        } else if (eval(layerName) . curTop > fromTop) {
            eval(layerName) . curTop = eval(layerName) . curTop - paceTop;
        }
        // Définition position verticale du menu
        if (ie) {
            document . all[layerName] . style . top = eval(layerName) . curTop;
        }
        if (ns) {
            document[layerName] . top = eval(layerName) . curTop;
        }
        if (ns6) {
            document . getElementById(layerName) . style . top = eval(layerName) . curTop;
        }
    }
    eval(layerName) . timer = setTimeout('moveAlong("' + layerName + '",' + paceLeft + ',' + paceTop + ',' + fromLeft + ',' + fromTop + ')', 30)

} // Fin function MoveAlong

function setPace(layerName, fromLeft, fromTop, motionSpeed)
{
    eval(layerName) . gapLeft = (Math . max(eval(layerName) . curLeft, fromLeft) - Math . min(eval(layerName) . curLeft, fromLeft)) / motionSpeed;
    eval(layerName) . gapTop = (Math . max(eval(layerName) . curTop, fromTop) - Math . min(eval(layerName) . curTop, fromTop)) / motionSpeed;
    // Ouvre le menu
    moveAlong(layerName, eval(layerName) . gapLeft, eval(layerName) . gapTop, fromLeft, fromTop)
}

// Définition du menu à "fermé" lors de l'arrivée sur le site
var expandState = 0;



// Fonction Expand ()
function expand()
{
	//alert(expandState);
	if (expandState == 0) { // si le menu est fermé
        // Passe les paramètres d'ouverture à la fonction setPace qui contient la fonction d'ouverture "moveAlong()"
        // setPace ("nom du calque", "position par rapport à la gauche", "position en hauteur", "vitesse d'ouverture")
        setPace("master", 0, topOpen, 10);
        // Modification de l'image "menu" :
		//alert(ns6);
		//alert(ie);
        if (ie) {
            document.menutop.src = '/images/menu2.gif';
        } else if (ns6) {
            document . getElementById("img_menu") . innerHTML = "<img src='/images/menu2.gif' border='0' width='36' height='140'>";
        }
        expandState = 1; // définition de l'état à "ouvert"
    } else { // Si le menu est ouvert
		//alert(ns6);
		//alert(ie);
        setPace("master", -250, topClosed, 10); // Referme le menu ; le 250 correspon à la largeur du menu
        // Modification de l'image "menu" :
        if (ie) {
            document.menutop.src = 'images/menu.gif';
        } else if (ns6) {
            document . getElementById("img_menu") . innerHTML = "<img src='/images/menu.gif' border='0' width='36' height='140'>";
        }
        expandState = 0; // définition de l'état à "fermé"
    }
}
