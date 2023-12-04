const express = require('express');
const path = require('path');
const app = express();
const port = 3001;

const db = require('./db.js');

//fichiers statiques
app.use(express.static('public'));


// Endpoint pour récupérer toutes les données
app.get('/', (req, res) => {
   // construire le chemin absolu du fichier HTML
   const filePath = path.join(__dirname, 'aff2.html');
   
   //pour envoyer le fichier
   res.sendFile(filePath);
 });

app.get('/api/generale', (req, res) => {
  console.log('Endpoint /api/generale reached.');


  db.query('SELECT * FROM statistique_general', (error, results, fields) => {
   if (error) {
      console.error('Error executing SQL query:', error);
      throw error;
   }
   console.log('SQL query results:', results);
   res.json(results);
});
});

app.get('/api/defense', (req, res) => {
   console.log('Endpoint /api/defense reached.');
 
 
   db.query('SELECT * FROM statistique_defense', (error, results, fields) => {
    if (error) {
       console.error('Error executing SQL query:', error);
       throw error;
    }
    console.log('SQL query results:', results);
    res.json(results);
 });
 });


 app.get('/api/attaque', (req, res) => {
   console.log('Endpoint /api/attaque reached.');
 
 
   db.query('SELECT * FROM statistique_attaque', (error, results, fields) => {
    if (error) {
       console.error('Error executing SQL query:', error);
       throw error;
    }
    console.log('SQL query results:', results);
    res.json(results);
 });
 });

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
}); 
