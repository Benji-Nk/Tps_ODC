const express = require('express');
const app = express();

// Route "help"
app.get('/help', (req, res) => {
    res.status(200).send('Ceci est la page d\'aide.');
    console.error('Ceci est une simulation d\'erreur');
});

module.exports = app;
