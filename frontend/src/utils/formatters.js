import dayjs from 'dayjs';
import 'dayjs/locale/fr';
dayjs.locale('fr');

export const formatDate = (date) =>
  date ? dayjs(date).format('DD MMMM YYYY') : '—';

export const formatDateTime = (date) =>
  date ? dayjs(date).format('DD/MM/YYYY à HH:mm') : '—';

export const formatPercent = (value) =>
  value !== null && value !== undefined ? `${Math.round(value)} %` : '—';

export const formatLevelName = (levelNumber) => {
  const map = {
    1: '1ère secondaire',
    2: '2ème secondaire',
    3: '3ème secondaire',
    4: '4ème secondaire',
    5: '5ème secondaire',
    6: '6ème secondaire (Rhéto)',
  };
  return map[levelNumber] ?? `${levelNumber}ème secondaire`;
};

export const formatRole = (role) => {
  const map = {
    ROLE_ADMIN:   'Administrateur',
    ROLE_TEACHER: 'Professeur',
    ROLE_STUDENT: 'Élève',
    ROLE_PARENT:  'Parent',
  };
  return map[role] ?? role;
};

export const formatContentType = (type) => {
  const map = { VIDEO: 'Vidéo', TEXT: 'Texte', QUIZ: 'Quiz', EXERCISE: 'Exercice' };
  return map[type] ?? type;
};

export const getRoleRedirect = (role) => {
  if (role === 'ROLE_ADMIN')   return '/admin';
  if (role === 'ROLE_TEACHER') return '/teacher';
  return '/student';
};
