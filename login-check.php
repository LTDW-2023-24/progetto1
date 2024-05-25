<?php

    

    require "include/config.inc.php";
    require "include/dbms.inc.php";

    $passwd = md5("{$_POST['password']}|".md5($_POST['username']));
    
    $result = $mysqli->query("SELECT username, name, surname, email FROM `user` WHERE username = '{$_POST['username']}' AND password = '{$passwd}'");

    if ($result->num_rows == 1) {
    
        $result = 1;
    
    } else {
        $result = 0;
    }

    echo json_encode($result);

?>