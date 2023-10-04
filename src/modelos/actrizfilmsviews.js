
const { DataTypes } = require('sequelize');
const sequelize = require('../conexion/connection');

const actrizfilmsviews = sequelize.define(
  "actrizfilmsviews",
  {
    idfilms: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    titulo: {
      type: DataTypes.STRING,
    },
    idactor: {
      type: DataTypes.STRING,
    },
    actor: {
      type: DataTypes.STRING,
    },
  },
  { tableName: "actrizfilmsviews", timestamps: false }
);

module.exports = actrizfilmsviews;


