import React, {useState}from "react";
import { useSelector } from "react-redux";
import { Link, useParams } from "react-router-dom";
import { NavBar } from './index';
import { v4 as uuidv4} from 'uuid'

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

  console.log(campus);

  return (
    <>
      <div style={{backgroundColor:campus.primarycolor}}>
        <NavBar/>
      </div>
      <div className = "collegeAbout" style = {{backgroundImage:`url(${campus.image})`}}>
        <div>
          <h1>{campus.name}</h1>
          <h2>{campus.address}</h2>
          <p>{campus.description}</p>
        </div>
      </div>
      <div id="studentsAttendingList" style={{borderColor:campus.secondarycolor}}>
        <ul>
          {students.map((student)=>{
            if(student.campusId === campus.id){
              return(<li key = {uuidv4()}><Link to ={`/students/${student.id}`}>{student.firstname}</Link></li>)
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