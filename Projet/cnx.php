<!DOCTYPE html>
<html>
    <head>
        <title>Cours PHP / MySQL</title>
        <meta charset="utf-8">
    </head>
    <body>
        <h1></h1>  
        <?php
             $servername = 'localhost';
             $username = 'root';
             $password = 'root';
             $dbname = "tableprojet";

             $connexion = new mysqli($servername, $username,$password, $dbname);
             //$conn = new PDO('mysql:host=localhost;dbname=tableprojet;root','root','root');
            //On vérifie la connexion
            if($connexion->connect_error){
                die('Erreur : ' .$conn->connect_error);
            }
            //}else{
                //echo 'Connexion réussie';
            //}

            //try{
            //    $dbh = new pdo( 'mysql:host=localhost;dbname=tableprojet;root','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            //}
            //catch(PDOException $ex){
            //    die(json_encode(array('outcome' => false, 'message' => 'Unable to connect')));
            //}
        ?>
    </body>
</html>