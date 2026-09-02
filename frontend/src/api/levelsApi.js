import axiosInstance from './axiosInstance';

export const getLevels        = ()                    => axiosInstance.get('/api/levels');
export const getLevelSubjects = (levelId)             => axiosInstance.get(`/api/levels/${levelId}/subjects`);
export const getCurriculum    = (levelId, subjectId)  => axiosInstance.get(`/api/levels/${levelId}/subjects/${subjectId}/curriculum`);
