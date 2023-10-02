const sequelize = require("../src/conexion/connection");
const filmoteca = require("../src/modelos/product");
sequelize.authenticate();
filmoteca.sync();

async function createCode(req, res) {
  try {
    const {
      poster,
      titulo,
      categoria,
      genero,
      resumen,
      temporada,
      reparto,
      trailers,
    } = req.body;

    console.log(req.body);

    const carga = await filmoteca.create({
      poster,
      titulo,
      categoria,
      genero,
      resumen,
      temporada,
      reparto,
      trailers,
    });

    console.log(carga);

    res.status(201).json(carga);
  } catch (error) {
    res.status(500).render("pages/err");
  }
}

module.exports = { createCode };
