const express = require('express');
const app = express();
const port = 5000;

// Route "home"
app.get('/', (req, res) => {
    res.status(200).send('Bienvenue sur la page d\'accueil !');
    console.log('Tout s\'est bien passé dans le home');
});

app.listen(port, () => {
    console.log(`Serveur Express en cours d'exécution sur le port ${port}`);
});
