<!DOCTYPE html>
<html>
    <head>
        <title>Cours PHP / MySQL</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style2.css">
    </head>
    <body>
        <h1>Bases de données MySQL</h1>  
        <?php
             $servername = 'localhost';
             $username = 'root';
             $password = 'root';
             $dbname = "tableprojet";
             $conn = new PDO('mysql:host=localhost;dbname=tableprojet;root','root','root');
            //On vérifie la connexion
            //if($conn->connect_error){
                //die('Erreur : ' .$conn->connect_error);
            //}else{
                //echo 'Connexion réussie';
            //}
            try{
                $dbh = new pdo( 'mysql:host=localhost;dbname=tableprojet;root','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                die(json_encode(array('outcome' => true)));
            }
            catch(PDOException $ex){
                die(json_encode(array('outcome' => false, 'message' => 'Unable to connect')));
            }
        ?>
    </body>
</html>