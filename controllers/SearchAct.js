const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const { Op } = require('sequelize');
async function SearchAct(req, res) {
  try {
    const { query } = req.params;
    const Allfilmoteca = await filmoteca.findAll({
      where: { reparto: { [Op.like]: `%${query}%` } },
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

module.exports = { SearchAct };
