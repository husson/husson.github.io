<html>
<head>
<!-- modifier ci-dessous le titre qui apparaît dans la barre du navigateur entre > et <   -->
<title>Votre titre ici</title>
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
<center><table border="1" cellpadding="5" bgcolor="#D5FAB4"><tr><td>Titre du questionnaire à réponses longues</td></tr></table></center><br>

<!-- le formulaire s'appelle lui-même -->
<form method="post" action="f_qcm_rl.php">   <!-- à modifier si vous renommez le script -->

<?php
// Vos questions, effacez celles-ci, entrez les vôtres, en dessous du pointillé.
// Nombre quelconque de questions et de choix.
// Attention à mettre à chaque fois les 3 rubriques !
// Remarque $question[0] = 1 ère question 1, $question[1] = 2 ème question...
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
// Remplacement de $_POST_VARS par $_POST pour les versions récentes de PHP (>4.01)  // 
// Absolument nécessaire sur certains severurs, ex : SFR, ORANGE                     //
/////////////////////////////////////////////////////////////////////////////////////

if (isset($_POST["retour"])) // retour : on réaffiche la page corrigée
  {
   echo "<br><center>CORRIGE<br>(Allez consulter votre <a href=\"#sco\">score</a> au bas de cette page)</center><br>";
  }

// on met les questions dans des tableaux pour améliorer la présentation
for ($i=0;$i<$nbquest;$i++) // nombre de tableaux
 {
  $a_repondu[$i] = false;
  $nbchoix=sizeof($choix[$i]);
  $no=$i+1;
  echo "<table border=\"1\" width=\"100%\" bgcolor=\"#DFDFFF\">";
  echo "<tr>";
  echo "<td colspan=\"$nbchoix\">";
  echo "<center><h3><font color=\"#FF0000\">$no</font></h3></center>";
  echo "<center>$question[$i]</center>";
  echo "</td>";
  echo "</tr>";
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
     echo "<tr>";
     echo "<td align=\"left\" bgcolor=\"#FFFF80\">";
     echo "<input type=\"radio\" name=\"bt[$i]\" value=\"bt[$j]\" ";
     if ($bt[$i]=="bt[$j]")
       {
        echo "checked";  // cocher le bouton au retour
        $k=$j;
        $a_repondu[$i]=true; // certaines questions pourront être omises !
       }
     echo ">".$choix[$i][$j];
     echo "</td>";
      echo "</tr>";
    }

  echo "<tr>";
  echo "<td colspan=\"$nbchoix\" bgcolor=\"#ED9374\">";

  if ($a_repondu[$i])
    {
     if ($choix[$i][$k]==$bonne_rep[$i])
        {
         $mess[$i]="Exact";
         $score++;
        }
     else
       {
        $mess[$i]="Non c'est $bonne_rep[$i]";
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
  echo "<br><br><center><table border=\"1\" cellpadding=\"5\" bgcolor=\"#FFC9AE\"><tr><td><a name=\"sco\">Score : $score/$nbquest</td></tr></table></center>";
 }
else
{
 echo "<input type=\"hidden\" name=\"retour\" value=\"1\">";
 echo "<br><br><center><input type=\"submit\" value=\"Confirmer\"></center>";
}
?>
</form>
</body>
</html>
