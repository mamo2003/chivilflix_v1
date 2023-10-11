const sequelize = require('../src/conexion/connection');
const filmoteca = require('../src/modelos/product');
const { Op } = require('sequelize');
async function DeleteCode(req, res) {
  try {
    const { idfilms } = req.params;
    const filmsToDelete = await filmoteca.findByPk(idfilms);
    if (!filmsToDelete) {
      return res.status(404).render('pages/err3',{noname: ` no se encontrado films con ${filmsToDelete}` });
    }
    await filmsToDelete.destroy();
    res.status(204).send();
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { DeleteCode };
