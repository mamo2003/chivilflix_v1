const express = require('express');
const routes = require('./routes'); 
const dotenv = require('dotenv');
const path = require('path');
const sequelize = require('./src/conexion/connection');
const filmoteca = require('./src/modelos/product');
const filmotecaview = require("./src/modelos/filmotecaview");
const ejs = require('ejs');
const app = express();
const { ErrorPage } = require('./controllers/ErrorPage');
const { HomePage } = require('./controllers/HomePage');
const { Op } = require('sequelize');


dotenv.config();
//midllewords format json
app.use(express.json());
//permite acceder a image 
app.use(express.static(path.join(__dirname, 'public'))); 
//da acceso a styles css
app.use('/public', express.static('public'));
// middleword  sincronizo servidor y  tabla BD
app.use(async (req, res, next) => {
  try {
    await sequelize.authenticate();
    await filmotecaview.sync();
    next();
  } catch (error) {
    res
      .status(500)
      .json({ error: 'error en el servidor', description: error.mmessage });
  }
});  
//carga las pages ejs
app.set('views', path.join(__dirname, '/views'));
//carga los 
app.set('view engine', 'ejs');;
//usa el ruteo con /films
app.use('/films', routes);


app.get('/',HomePage);

app.get('*',ErrorPage);

//escucha en el puerto
app.listen(process.env.PORT || 3000, process.env.HOST, function () {
  console.log(
    `servidor escuchando en http:${process.env.HOST}:${process.env.PORT}`
  );
});



