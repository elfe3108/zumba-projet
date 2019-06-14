<?php

// connexion à la $bdd

$mysql_serveur="localhost"; // nom du domaine
$mysql_login="root"; // admin
$mysql_passe="";
$mysql_bdd="zumba"; // bdd

$bdd=new mysqli ($mysql_serveur, $mysql_login, $mysql_passe, $mysql_bdd);
  if ($bdd->connect_errno){
    echo "Echec de la connexion à MySql :(" .$bdd->connect_errno.")".$bdd->connect_error;
  }
  echo "connexion à la bdd </br>";