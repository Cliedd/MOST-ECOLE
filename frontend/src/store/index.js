import { configureStore } from '@reduxjs/toolkit';
import authReducer        from './authSlice';
import coursesReducer     from './coursesSlice';
import notificationsReducer from './notificationsSlice';

export const store = configureStore({
  reducer: {
    auth:          authReducer,
    courses:       coursesReducer,
    notifications: notificationsReducer,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware({ serializableCheck: false }),
});
