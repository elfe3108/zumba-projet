 <?php

session_start(); // Démarrage session

// on affiche le contenu seulement si on est connecté
if ((isset ($_SESSION['email']) && isset ($_SESSION['mdp']) && isset ($_SESSION ['connect']) == 1)) {

// connexion à la bdd
include ('sqlconnect.php');

// requête qui va chercher les informations de l'utilisateur
$result = $bdd->query('SELECT nom_adher, prenom_adher ,mail_adher, mdp_adher FROM adherent WHERE statut_adher="president" OR "secretaire" OR "professeur"');

// on traite la requête, on met le resultat dans un tableau
$nb1=$result->num_rows; //on compte le nb de lignes retourné par la requête, 0 si rien trouvé dans la bdd
$tab=$result->fetch_row ();// transforme la requête en données de type tableau

// on enregistre dans un tableau les variables récupérées depuis la bdd
$nom_adher = $tab[0];
$prenom_adher = $tab[1];
$mail_adher = $tab[2];
$mdp_adher = $tab[3];

// fermeture de la bdd
mysqli_close($bdd);

// on affiche les informations récupérées
echo '<form method="post" action="modifier.php">Nom :
        <input type="text" name="Nom" value="'.$nom_adher.'" required/>';
echo '</br>';
echo '</br>';
echo 'Votre Prénom :
        <input type="text" name="Prénom" value="'.$prenom_adher.'" required/>';
echo '</br>';
echo '</br>';
echo 'Votre Mail : 
        <input type="email" name="Mail" value="'.$mail_adher.'" required/>';
echo '</br>';
echo '</br>';
echo 'Votre téléphone : 
        <input type="password" name="password"'.$mdp_adher.'" required/>';
echo '</br>';
echo '</br>';    
echo '<input type="submit" value="Modifier"/>';
echo '</form>';
echo '</br>';
echo '</br>';
echo '<form action="connection.html">
      <input type="submit" value="Retour"/>
      </form>';

} else header('Location:connection.html'); // sinon redirection à l'Index