<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

    require "include/config.inc.php";
    require "include/dbms.inc.php";
    require "include/auth.inc.php";
    require "include/template2.inc.php";

    $main = new Template("frame");

    if (!isset($_REQUEST['state'])) {
        $_REQUEST['state'] = 0;
    }

    

    switch ($_REQUEST['state']) {
        case 0: // emit report
        
            break;

        case 1: // query (select) + emit form (pre-charged)

            $query = "INSERT INjjjjjTO content VALUES(null, '{$_POST['title']}', '{$_POST['subtitle']}', '{$_POST['slogan']}','','', '', '{$_POST['body']}')";
            
            $result = $mysqli->query($query);

            if (!$result) {
                $main->setContent("notify", "error");
                // die("Error in query: ".$mysqli->error);
            } else {
                $main->setContent("notify", "success");
            }


            
            break;
        case 2: // query (update) + emit form (pre-charged)
            break;


    }



    

    $main->setContent("body", $body->get());
    $main->close();

?>