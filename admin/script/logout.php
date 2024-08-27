<?php
    session_start();

    // Unset and destroy the session
    session_unset();
    session_destroy();

    // Clear any additional cookies (replace 'cookieName' with your actual cookie name)
    setcookie('Emltkn', '', time() - 3600, '/');

    // Redirect to the home page or any other desired location
    header('Location:/');
    exit;
?>
