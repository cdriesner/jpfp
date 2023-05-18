import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { updateCampus } from "../store/reducers/campuses";
import { useNavigate,useParams } from "react-router-dom";
import {NavBar} from "./index";

const UpdateCampus = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const {campuses} = useSelector(state => state);
  const {id} = useParams();

  const [name, setName] = useState('');
  const [address, setAddress] = useState('');
  const [description, setDescription] = useState('');
  const [image, setImage] = useState('');
  const [primarycolor, setPrimarycolor] = useState('');
  const [secondarycolor, setSecondarycolor] = useState('');

  React.useEffect(()=>{
    const c = campuses.find(c=> c.id === id*1);
    if(c){
      setName(c.name);
      setAddress(c.address);
      setDescription(c.description);
      setImage(c.image);
      setPrimarycolor(c.primarycolor);
      setSecondarycolor(c.secondarycolor);
    }
  },[campuses]);

  const update = async (event) => {
    event.preventDefault();
    const campus = {name, address, description, image, primarycolor, secondarycolor, id}
    await dispatch(updateCampus(campus));
    navigate('/campuses');
    location.reload();
  }

  return (
    <div id = "createPage">
      <NavBar props = {'Campus Update'}/>
      <form onSubmit={update}>
        <input placeholder = 'Campus Name' value = {name} onChange = {event => setName(event.target.value)}/>
        <input placeholder = 'Address' value = {address} onChange = {event => setAddress(event.target.value)}/>
        <input placeholder = 'Description' value = {description} onChange = {event => setDescription(event.target.value)}/>
        <input placeholder = 'image (#1-10)' value = {image} onChange = {event => setImage(event.target.value)}/>
        <input placeholder = 'Primary School Color' value = {primarycolor} onChange = {event => setPrimarycolor(event.target.value)}/>
        <input placeholder = 'Secondary School Color' value = {secondarycolor} onChange = {event => setSecondarycolor(event.target.value)}/>
        <button disabled={ name === '' || address === '' || description === '' || primarycolor === ''}>Update</button>
      </form>
    </div>
  )
}

export default UpdateCampus;