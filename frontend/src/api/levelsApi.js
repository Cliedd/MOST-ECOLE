import axiosInstance from './axiosInstance';

export const levelsApi = {
  getLevels:         ()         => axiosInstance.get('/api/levels'),
  getLevelSubjects:  (levelId)  => axiosInstance.get(`/api/levels/${levelId}/subjects`),
  getCurriculum:     (subjectId)=> axiosInstance.get(`/api/subjects/${subjectId}/curriculum`),
};
