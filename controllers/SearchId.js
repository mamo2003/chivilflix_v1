const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const filmotecaview = require("../src/modelos/filmotecaview");
const { Op } = require('sequelize');
async function SearchId (req, res) {
  try {
    const {idfilm} = req.params;

    const Allfilmoteca = await filmotecaview.findByPk(idfilm);
    console.log(Allfilmoteca);
    Allfilmoteca <= 0
      ? res
          .status(404)
          .render('pages/err3', {
            noname: ` no se encontrado films con ${idfilm}`,
          })
      : res.status(200).render('pages/pk', { Allfilmoteca: Allfilmoteca });
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { SearchId };
