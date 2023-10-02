const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const { Op } = require('sequelize');
async function SearchCat(req, res) {
  try {
    const { categoria } = req.params;
    const Allfilmoteca = await filmoteca.findAll({
      where: { categoria: { [Op.substring]: `%${categoria}%` } },
    });
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

module.exports = { SearchCat };
