const Sequelize = require('sequelize');
const db = require('../database');

const campuses = db.define('campuses', {
  name: {
    type: Sequelize.STRING,
    allownull:false,
  },
  address:{
    type: Sequelize.STRING,
    allownull:false,
  },
  description: {
    type: Sequelize.STRING,
    allownull:false,
  },
  image:{
    type:Sequelize.STRING,
  },
  primarycolor:{
    type:Sequelize.STRING,
  },
  secondarycolor:{
    type:Sequelize.STRING
  }
},{
  timestamps:false
})

module.exports = campuses;