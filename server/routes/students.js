const express = require('express');
const router = express();
const {students} = require('../db/index');

router.get('/', async (req,res,next)=>{
  try {
    const data = await students.findAll({order: [['id','DESC']]});
    res.send(data);
  } catch (error) {
    next(error);
  }
});

router.post('/', async (req,res,next) => {
  try {
    const student = students.create(req.body);
    res.send(student);
  } catch (error) {
    next(error);
  }
})

router.get('/:id', async (req,res,next)=>{
  try {
    const data = await students.findByPk(req.params.id);
    res.send(data)
  } catch (error) {
    next(error);
  }
})

router.delete('/:id', async (req,res,next)=>{
  try {
    const student = await students.findByPk(req.params.id);
    await student.destroy();
    res.sendStatus(204);
  } catch (error) {
    next(error);
  }
})

router.put('/:id', async(req, res, next)=> {
  try {
    const student = await students.findByPk(req.params.id);
    await student.update(req.body);
    res.send(student);
  }
  catch(error){
    next(error);
  }
});

module.exports = router;