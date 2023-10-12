const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const filmotecaview = require('../src/modelos/filmotecaview');
const { Op } = require('sequelize');
async function SearchGenero(req, res) {
  try {
    const { genero } = req.params;
    const Allfilmoteca = await filmotecaview.findAll({
      where: { genero: { [Op.substring]: `%${genero}%` } },
    });
    !Allfilmoteca 
      ? res.status(404).render('pages/err3', {noname: ` no se encontrado films del genro  ${genero}`,})
      : res.status(200).render('pages/film', { Allfilmoteca: Allfilmoteca });
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { SearchGenero };
