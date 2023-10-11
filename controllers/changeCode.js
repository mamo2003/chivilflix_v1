const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const { Op } = require('sequelize');
async function changeCode(req, res) {
  try {
    const { idfilms } = req.params;
    const {
      titulo,
      poster,
      categoria,
      genero,
      resumen,
      temporada,
      reparto,
      trailer,
    } = req.body;
    const [filmsToUpdate] = await filmoteca.update(
      {
        titulo,
        poster,
        categoria,
        genero,
        resumen,
        temporada,
        reparto,
        trailer,
      },
      { where: { id } }
    );
    if (filmsToUpdate === 0) {
      return res
        .status(404)
        .render('pages/err3', {
          noname: ` no se encontrado films con ${filmsToUpdate}`,
        });
    }
    const updatefilms = await filmoteca.findByPk(idfilms);
    res.status(200).json(updatefilms);
  } catch (error) {
    res.status(500).render('pages/err');
  }
}
module.exports = { changeCode };
