
const { DataTypes } = require('sequelize');
const sequelize = require('../conexion/connection');

const actrizfilmsviews = sequelize.define(
  'actrizfilmsviews',
  {
    idfilm: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoincremental: true,
      allowNull: true,
    },
    titulo: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    idactor: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoincremental: true,
      allowNull: true,
    },
    actor: {
      type: DataTypes.STRING,
      allowNull: false,
  }},
  { tableName: 'actrizfilmsviews', timestamps: false }
);

module.exports = actrizfilmsviews;


