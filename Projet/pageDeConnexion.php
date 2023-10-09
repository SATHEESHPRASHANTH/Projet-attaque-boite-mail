<!DOCTYPE html>
<html>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style1.css">
    <nav>
        <ul>
          <li id="login">
            <div id="login-content">
              <form method="post" action="<?PHP ECHO $_SERVER['PHP_SELF'];?>">
                <fieldset id="inputs">
                  <input  type="email"
                          name="Mail"
                          required>
                  <input type="password"
                          name="Psw"
                          required>
                </fieldset>
                <fieldset id="actions">
                  <input  type="submit"
                          value="valider">
                </fieldset>
              </form>
            </div>
          </li>
        </ul>
      </nav>
      <head>
</head>
<body>
</body>
<?php    
  include("cnx.php");
  //session_start();
  if($_SERVER["REQUEST_METHOD"]=="POST"){
    $email = $_POST["Mail"];
    $password = $_POST["Psw"];
  };
  $requete = "SELECT * FROM utilisateur WHERE Mail = '$email' AND Psw = '$password'";
  $resultat = $connexion->query($requete);
  if ($resultat->num_rows >= 1){
    $row = $resultat->fetch_assoc();
    $nomUtilisateur = $row['Mail'];
    header("Location: page_mail.php?nom=" .$nomUtilisateur );
  }else{
    echo "Identifiants incorrects. Veuillez réessayer.";
  };
  //$valider=$_POST["valider"];
  //if(isset($valider)){

  //$sel=$pdo->prepare("SELECT * FROM utilisateur WHERE Mail=? and Psw=? LIMIT 1");
      //require_once 'cnx.php';
      //$sel->execute(array($email,$password));
      //$tab=$sel->fetchAll();
      //if(count($tab)>=1){
      //  header("location:pageDeContact.php");
      //}
      //else
      //   $erreur="Mauvais login ou mot de passe!";
   //}
?>
</html>
