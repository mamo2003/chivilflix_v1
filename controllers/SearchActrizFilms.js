const sequelize = require('../src/conexion/connection');
const ActrizFilmsviews = require('../src/modelos/actricesFilms');
const { Op } = require('sequelize');
async function SearchActrizFilms(req, res) {
  try {
    const { query } = req.params;
    const Allfilmoteca = await ActrizFilmsviews.findAll();
    Allfilmoteca <= 0
      ? res
          .status(404)
          .render("pages/err3", {
            noname: ` no se encontrado films con ${Allfilmoteca}`,
          })
      : res.status(200).render("pages/film", { Allfilmoteca: Allfilmoteca });
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { SearchActrizFilms};
