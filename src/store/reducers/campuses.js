import {createSlice, createAsyncThunk} from "@reduxjs/toolkit";
import axios from "axios";

const initialState = [];

export const fetchCampuses = createAsyncThunk('allCampuses', async ()=>{
    try {
        const {data} = await axios.get('/api/campuses');
        return data;
    } catch (err){
        console.log(err)
    }
})

const createCampus = createAsyncThunk('createCampus', async (campus)=>{
    try {
        const response = await axios.post('/api/campuses',campus);
        return response.data;
    } catch (error) {
        next(error)
    }
})

const deleteCampus = createAsyncThunk('deleteCampus', async (campus)=>{
    try {
        await axios.delete(`api/campuses/${campus.id}`);
        return campus;
    } catch (error) {
        next(error);
    }
})

const campusesSlice = createSlice({
    name: 'campuses',
    initialState,
    reducers:{},
    extraReducers:(builder)=>{
        builder.addCase(fetchCampuses.fulfilled, (state, action)=>{
            return action.payload
        })
        builder.addCase(createCampus.fulfilled, (state,action)=>{
            return [...state, action.payload];
        })
        builder.addCase(deleteCampus.fulfilled, (state, action)=> {
            return state.filter(todo => todo.id !== action.payload.id);
        })
    }
})

export default campusesSlice;
export {createCampus, deleteCampus};