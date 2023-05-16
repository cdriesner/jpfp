import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { createStudent } from "../store/reducers/students";
import { useNavigate } from "react-router-dom";
import { v4 as uuidv4 } from 'uuid'

const CreateStudent = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const {campuses} = useSelector(state => state);

  const [firstname, setFirstname] = useState('');
  const [lastname, setLastname] = useState('');
  const [email,setEmail] = useState('');
  const [gpa,setGpa] = useState('');
  const [image,setImage] = useState('');
  const [campusId,setCampusId] = useState('');

  const create = async (event) => {
    event.preventDefault();
    const student = {firstname, lastname, email, image, gpa, campusId}
    await dispatch(createStudent(student));
    navigate('/');
  }

  return (
    <form onSubmit={create}>
      <input value={firstname} onChange = {event => setFirstname(event.target.value)}/>
      <input value={lastname} onChange = {event => setLastname(event.target.value)}/>
      <input value={email} onChange = {event => setEmail(event.target.value)}/>
      <input value={gpa} onChange = {event => setGpa(event.target.value)}/>
      <input value={image} onChange = {event => setImage(event.target.value)}/>
      <select value={ campusId } onChange={ event => setCampusId(event.target.value)}>
        <option value=''>choose a campus</option>
        {
          campuses.map( campus => {
            return (
              <option key={ uuidv4() } value={ campus.id }>{ campus.name }</option>
            );
          })
        }
      </select>
      <button disabled={ firstname === '' || lastname === '' || campusId === '' || email === '' || gpa === ''}>Create</button>
    </form>
  )
}

export default CreateStudent;