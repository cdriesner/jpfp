import React from "react";
import { Link } from "react-router-dom";
import { useSelector } from "react-redux";

const NavBar = (props) => {
  const head = props.props;
  const {students,campuses} = useSelector(state => state);
  return (
    <div id="navContainer">
      <div id="navBar">
        <div id ="counter">
          <p>Campuses: {campuses.length}</p>
          <p>Students: {students.length}</p>
        </div>
        <h1>{head}</h1>
        <div id="navLinks">
          <Link to="/students">Students</Link>
          <Link to="/campuses">Campuses</Link>
        </div>
      </div>
    </div>
    
  )
}

export default NavBar;