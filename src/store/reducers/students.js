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
    }
})

export default studentsSlice;
export {createStudent};