const sequelize = require('../src/conexion/connection');
const filmoteca= require('../src/modelos/product');
const { Op } = require('sequelize');
async function HomePage(req, res) {
  try {
    const Allfilmoteca = await filmoteca.findAll();
    Allfilmoteca.length !== 0
      ? res.status(200).render('pages/home', { Allfilmoteca : Allfilmoteca })
      : res
          .status(404)
          .json({ error: 'no hay datos registrados para la peticion' });
  } catch (error) {
    res
      .status(500)
      .json({ error: 'error de servidor', description: error.message });
  }
}

module.exports = { HomePage };
