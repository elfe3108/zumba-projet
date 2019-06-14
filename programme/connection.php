<?php

$email=$_POST['email']; // récupération du champ nommé email par méthode POST
$mdp=$_POST['password']; // récupération du champ nommé password par méthode POST

//connection à la bdd
include('sqlconnect.php');

// Requête qui va prendre le mail et le mot de passe de l'utilisateur
$result = $bdd->query('SELECT mail_adher, mdp_adher FROM adherent WHERE statut_adher="president"');

// on traite la requête, on met le resultat dans un tableau
$nb1 = $result->num_rows; //on compte le nb de ligne

//creation du tableau
$tab = $result->fetch_row(); //  création d'un tableau
$emailPresident = $tab[0]; // email 
$mdpPresident= $tab[1]; // mot de passe 

//fermeture de la bdd
$bdd->close();

//provisoire de connexion
if(($email == $emailPresident) && ($mdp == $mdpPresident)) { 
    echo 'Connexion réussie !';
    session_start();// on demarre la session
    $_SESSION['email'] = $email;
    $_SESSION['mdp'] = $mdp;
    $_SESSION['connect'] = 1;
    echo '<meta http-equiv = "refresh" content ="0; URL = utilisateur.php">';
} else echo 'Connexion impossible <meta http-equiv="refresh" content="2; URL=connection.html">';