
<html>
    <form action="cnx.php" method="post">
    <link rel="stylesheet" href="style3.css">
    <div class="flex wrap">
        <div class="main">
            <ul>Menu<hr>
                <li>
                    <a href="page_mail.php">boite principale</a><hr>
                </li>
                <li>
                    page de contact<hr>
                </li>
            </ul>
        </div>
        <div class="optional">
            <ul>Liste de contact<hr>
            <?php
             //On établit la connexion
             $servername = 'localhost';
             $username = 'root';
             $password = 'root';
             $dbname = "tableprojet";
             $conn = new PDO('mysql:host=localhost;dbname=tableprojet;root','root','root');
             $result = $conn->query("SELECT * FROM contact");
             while($resultat = $result ->fetch())
             {
                echo "<style>p{border:1px solid black;}</style>"."<p>".$resultat["Idcontact"].".".$resultat["Nom"]." ".$resultat["Prenom"]."<br>".$resultat["Mail"]."<br>"."0".$resultat["Tel"]."<br>".$resultat["Adresse"].",".$resultat["CP"]." ".$resultat["Ville"]."<br>".$resultat["Societe"]."</p>";
             }
             ?>
            </ul></div>
   </div> <style></style>
</html>