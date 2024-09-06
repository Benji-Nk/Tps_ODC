const express = require('express');
const fs = require('fs');

const app = express();
const port = 5000;

// Route home
app.get('/', (req, res) => {
  console.log('tout s\'est bien passé dans le home');
  res.status(200).send('Hello, je suis dans home');
});

// Route help
app.get('/help', (req, res) => {
  try {
    throw new Error('ceci est une simulation d\'erreur');
  } catch (err) {
    console.error(err.message);
    fs.appendFileSync('log.txt', `${err.message}\n`);
    res.status(200).send('Hello, je suis dans help');
  }
});

app.listen(port, () => {
  console.log(`Serveur démarré sur le port ${port}`);
