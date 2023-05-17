import {createSlice, createAsyncThunk} from "@reduxjs/toolkit";
import axios from "axios";

const initialState = [];

export const fetchStudents = createAsyncThunk('allStudents', async ()=>{
    try {
        const {data} = await axios.get('/api/students');
        return data;
    } catch (err){
        console.log(err)
    }
})

const createStudent = createAsyncThunk('createStudent', async (student)=>{
    try {
        const response = await axios.post('/api/students',student);
        return response.data;
    } catch (error) {
        next(error)
    }
})

const deleteStudent = createAsyncThunk('deleteStudent', async (student)=>{
    try {
        await axios.delete(`api/students/${student.id}`);
        return student;
    } catch (error) {
        next(error);
    }
})

const studentsSlice = createSlice({
    name: 'students',
    initialState,
    reducers:{},
    extraReducers:(builder)=>{
        builder.addCase(fetchStudents.fulfilled, (state, action)=>{
            return action.payload
        })
        builder.addCase(createStudent.fulfilled, (state,action)=>{
            return [...state, action.payload];
        })
        builder.addCase(deleteStudent.fulfilled, (state, action)=> {
            return state.filter(todo => todo.id !== action.payload.id);
        })
    }
})

export default studentsSlice;
export {createStudent, deleteStudent};