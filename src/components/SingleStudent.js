import React, {useState}from "react";
import { useSelector } from "react-redux";
import { Link, useParams } from "react-router-dom";
import { NavBar } from "./index";

const SingleStudent = () => {
  const {campuses,students} = useSelector(state => state)
  const {id} = useParams();
  const [student, setStudent] = useState({firstname:''});
  const [campus, setCampus] = useState({name:'',id:'1'});

  React.useEffect(()=>{
    const s = students.find(s=> s.id === id*1);
    const c = campuses.find(campus=> campus.id === student.campusId);
    if(s){
      setStudent(s);
    }
    if(c){
      setCampus(c);
    }
  },[students,campuses,student,campus]);

  return (
    <>
      <NavBar/>
      <h1>{student.firstname} attends <Link to={`/campuses/${campus.id}`}>{campus.name}</Link></h1>
    </>
  )
}
  export default SingleStudent;