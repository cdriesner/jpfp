import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { createCampus } from "../store/reducers/campuses";
import { useNavigate } from "react-router-dom";
import { v4 as uuidv4 } from 'uuid'
import NavBar from "./NavBar";

const CreateStudent = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const [name, setName] = useState('');
  const [address, setAddress] = useState('');
  const [description, setDescription] = useState('');
  const [image, setImage] = useState('');
  const [primarycolor, setPrimarycolor] = useState('');
  const [secondarycolor, setSecondarycolor] = useState('');

  const create = async (event) => {
    event.preventDefault();
    const campus = {name, address, description, image, primarycolor, secondarycolor}
    await dispatch(createCampus(campus));
    navigate('/campuses');
    location.reload();
  }

  return (
    <div id = "createPage">
      <NavBar props = {'Create a Campus'}/>
      <form onSubmit={create}>
        <input placeholder = 'Campus Name' value = {name} onChange = {event => setName(event.target.value)}/>
        <input placeholder = 'Address' value = {address} onChange = {event => setAddress(event.target.value)}/>
        <input placeholder = 'Description' value = {description} onChange = {event => setDescription(event.target.value)}/>
        <input placeholder = 'image (#1-10)' value = {image} onChange = {event => setImage(event.target.value)}/>
        <input placeholder = 'Primary School Color' value = {primarycolor} onChange = {event => setPrimarycolor(event.target.value)}/>
        <input placeholder = 'Secondary School Color' value = {secondarycolor} onChange = {event => setSecondarycolor(event.target.value)}/>
        <button disabled={ name === '' || address === '' || description === '' || primarycolor === ''}>Create</button>
      </form>
    </div>
  )
}

export default CreateStudent;