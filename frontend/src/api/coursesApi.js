import axiosInstance from './axiosInstance';

export const coursesApi = {
  getCourses:   (filters = {}) => axiosInstance.get('/api/courses', { params: filters }),
  getCourse:    (id)           => axiosInstance.get(`/api/courses/${id}`),
  createCourse: (data)         => axiosInstance.post('/api/courses', data),
  updateCourse: (id, data)     => axiosInstance.put(`/api/courses/${id}`, data),
  deleteCourse: (id)           => axiosInstance.delete(`/api/courses/${id}`),
};
