import React from 'react';
import {StudentsList, CampusesList, SingleStudent, SingleCampus, CreateStudent, CreateCampus, UpdateStudent, UpdateCampus} from'./index';
import { fetchStudents } from '../store/reducers/students';
import { useDispatch } from 'react-redux';
import { fetchCampuses } from '../store/reducers/campuses';
import { Route, Routes } from 'react-router-dom';

const Main = () => {

    const dispatch = useDispatch();

    React.useEffect(()=> {
        dispatch(fetchStudents());
        dispatch(fetchCampuses());
      }, []);


    return (
        <div>
            <Routes>
                <Route path='/' element={<StudentsList/>}/>
                <Route path='/students' element={<StudentsList/>}/>
                <Route path='/students/:id' element={<SingleStudent/>}/>
                <Route path='/campuses' element={<CampusesList/>}/>
                <Route path='/campuses/:id' element={<SingleCampus/>}/>
                <Route path='/students/create' element={<CreateStudent/>}/>
                <Route path='/campuses/create' element={<CreateCampus/>}/>
                <Route path='/students/update/:id' element={<UpdateStudent/>}/>
                <Route path='/campuses/update/:id' element={<UpdateCampus/>}/>
            </Routes>
        </div>

    );
};

export default Main;