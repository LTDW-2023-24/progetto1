<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

    require "include/config.inc.php";
    require "include/dbms.inc.php";
    require "include/auth.inc.php";
    require "include/template2.inc.php";
    require "include/forms.inc.php";

    $main = new Template("frame");

    if (!isset($_REQUEST['state'])) {
        $_REQUEST['state'] = 0;
    }

    $form = (new Form())
        ->add(new Text("title", "Title"))
        ->add(new Text("subtitle", "Subitle"))
        ->add(new Text("slogan", "Slogan"))
        ->add(new Editor("body", "Body"))
        ->add(new Select("id_user", $user))
        ->add(new Submit("Add"))
        ->add(new Reset("Cancel"));

    switch ($_REQUEST['state']) {
        case 0: // emit form
            
            break;

        case 1: // query + notifica + emit form
            
            break;


    }
    

    $main->setContent("body", $form->emit());
    $main->close();

?>