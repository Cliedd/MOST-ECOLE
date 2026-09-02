import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';
import { authApi } from '../api/authApi';

// Async thunks
export const loginThunk = createAsyncThunk(
  'auth/login',
  async (credentials, { rejectWithValue }) => {
    try {
      const data = await authApi.login(credentials);
      localStorage.setItem('token', data.accessToken);
      localStorage.setItem('user', JSON.stringify(data));
      return data;
    } catch (err) {
      return rejectWithValue(err.response?.data?.detail || 'Identifiants incorrects');
    }
  }
);

export const registerThunk = createAsyncThunk(
  'auth/register',
  async (userData, { rejectWithValue }) => {
    try {
      const data = await authApi.register(userData);
      localStorage.setItem('token', data.accessToken);
      localStorage.setItem('user', JSON.stringify(data));
      return data;
    } catch (err) {
      return rejectWithValue(err.response?.data?.detail || "Erreur lors de l'inscription");
    }
  }
);

const savedUser = (() => {
  try { return JSON.parse(localStorage.getItem('user')); }
  catch { return null; }
})();

const authSlice = createSlice({
  name: 'auth',
  initialState: {
    user:            savedUser,
    token:           localStorage.getItem('token'),
    isAuthenticated: !!localStorage.getItem('token'),
    loading:         false,
    error:           null,
  },
  reducers: {
    logout(state) {
      state.user            = null;
      state.token           = null;
      state.isAuthenticated = false;
      state.error           = null;
      localStorage.removeItem('token');
      localStorage.removeItem('user');
    },
    clearError(state) { state.error = null; },
  },
  extraReducers: (builder) => {
    const handlePending  = (state) => { state.loading = true; state.error = null; };
    const handleFulfilled = (state, action) => {
      state.loading         = false;
      state.user            = action.payload;
      state.token           = action.payload.accessToken;
      state.isAuthenticated = true;
    };
    const handleRejected = (state, action) => {
      state.loading = false;
      state.error   = action.payload;
    };

    builder
      .addCase(loginThunk.pending,    handlePending)
      .addCase(loginThunk.fulfilled,  handleFulfilled)
      .addCase(loginThunk.rejected,   handleRejected)
      .addCase(registerThunk.pending,   handlePending)
      .addCase(registerThunk.fulfilled, handleFulfilled)
      .addCase(registerThunk.rejected,  handleRejected);
  },
});

export const { logout, clearError } = authSlice.actions;
export default authSlice.reducer;

// Selectors
export const selectUser            = (state) => state.auth.user;
export const selectIsAuthenticated = (state) => state.auth.isAuthenticated;
export const selectAuthLoading     = (state) => state.auth.loading;
export const selectAuthError       = (state) => state.auth.error;
