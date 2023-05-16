import React from "react";
import { useSelector } from "react-redux";
import { v4 as uuidv4 } from 'uuid';
import { Link } from "react-router-dom";
import { NavBar } from './index';

const CampusesList = () => {
  const {campuses, students} = useSelector(state => state);
  return(
    <>
      <NavBar/>
      <h1>campuses</h1>
      <Link to = '/campuses/create'>Add Campus</Link>
      <ul>
        {campuses.map((campus)=>{
          return(
            <li key={uuidv4()}> 
              <Link to={`/campuses/${campus.id}`}>
                <h2>
                  {campus.name}{students.filter(student=>student.campusId === campus.id).length}
                </h2>
              </Link>
            </li>
          );
        })}
      </ul>
    </>
  )
}

export default CampusesList;