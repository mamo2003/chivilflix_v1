const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const filmotecaview = require("../src/modelos/filmotecaview");
const { Op } = require('sequelize');
async function SearchFilm(req, res) {
  try {
    const { query } = req.params;
    const Allfilmoteca = await filmotecaview.findAll({
      where: { titulo: { [Op.like]: `%${query}%` } },
    });
    Allfilmoteca <= 0
      ? res.status(404).render('pages/err3',{noname: ` no se encontrado films que se llame ${query}` })
      : res.status(200).render('pages/film', { Allfilmoteca: Allfilmoteca });
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { SearchFilm };
