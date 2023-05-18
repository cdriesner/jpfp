import React, {useState}from "react";
import { useSelector,useDispatch } from "react-redux";
import { Link, useParams, useNavigate } from "react-router-dom";
import { NavBar } from './index';
import { v4 as uuidv4} from 'uuid'
import everyOther from "../../Random_Scripts/everyOther";
import { deleteStudent } from "../store/reducers/students";

const SingleCampus = () => {
  const {campuses,students} = useSelector(state => state)
  const {id} = useParams();
  const [campus, setCampus] = useState({name:''});
  React.useEffect(()=>{
    const c = campuses.find(c=> c.id === id*1);
    if(c){
      setCampus(c);
    }
  },[campuses]);

  const dispatch = useDispatch();
  const navigate = useNavigate();
  let count = 1;

  return (
    <>
      <div style={{backgroundColor:campus.primarycolor}}>
        <NavBar/>
      </div>
      <div className = "collegeAbout" style = {{backgroundImage:`url(./pictures/${campus.image}.jpg)`}}>
        <div>
          <h1>{campus.name}</h1>
          <h2>{campus.address}</h2>
          <p>{campus.description}</p>
        </div>
      </div>
      <div id="studentsAttendingList" style={{borderColor:campus.primarycolor, backgroundColor:campus.secondarycolor}}>
        <h1 style ={{textAlign: "center"}}>STUDENTS</h1>
        <ul>
          {students.map((student)=>{
            if(student.campusId === campus.id){
              count++;
              return(<li className = "studentListItm" key={uuidv4()}>
              <div className = {everyOther(count)}>
                <img className = "studentListImg" src = {`./people/${student.image}.jpg`}/>
                <div>
                  <Link to={`/students/${student.id}`}><h2>{student.firstname}</h2></Link>
                  <p>{student.quote}</p>
                  <button onClick={()=>{dispatch(deleteStudent(student))}}>Delete</button>
                  <button onClick={()=>{navigate(`/students/update/${student.id}`)}}>Update</button>
                </div>
              </div>
            </li>)
            }else{
              return
            }
          })}
        </ul>
      </div>
      
    </>
    
  )
}
  export default SingleCampus;