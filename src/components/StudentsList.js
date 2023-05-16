import React from "react";
import { useSelector } from "react-redux";
import { v4 as uuidv4 } from 'uuid';
import { Link } from "react-router-dom";
import { NavBar } from "./index";
import everyOther from "../../Random_Scripts/everyOther"

const StudentsList = () => {
  const {students} = useSelector(state => state);
  let count = 1;
  return(
    <div id="allStudentsPage">
      <NavBar/>
      <Link to='/students/create' style={{margin: '10px'}}>Add Student</Link>
      <h1 style={{margin: '10px'}}>students</h1>
      <ul className="studentList">
        {students.map((student)=>{
          count++;
          return( 
            <li className = "studentListItm" key={uuidv4()}>
              <div className = {everyOther(count)}>
                <img className = "studentListImg" src = {`./people/${student.image}.jpg`}/>
                <div>
                  <Link to={`/students/${student.id}`}>
                    <h2>
                      {student.firstname}
                    </h2>
                  </Link>
                  <h3><Link></Link></h3>
                  <p>{student.quote}</p>
                </div>

              </div>
            </li>
          );
        })}
      </ul>
    </div>
  )
}

export default StudentsList;