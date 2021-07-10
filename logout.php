<?php

// Inialize session
session_start();

session_unset(); 

// Delete all session variables
session_destroy();

// Jump to login page
header('Location: index.php');

?>