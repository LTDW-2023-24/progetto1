<?php

    session_start();

    unset($_SESSION['user']);
    Header("Location: index.php");

?>