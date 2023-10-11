const { DataTypes } = require('sequelize');
const sequelize = require('../conexion/connection');

const filmoteca = sequelize.define(
  'filmoteca',
  {
    idfilms: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoincremental: true,
      allowNull: true,
    },
    poster: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    titulo: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    categoria: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    genero: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    resumen: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    temporada: {
      type: DataTypes.INTEGER,
    },
    reparto: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    trailers: {
      type: DataTypes.STRING,
    }
  },
  { tableName: 'filmoteca', timestamps: false }
);

module.exports = filmoteca;