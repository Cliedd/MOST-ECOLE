import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';
import { coursesApi } from '../api/coursesApi';

export const fetchCourses = createAsyncThunk(
  'courses/fetchAll',
  async (filters, { rejectWithValue }) => {
    try { return await coursesApi.getCourses(filters); }
    catch (err) { return rejectWithValue(err.response?.data?.detail || 'Erreur chargement cours'); }
  }
);

export const fetchCourse = createAsyncThunk(
  'courses/fetchOne',
  async (id, { rejectWithValue }) => {
    try { return await coursesApi.getCourse(id); }
    catch (err) { return rejectWithValue(err.response?.data?.detail || 'Cours introuvable'); }
  }
);

const coursesSlice = createSlice({
  name: 'courses',
  initialState: {
    list:     [],
    current:  null,
    loading:  false,
    error:    null,
    filters:  { levelId: null, subjectId: null },
  },
  reducers: {
    setFilters(state, action) { state.filters = { ...state.filters, ...action.payload }; },
    clearCurrent(state)       { state.current = null; },
  },
  extraReducers: (builder) => {
    builder
      .addCase(fetchCourses.pending,   (s) => { s.loading = true; s.error = null; })
      .addCase(fetchCourses.fulfilled, (s, a) => { s.loading = false; s.list = a.payload; })
      .addCase(fetchCourses.rejected,  (s, a) => { s.loading = false; s.error = a.payload; })
      .addCase(fetchCourse.pending,    (s) => { s.loading = true; })
      .addCase(fetchCourse.fulfilled,  (s, a) => { s.loading = false; s.current = a.payload; })
      .addCase(fetchCourse.rejected,   (s, a) => { s.loading = false; s.error = a.payload; });
  },
});

export const { setFilters, clearCurrent } = coursesSlice.actions;
export default coursesSlice.reducer;
