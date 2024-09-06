<?php
// Vérifier si le serveur écoute sur le port 5000
$port = 5000;
if ($_SERVER['SERVER_PORT'] != $port) {
    http_response_code(404);
    echo "Cette page n'est pas accessible sur ce port.";
    exit;
}

// Afficher le message "Je suis dans la page d'aide"
echo "Je suis dans la page d'aide";

// Journaliser une erreur dans un fichier de log
$errorLogFile = "error.log";
error_log("Une erreur s'est produite dans la page d'aide", 3, $errorLogFile);
?>