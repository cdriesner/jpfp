import {createSlice, createAsyncThunk} from "@reduxjs/toolkit";
import axios from "axios";

const initialState = [];

export const fetchStudents = createAsyncThunk('allStudents', async ()=>{
    try {
        const {data} = await axios.get('/api/students');
        return data;
    } catch (err){
        console.log(error)
    }
})

const createStudent = createAsyncThunk('createStudent', async (student)=>{
    try {
        const response = await axios.post('/api/students',student);
        return response.data;
    } catch (error) {
        console.log(error)
    }
})

const deleteStudent = createAsyncThunk('deleteStudent', async (student)=>{
    try {
        await axios.delete(`api/students/${student.id}`);
        return student;
    } catch (error) {
        console.log(error)
    }
})

const updateStudent = createAsyncThunk('updateStudent', async (student)=> {
    try {
        const response = await axios.put(`/api/students/${student.id}`, student)
        return response.data;
    } catch (error) {
        console.log(error)
    }
});

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
            return state.filter(student => student.id !== action.payload.id);
        })
        builder.addCase(updateStudent.fulfilled, (state, action)=> {
            return state.map(student => student.id === action.payload.id ? action.payload: student);
        })
    }
})

export default studentsSlice;
export {createStudent, deleteStudent, updateStudent};