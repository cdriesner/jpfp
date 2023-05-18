const express = require('express');
const router = express();
const {campuses} = require('../db/index');

router.get('/', async (req,res,next)=>{
  try {
    const data = await campuses.findAll({order: [['id','DESC']]});
    res.send(data);
  } catch (error) {
    next(error);
  }
});

router.post('/', async (req,res,next) => {
  try {
    console.log(req.body);
    const campus = campuses.create(req.body);
    res.send(campus);
  } catch (error) {
    next(error);
  }
})

router.get('/:id', async (req,res,next)=>{
  try {
    const data = await campuses.findByPk(req.params.id);
    res.send(data)
  } catch (error) {
    next(error);
  }
})

router.delete('/:id', async (req,res,next)=>{
  try {
    const campus = await campuses.findByPk(req.params.id);
    await campus.destroy();
    res.sendStatus(204);
  } catch (error) {
    next(error);
  }
})

router.get('/:id/students', async (req,res,next)=>{
  try {
    const data = await campuses.findByPk(req.params.id);
    const students = await data.getStudents();
    res.send(students);
  } catch (error) {
    next(error);
  }
})

router.put('/:id', async(req, res, next)=> {
  try {
    const campus = await campuses.findByPk(req.params.id);
    await campus.update(req.body);
    res.send(campus);
  }
  catch(error){
    next(error);
  }
});

module.exports = router;