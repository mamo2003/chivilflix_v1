const sequelize = require('../src/conexion/connection');
const actrizfilmsviews = require("../src/modelos/actrizfilmsviews");
const { Op } = require('sequelize');
async function SearchActrizFilms(req, res) {
  try {
    const Allfilmoteca = await actrizfilmsviews.findAll();
    console.log(Allfilmoteca);
    Allfilmoteca <= 0
      ? res
          .status(404)
          .render("pages/err")
      : res.status(200).render('pages/films',{Allfilmoteca:Allfilmoteca});
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { SearchActrizFilms};
