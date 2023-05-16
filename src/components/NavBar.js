import React from "react";
import { Link } from "react-router-dom";
import { useSelector } from "react-redux";

const NavBar = () => {
  const {students,campuses} = useSelector(state => state);
  return (
    <div id="navBar">
      <div id ="counter">
        <p>Campuses: {campuses.length}</p>
        <p>Students: {students.length}</p>
      </div>
      <div id="navLinks">
        <Link to="/students">Students</Link>
        <Link to="/campuses">Campuses</Link>
      </div>
    </div>
  )
}

export default NavBar;