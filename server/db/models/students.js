const Sequalize = require('sequelize');
const db = require('../database');

const students = db.define('students', {
  firstname:{
    type:Sequalize.STRING,
    allownull:false
  },
  lastname:{
    type:Sequalize.STRING,
    allownull:false
  },
  email:{
    type:Sequalize.STRING,
    allownull:false
  },
  image:{
    type:Sequalize.STRING,
  },
  gpa:{
    type:Sequalize.STRING,
    allownull:false
  },
  quote: {
    type:Sequalize.STRING,
  }
},{
  timestamps:false
})

module.exports = students;