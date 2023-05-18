import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { updateStudent } from "../store/reducers/students";
import { useNavigate,useParams } from "react-router-dom";
import { v4 as uuidv4 } from 'uuid'
import {NavBar} from "./index";

const UpdateStudent = () => {
  const {students, campuses} = useSelector(state => state);
  const {id} = useParams();

  const [firstname, setFirstname] = useState('');
  const [lastname, setLastname] = useState('');
  const [email,setEmail] = useState('');
  const [gpa,setGpa] = useState('');
  const [image,setImage] = useState('');
  const [campusId,setCampusId] = useState('');
  const [quote,setQuote] = useState('');

  React.useEffect(()=>{
    const s = students.find(s=> s.id === id*1);
    if(s){
      setFirstname(s.firstname);
      setLastname(s.lastname);
      setEmail(s.email);
      setGpa(s.gpa);
      setImage(s.image);
      setCampusId(s.campusId);
      setQuote(s.quote)
    }
  },[students]);

  const dispatch = useDispatch();
  const navigate = useNavigate();

  const update = async (event) => {
    event.preventDefault();
    const s = {firstname, lastname, email, image, gpa, campusId, quote, id}
    await dispatch(updateStudent(s));
    navigate('/');
    location.reload();
  }

  return (
    <div id = "createPage">
      <NavBar props = {'Student Update'}/>
      <form onSubmit={update}>
        <input placeholder = "First Name" value={firstname} onChange = {event => setFirstname(event.target.value)}/>
        <input placeholder = "Last Name" value={lastname} onChange = {event => setLastname(event.target.value)}/>
        <input placeholder = "email" value={email} onChange = {event => setEmail(event.target.value)}/>
        <input placeholder = "gpa" value={gpa} onChange = {event => setGpa(event.target.value)}/>
        <input placeholder = "image (#1-32)" value={image} onChange = {event => setImage(event.target.value)}/>
        <input id="quoteInput" placeholder = "quote" value={quote} onChange = {event => setQuote(event.target.value)}/>
        <select value={ campusId } onChange={ event => setCampusId(event.target.value)}>
          {
            campuses.map( campus => {
              return (
                <option key={ uuidv4() } value={ campus.id }>{ campus.name }</option>
              );
            })
          }
        </select>
        <button disabled={ firstname === '' || lastname === '' || campusId === '' || email === '' || gpa === ''}>Update</button>
      </form>
    </div>
  )
}

export default UpdateStudent