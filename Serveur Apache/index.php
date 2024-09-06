<?php
// Contenu du fichier index.php
echo "Je suis dans la page home";

// Écriture dans le fichier de log
file_put_contents('log.txt', "Page d'accueil consultée" . PHP_EOL, FILE_APPEND);