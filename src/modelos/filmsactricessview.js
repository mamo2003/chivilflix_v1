
const { DataTypes } = require('sequelize');
const sequelize = require('../conexion/connection');

const filmsactricessview = sequelize.define(
  "filmsactricessview",
  {
    idfilms: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    titulo: {
      type: DataTypes.STRING,
    },
    idreparto: {
      type: DataTypes.STRING,
    },
    actrices: {
      type: DataTypes.TEXT,
    },
  },
  { tableName: "filmsactricessview", timestamps: false }
);

module.exports = filmsactricessview;


