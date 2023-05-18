import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { v4 as uuidv4 } from 'uuid';
import { Link } from "react-router-dom";
import { NavBar } from "./index";
import everyOther from "../../Random_Scripts/everyOther"
import { deleteStudent } from "../store/reducers/students";
import { useNavigate } from "react-router-dom";

const StudentsList = () => {
  const {students} = useSelector(state => state);
  const dispatch = useDispatch();
  const navigate = useNavigate();
  let count = 1;
  return(
    <div id="allStudentsPage">
      <NavBar props = {'All Students'}/>
      <Link id ="addStudentLink" to='/students/create' style={{margin: '10px'}}>Add Student</Link>
      <ul className="studentList">
        {students.map((student)=>{
          count++;
          return( 
            <li className = "studentListItm" key={uuidv4()}>
              <div className = {everyOther(count)}>
                <img className = "studentListImg" src = {`./people/${student.image}.jpg`}/>
                <div>
                  <Link to={`/students/${student.id}`}><h2>{student.firstname}</h2></Link>
                  <p>{student.quote}</p>
                  <button onClick={()=>{dispatch(deleteStudent(student))}}>Delete</button>
                  <button onClick={()=>{navigate(`/students/update/${student.id}`)}}>Update</button>
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