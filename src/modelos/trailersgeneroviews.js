
const { DataTypes } = require('sequelize');
const sequelize = require('../conexion/connection');

const trailersgeneroviews = sequelize.define(
  "trailersgeneroviews",
  {
    idfilms: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    titulo: {
      type: DataTypes.STRING,
    },
    poster: {
      type: DataTypes.STRING,
    },
    genero: {
      type: DataTypes.STRING,
    },
    trailers: {
      type: DataTypes.STRING,
    },
  },
  { tableName: "trailersgeneroviews", timestamps: false }
);

module.exports = trailersgeneroviews;


