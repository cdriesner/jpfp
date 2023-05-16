const Sequalize = require('sequelize');
const db = require('./database');
const campuses = require("./models/campuses")
const students = require("./models/students")

campuses.hasMany(students);
students.belongsTo(campuses);

module.exports = {
  db,
  campuses,
  students
}