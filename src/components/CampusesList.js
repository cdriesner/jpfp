import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { v4 as uuidv4 } from 'uuid';
import { Link } from "react-router-dom";
import { NavBar } from './index';
import { deleteCampus } from "../store/reducers/campuses";

const WarningPopup = (props) =>{
  const campus = props.props
  const [isOpen,setIsOpen] = useState(false);
  const dispatch = useDispatch();
  const onDelete = () => {
    dispatch(deleteCampus(campus));
    location.reload();
  }
  return (
    <div>
      <button onClick={() => setIsOpen(true)}>Delete</button>
      {isOpen && (
        <div id="deletePopup1">
          <div id="deletePopup2">
            <h1>Warning</h1>
            <h2>Deleting a campus will delete all students associated with it.</h2>
            <button id = "popupDeleteButton" onClick={()=>{onDelete()}}>Delete</button>
            <button id = "popupCloseButton" onClick={() => setIsOpen(false)}>X</button>
          </div>
        </div>
      )}
    </div>
  ); 
}

const CampusesList = () => {
  const {campuses, students} = useSelector(state => state);
  let colors = '';
  campuses.map((campus)=>{
    colors += `${campus.secondarycolor}, `
  })
  colors = colors.substring(0,colors.length - 2)
  console.log(colors)
  return(
    <div style = {{backgroundImage: `linear-gradient(black,black,${colors},black)`}}>
      <NavBar props={'All Campuses'}/>
      <Link id = "addCampusLink"to = {'/campuses/create'}>Add Campus</Link>
      <ul>
        {campuses.map((campus)=>{
          return(
            <li id = "campusListItm" key={uuidv4()} style={{backgroundColor: campus.secondarycolor, borderColor: campus.primarycolor}}> 
              <Link to={`/campuses/${campus.id}`}>
                <h2>{campus.name}</h2>
              </Link>
              <h3>Students attending: {students.filter(student=>student.campusId === campus.id).length}</h3>
              <WarningPopup props = {campus}/>
            </li>
          );
        })}
      </ul>
    </div>
  )
}

export default CampusesList;