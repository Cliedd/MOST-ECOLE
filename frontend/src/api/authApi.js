import axiosInstance from './axiosInstance';

export const authApi = {
  login:    (credentials) => axiosInstance.post('/api/auth/login', credentials),
  register: (data)        => axiosInstance.post('/api/auth/register', data),
  logout:   ()            => axiosInstance.post('/api/auth/logout'),
};
