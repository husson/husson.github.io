<?php
/*    QCM auto-corrigé version Réponses Courtes
      V 2.0
      (toutes les réponses (choix) sur la même ligne)

Ce script est la première version d'un gestionnaire de qcm
auto-corrigé en php.
Vous pouvez l'utiliser librement, il vous suffira d'aller modifier les 3
parties indiquées.
Il est assez brut mais je n'ai pas voulu ajouter ici de fioritures afin
qu'il reste facilement compréhensible.
Il faudrait, en particulier ajouter des couleurs, fonds, écritures
, etc...
Vous pouvez l'utiliser et le modifier comme bon vous semblera.
Tenez moi au courant d'éventuels problèmes et de vos idées ou besoins
pour l'améliorer.
© 2001/2004, Fleury, Jean Claude Meier

Pensez à visiter périodiquement mon site :
         http://jc.meier/free.fr
pour découvrir les nouvelles versions.
03/01/04 Ajout du JavaScript qui empêche de revenir en arrière avec le bouton [<--]
05/03/12 
nouvelle version du script non retour dans le HEAD
remplacement de $HTTP_POST_VARS par $_POST
*/
?>
<html>
<head>
<!-- modifier ci-dessous le titre qui apparaît dans la barre du navigateur entre > et <   -->
<title>Questionnaire sur les plans</title>
<!-- Pour empêcher le retour en arrière avec le bouton BACK -->
<script type="text/javascript">
function noBack(){window.history.forward()}
  noBack();
  window.onload=noBack;
  window.onpageshow=function(evt){if(evt.persisted)noBack()}
  window.onunload=function(){void(0)}
</script> 
</head>
<body bgcolor="#FFFFF2">

<!-- modifier ci-dessous le titre de la page entre > et <       -->
<center><table border="1" cellpadding="5" bgcolor="#D5FAB4"><tr><td>Titre du questionnaire à réponses courtes</td></tr></table></CENTER><br>

<!-- le formulaire s'appelle lui-même -->
<form method="post" action="f_qcm.php">   <!-- à modifier si vous renommez le script -->

<?php
// vos questions, effacez celles-ci, entrez les vôtres, en dessous du pointillé
// nombre quelconque mais autant de réponses que de questions !
// Remarque $question[0] : question 1, $question[1] : question 2 ...
//----------------------------------------------------------------------------

$question[0]="Quelle est la couleur du cheval blanc d'Henri IV ?";
$choix[0]=array("blanc","bleu","rouge","vert");
$bonne_rep[0]=$choix[0][0];

$question[1]="Quel est le jour de repos ?";
$choix[1]=array("lundi","dimanche","samedi");
$bonne_rep[1]=$choix[1][1];

$question[2]="Quelle est la saison la plus chaude ?";
$choix[2]=array("hiver","automne","printemps","été");
$bonne_rep[2]=$choix[2][3];

$question[3]="PHP est un langage interprété sur le serveur ?";
$choix[3]=array("vrai","faux");
$bonne_rep[3]=$choix[3][0];

//----------- fin de la partie à remplir----------------------------------------

$nbquest=sizeof($question);

$score=0;

/////////////////////////////////////////////////////////////////////////////////////
// Remplacement de $HTTP_POST_VARS par $_POST pour les versions récentes de PHP (>4.01)  // 
// Absolument nécessaire sur certains severurs, ex : SFR, ORANGE                         //
/////////////////////////////////////////////////////////////////////////////////////

  if (isset($_POST["retour"])) // retour : on réaffiche la page corrigée
  {
   echo "<BR><CENTER>CORRIGE<BR>(allez consulter votre <a href=\"#sco\">score</a> au bas de cette page)</CENTER><BR>";
  }
// on met les questions dans des tableaux pour améliorer la présentation

for ($i=0;$i<$nbquest;$i++) // nombre de tableaux
 {
  $a_repondu[$i]=false;
  $nbchoix=sizeof($choix[$i]);
  $no=$i+1;
  echo "<table BORDER=\"1\" WIDTH=\"100%\" BGCOLOR=\"#00FFFF\">";
  echo "<tr>";
  echo "<td COLSPAN=\"$nbchoix\">";
  echo "<center><h3><font color=\"#FF0000\">$no</font></h3></center>";
  echo "<center>$question[$i]</center>";
  echo "</td>";
  echo "</tr>";

  echo "<tr bgcolor=\"#00DFDF\">";


    if (isset($_POST["retour"]))
     {
       if (isset($_POST["bt"][$i])) // si bouton coché
       {
         $bt[$i] = $_POST["bt"][$i];
       }
       else $bt[$i] = "";
     }
     else $bt[$i] = "";

  for ($j=0;$j<$nbchoix;$j++)  // nombre de colonnes
    {
     echo "<td>";
     echo "<center><input TYPE=\"radio\" NAME=\"bt[$i]\" VALUE=\"bt[$j]\" ";
     if ($bt[$i]=="bt[$j]")
       {
        echo "checked";  // cocher le bouton au retour
        $k=$j;
        $a_repondu[$i] =true; // certaines questions pourront être omises !
       }
     echo ">".$choix[$i][$j]."</center>";
     echo "</td>";

    }
  echo "</tr>";
  echo "<tr bgcolor=\"#FFD5D5\">";
  echo "<td COLSPAN=\"$nbchoix\">";

  if ($a_repondu[$i])
   {
     if ($choix[$i][$k]==$bonne_rep[$i])
        {
       //  echo "====$choix[$i][$k]===$bonne_rep[$i]";
         $mess[$i]="exact";
         $score++;
        }
     else
       {
        $mess[$i]="non c'est $bonne_rep[$i]";
       }
        echo "<center>".$mess[$i]."</center>";
    }



  echo "</td>";
  echo "</tr>";
  echo "</table>";
  echo "<br>";
  }
if (isset($_POST["retour"]))
 {
  echo "<BR><BR><CENTER><table border=\"1\" cellpadding=\"5\" bgcolor=\"#FFC9AE\"><tr><td><a name=\"sco\">Score : $score/$nbquest</td></tr></table></CENTER>";
 }
else
{
 echo "<INPUT type=\"hidden\" name=\"retour\" value=\"1\">";
 echo "<BR><BR><CENTER><INPUT type=\"submit\" value=\"Confirmer\"></CENTER>";
}

?>
</form>
</body>
</html>
