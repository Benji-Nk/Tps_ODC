Voici la version modifiée du projet en utilisant Apache au lieu des sockets :

# Application Web PHP avec Apache

Ce projet comprend deux fichiers PHP, `index.php` et `help.php`, qui démontrent l'utilisation d'Apache pour créer une application web simple.

## Description

- `index.php` : Ce fichier affiche le message "Je suis dans la page home" et écrit une entrée dans le fichier de log `log.txt`.
- `help.php` : Ce fichier affiche le message "Je suis dans la page d'aide" et journalise une erreur.

## Prérequis

- PHP version 7.0 ou supérieure
- Un serveur web Apache configuré pour exécuter du code PHP

## Installation et utilisation

1. Placez les fichiers `index.php` et `help.php` dans le répertoire approprié de votre serveur web Apache (par exemple, `/var/www/html/`).
2. Assurez-vous que le serveur web Apache est configuré pour exécuter du code PHP.
3. Accédez à `http://localhost/index.php` pour voir la page d'accueil.
4. Accédez à `http://localhost/help.php` pour voir la page d'aide.

## Explication du code

### `index.php`

Le fichier `index.php` réalise les actions suivantes :

1. Affiche le message "Je suis dans la page home".
2. Écrit une entrée dans le fichier de log `log.txt`.

### `help.php`

Le fichier `help.php` réalise les actions suivantes :

1. Affiche le message "Je suis dans la page d'aide".
2. Journalise une erreur dans le journal système.

## Configuration d'Apache

Pour que ce projet fonctionne correctement, vous devez vous assurer que votre serveur web Apache est configuré pour exécuter du code PHP. Voici les étapes typiques :

1. Assurez-vous que le module PHP est activé dans votre configuration Apache.
2. Vérifiez que le répertoire où se trouvent vos fichiers PHP (par exemple, `/var/www/html/`) est accessible par le serveur web.
3. Redémarrez le serveur Apache pour appliquer les changements de configuration.

## Remarques

- Le code de journalisation et de gestion des erreurs est minimal et devrait être amélioré dans une application de production.
- Vous pouvez ajouter d'autres fonctionnalités à votre application web en utilisant les capacités offertes par Apache et PHP.

## Auteur

- Benjamin NKONGO

## Licence

Ce projet est sous licence [MIT](LICENSE).