import { configureStore } from "@reduxjs/toolkit";
import students from "./reducers/students";
import campuses from "./reducers/campuses";


const store = configureStore({
  reducer: {
    students: students.reducer,
    campuses: campuses.reducer
  }
});

export default store;