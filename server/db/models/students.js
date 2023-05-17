const Sequalize = require('sequelize');
const db = require('../database');
const { DataTypes } = require("sequelize");

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
  },
  createdAt:{
    type: Sequalize.DATE,
    allownull:true
  },
  updatedAt:{
    type: Sequalize.DATE,
    allownull:true
  }
},{
})

module.exports = students;