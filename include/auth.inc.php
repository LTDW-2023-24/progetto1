<?php

    $config['auth'] = "true";


    $passwd = md5("{$_POST['password']}|".md5($_POST['username']));
    
    $result = $mysqli->query("SELECT username, name, surname, email FROM `user` WHERE username = '{$_POST['username']}' AND password = '{$passwd}'");

    if (!$result) {
        die("Error!");
    } else {

        if ($result->num_rows == 1) {
            $user = $result->fetch_array();\
            $_SESSION['user'] = $user;

        } else {

            // utente non esiste

            Header("Location: error.php?error=001");
            exit;
        }


    }

?>