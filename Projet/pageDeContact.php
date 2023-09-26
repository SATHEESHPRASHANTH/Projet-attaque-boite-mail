<?php
        $servername = 'localhost';
            $username = 'root';
            $password = 'root';
            $dbname = "tableprojet";
            
            //On établit la connexion
            $conn = new mysqli($servername, $username, $password);
            
            //On vérifie la connexion
            if($conn->connect_error){
                die('Erreur : ' .$conn->connect_error);
            }
            $sql = "SELECT Idcontact, Nom, Prenom ,Mail , Tel , Adresse , CP , Ville , Societe FROM contact";
?>
<html>
    <form action="cnx.php" method="post">
    <link rel="stylesheet" href="style3.css">
    <div class="flex wrap">
        <div class="main">
            <ul>Menu<hr>
                <li>
                    <a>boite principale</a><hr>
                </li>
                <li>
                    page de contact<hr>
                </li>
            </ul>
        </div>
        <div class="optional">
            <ul>Liste de contact<hr>
            <?php
            echo $_POST[1]."<br>";
            ?>
            </ul></div>
   </div>
</html>