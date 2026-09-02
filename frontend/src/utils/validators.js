import * as yup from 'yup';

export const loginSchema = yup.object({
  email:    yup.string().email('Email invalide').required('Email obligatoire'),
  password: yup.string().required('Mot de passe obligatoire'),
});

export const registerSchema = yup.object({
  firstName: yup.string().min(2, 'Minimum 2 caractères').required('Prénom obligatoire'),
  lastName:  yup.string().min(2, 'Minimum 2 caractères').required('Nom obligatoire'),
  email:     yup.string().email('Email invalide').required('Email obligatoire'),
  password:  yup.string().min(8, 'Minimum 8 caractères').required('Mot de passe obligatoire'),
  confirmPassword: yup.string()
    .oneOf([yup.ref('password')], 'Les mots de passe ne correspondent pas')
    .required('Confirmation obligatoire'),
  role: yup.string().oneOf(['ROLE_STUDENT', 'ROLE_TEACHER']).required('Rôle obligatoire'),
});

export const courseSchema = yup.object({
  title:       yup.string().min(3).required('Titre obligatoire'),
  description: yup.string(),
  subjectId:   yup.number().required('Matière obligatoire'),
  levelId:     yup.number().required('Niveau obligatoire'),
  contentType: yup.string().oneOf(['VIDEO','TEXT','QUIZ','EXERCISE']).required(),
  contentUrl:  yup.string().url('URL invalide').nullable(),
  contentText: yup.string().nullable(),
});
