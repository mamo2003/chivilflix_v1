const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const filmotecaview = require("../src/modelos/filmotecaview");
const filmsactricessview = require("../src/modelos/filmsactricessview");
const { Op } = require('sequelize');
const router = require('express').Router();
const path = require('path');
const ProductsRouter = require('./products');

router.use('/', ProductsRouter);

module.exports = router;
