<?php

    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    

    
    require "include/config.inc.php";
    require "include/dbms.inc.php";
    require "include/template2.inc.php";

    $main = new Template("frame");

    
    
    $body = new Template("section_1");
    $result = $mysqli->query("SELECT * FROM content");


    while ($data = $result->fetch_assoc()) {
        if ($result->num_rows > 0) {
            $body->setContent("title", $data['title']);
            $body->setContent("subtitle", $data['subtitle']);
        }
    };


    $main->setContent("body", $body->get());
    $main->close();

?>