<html>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style1.css">
    <nav>
        <ul>
          <li id="login">
            <div id="login-content">
              <form method="post">
                <fieldset id="inputs">
                  <input  id="Mail"
                          type="email"
                          placeholder="Your email address"
                          required>
                  <input  id="Psw"
                          type="password"
                          name="Psw"
                          placeholder="Password"
                          required>
                </fieldset>
                <fieldset id="actions">
                  <input  type="submit"
                          id="valider"
                          value="valider">
                </fieldset>
              </form>
            </div>
          </li>
        </ul>
      </nav>
</html>
<?php
  session_start();
  $email = ($_POST["Mail"]);
  $password = ($_POST["Psw"]);
  $valider=$_POST["valider"];
  if(isset($valider)){
    include("cnx.php");
  $sel=$pdo->prepare("select * from utilisateur"/* where Mail=? and Psw=? limit 1"*/);
      require_once 'cnx.php';
      $sel->execute(array($email,$password));
      $tab=$sel->fetchAll();
      if(count($tab)>0){
        header("location:pageDeContact.php");
      }
      else
         $erreur="Mauvais login ou mot de passe!";
   }
?>