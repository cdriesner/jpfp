const express = require('express')
const path = require('path')
const cors = require('cors')
const volleyball = require('volleyball')
const app = express()
const campusesRouter = require('./routes/campuses');
const studentsRouter = require('./routes/students')

// static middleware
app.use(express.static(path.join(__dirname, '..','public')))

app.use(cors())
app.use(volleyball);
app.use(express.json());

app.use('/api/campuses',campusesRouter)
app.use('/api/students', studentsRouter);

app.use((err,req,res,next)=>{
  console.log(err);
  res.send(err.message);
})

app.use("*", (req, res) => {
  res.sendFile(path.join(__dirname, "../public/index.html"));
});

module.exports = app;

