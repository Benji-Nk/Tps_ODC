
# Création d'un serveur Node.js avec deux routes

Ce projet démontre comment créer un serveur Node.js avec deux routes simples et journaliser les logs `console.log()` et `console.error()` dans la console.

## Prérequis

- Node.js v14.0.0 ou version ultérieure installé sur votre système. Vous pouvez installer Node.js sur Amazon Linux 3 en suivant ces étapes :

1. Mettez à jour les paquets système :

```
sudo amazon-linux-extras install epel
sudo yum update -y
```

2. Installez Node.js :

```
sudo yum install -y nodejs
```

3. Vérifiez la version installée :

```
node -v
```

- Un éditeur de code, comme Visual Studio Code, pour éditer et exécuter le code.

## Installation

1. Ouvrez un terminal dans le répertoire où vous souhaitez stocker le projet.

2. Installez les dépendances :

```
npm install
```

## Utilisation

1. Démarrez le serveur :

```
node server.js
```

2. Ouvrez un navigateur web et accédez aux routes suivantes :

   - `http://localhost:5000/` : affiche "Hello, je suis dans home" et journalise le message `'tout s'est bien passé dans le home'` dans la console.
   - `http://localhost:5000/help` : affiche "Hello, je suis dans help" et journalise l'erreur simulée `'ceci est une simulation d'erreur'` dans la console.

## Explication du code

1. Le code commence par importer les modules `express` et `fs` (File System) de Node.js.
2. Un serveur Express est créé et configuré pour écouter sur le port `5000`.
3. Deux routes sont définies :
   - La route `/` affiche un message de succès et le journalise dans la console.
   - La route `/help` simule une erreur, l'affiche dans la console et la journalise dans la console.
4. Le serveur démarre et affiche un message dans la console.

## Remarques

- Pour une utilisation en production, il est recommandé d'utiliser un système de journalisation plus sophistiqué, comme Winston ou Morgan, qui offrent de meilleures fonctionnalités de journalisation.