const sequelize = require('../src/conexion/connection');
const trailersviews = require("../src/modelos/trailersviews");
const { Op } = require('sequelize');
async function Searchtrailers(req, res) {
  try {
    const Allfilmoteca = await trailersviews.findAll();
    console.log(Allfilmoteca);
    Allfilmoteca <= 0
      ? res
          .status(404)
          .render("pages/err")
      : res.status(200).render('pages/trailer',{Allfilmoteca:Allfilmoteca});
  } catch (error) {
    res.status(500).render('pages/err');
  }
}

module.exports = { Searchtrailers};
