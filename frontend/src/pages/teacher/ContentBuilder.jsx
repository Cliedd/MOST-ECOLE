import { useState, useEffect } from 'react';
import { useNavigate, useSearchParams } from 'react-router-dom';
import { useForm, Controller } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import * as yup from 'yup';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  TextField, MenuItem, Stack, Alert, Stepper, Step, StepLabel,
  Chip, Divider,
} from '@mui/material';
import {
  ArrowBack, ArrowForward, Save, Publish, VideoCall, Article, Quiz, Edit,
} from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';
import { getLevels, getLevelSubjects } from '../../api/levelsApi';

const schema = yup.object({
  title:       yup.string().min(5, 'Minimum 5 caractères').required('Titre requis'),
  description: yup.string().min(20, 'Minimum 20 caractères').required('Description requise'),
  levelId:     yup.number().required('Niveau requis'),
  subjectId:   yup.number().required('Matière requise'),
  contentType: yup.string().required('Type de contenu requis'),
  contentUrl:  yup.string().url('URL invalide').nullable(),
  contentText: yup.string().nullable(),
});

const CONTENT_TYPES = [
  { value: 'VIDEO',    label: 'Vidéo',     icon: <VideoCall /> },
  { value: 'TEXT',     label: 'Texte',     icon: <Article /> },
  { value: 'QUIZ',     label: 'Quiz',      icon: <Quiz /> },
  { value: 'EXERCISE', label: 'Exercice',  icon: <Edit /> },
];

const STEPS = ['Informations générales', 'Contenu', 'Publication'];

export default function ContentBuilder() {
  const navigate        = useNavigate();
  const [searchParams]  = useSearchParams();
  const editId          = searchParams.get('edit');
  const [activeStep,    setActiveStep]    = useState(0);
  const [levels,        setLevels]        = useState([]);
  const [subjects,      setSubjects]      = useState([]);
  const [saveStatus,    setSaveStatus]    = useState(null); // 'saved' | 'error'

  const { control, handleSubmit, watch, setValue, formState: { errors } } = useForm({
    resolver: yupResolver(schema),
    defaultValues: {
      title: '', description: '', levelId: '', subjectId: '',
      contentType: 'VIDEO', contentUrl: '', contentText: '',
    },
  });

  const watchedLevel       = watch('levelId');
  const watchedContentType = watch('contentType');

  useEffect(() => {
    getLevels().then((data) => setLevels(data)).catch(() => {});
  }, []);

  useEffect(() => {
    if (watchedLevel) {
      getLevelSubjects(watchedLevel)
        .then((data) => { setSubjects(data); setValue('subjectId', ''); })
        .catch(() => {});
    }
  }, [watchedLevel, setValue]);

  const onSubmit = async (data, publish = false) => {
    try {
      // TODO: dispatch createCourse / updateCourse
      console.log('Saving course:', { ...data, isPublished: publish });
      setSaveStatus('saved');
      setTimeout(() => navigate('/teacher/courses'), 1500);
    } catch {
      setSaveStatus('error');
    }
  };

  const handleSaveDraft  = handleSubmit((data) => onSubmit(data, false));
  const handlePublish    = handleSubmit((data) => onSubmit(data, true));

  return (
    <MainLayout>
      <Button startIcon={<ArrowBack />} onClick={() => navigate(-1)} sx={{ mb: 2 }}>
        Retour
      </Button>

      <Typography variant="h4" fontWeight={700} gutterBottom>
        {editId ? 'Modifier le cours' : 'Créer un cours'}
      </Typography>

      <Stepper activeStep={activeStep} sx={{ mb: 4 }}>
        {STEPS.map((label) => (
          <Step key={label}><StepLabel>{label}</StepLabel></Step>
        ))}
      </Stepper>

      {saveStatus === 'saved' && (
        <Alert severity="success" sx={{ mb: 3 }}>Cours sauvegardé avec succès !</Alert>
      )}
      {saveStatus === 'error' && (
        <Alert severity="error" sx={{ mb: 3 }}>Une erreur est survenue. Veuillez réessayer.</Alert>
      )}

      <Grid container spacing={3}>
        <Grid item xs={12} md={8}>
          {/* Step 0 – General info */}
          {activeStep === 0 && (
            <Card>
              <CardContent>
                <Typography variant="h6" fontWeight={700} gutterBottom>
                  Informations générales
                </Typography>
                <Stack spacing={3} mt={2}>
                  <Controller name="title" control={control} render={({ field }) => (
                    <TextField {...field} label="Titre du cours *" fullWidth
                      error={!!errors.title} helperText={errors.title?.message} />
                  )} />
                  <Controller name="description" control={control} render={({ field }) => (
                    <TextField {...field} label="Description *" fullWidth multiline rows={4}
                      error={!!errors.description} helperText={errors.description?.message} />
                  )} />
                  <Grid container spacing={2}>
                    <Grid item xs={12} sm={6}>
                      <Controller name="levelId" control={control} render={({ field }) => (
                        <TextField {...field} select label="Niveau *" fullWidth
                          error={!!errors.levelId} helperText={errors.levelId?.message}>
                          {levels.map((l) => (
                            <MenuItem key={l.id} value={l.id}>{l.displayName}</MenuItem>
                          ))}
                        </TextField>
                      )} />
                    </Grid>
                    <Grid item xs={12} sm={6}>
                      <Controller name="subjectId" control={control} render={({ field }) => (
                        <TextField {...field} select label="Matière *" fullWidth
                          disabled={!watchedLevel}
                          error={!!errors.subjectId} helperText={errors.subjectId?.message}>
                          {subjects.map((s) => (
                            <MenuItem key={s.id} value={s.id}>{s.name}</MenuItem>
                          ))}
                        </TextField>
                      )} />
                    </Grid>
                  </Grid>
                </Stack>
              </CardContent>
            </Card>
          )}

          {/* Step 1 – Content */}
          {activeStep === 1 && (
            <Card>
              <CardContent>
                <Typography variant="h6" fontWeight={700} gutterBottom>Type de contenu</Typography>
                <Stack direction="row" spacing={2} flexWrap="wrap" gap={1} mb={3}>
                  {CONTENT_TYPES.map((ct) => (
                    <Chip
                      key={ct.value}
                      icon={ct.icon}
                      label={ct.label}
                      onClick={() => setValue('contentType', ct.value)}
                      color={watchedContentType === ct.value ? 'primary' : 'default'}
                      variant={watchedContentType === ct.value ? 'filled' : 'outlined'}
                      clickable
                    />
                  ))}
                </Stack>
                <Divider sx={{ mb: 3 }} />

                {(watchedContentType === 'VIDEO') && (
                  <Controller name="contentUrl" control={control} render={({ field }) => (
                    <TextField {...field} label="URL de la vidéo (YouTube embed ou autre)" fullWidth
                      placeholder="https://www.youtube.com/embed/..."
                      error={!!errors.contentUrl} helperText={errors.contentUrl?.message} />
                  )} />
                )}

                {(watchedContentType === 'TEXT' || watchedContentType === 'EXERCISE') && (
                  <Controller name="contentText" control={control} render={({ field }) => (
                    <TextField {...field} label="Contenu du cours" fullWidth multiline rows={12}
                      placeholder="Rédigez ici le contenu de votre cours..."
                      error={!!errors.contentText} helperText={errors.contentText?.message} />
                  )} />
                )}

                {watchedContentType === 'QUIZ' && (
                  <Alert severity="info">
                    Les quiz sont construits dans l'éditeur de quiz dédié après la création du cours.
                    Sauvegardez d'abord ce cours, puis accédez à l'onglet "Quiz".
                  </Alert>
                )}
              </CardContent>
            </Card>
          )}

          {/* Step 2 – Publication */}
          {activeStep === 2 && (
            <Card>
              <CardContent>
                <Typography variant="h6" fontWeight={700} gutterBottom>Récapitulatif</Typography>
                <Stack spacing={2} mt={2}>
                  <Box>
                    <Typography variant="caption" color="text.secondary">TITRE</Typography>
                    <Typography fontWeight={600}>{watch('title') || '—'}</Typography>
                  </Box>
                  <Box>
                    <Typography variant="caption" color="text.secondary">DESCRIPTION</Typography>
                    <Typography variant="body2">{watch('description') || '—'}</Typography>
                  </Box>
                  <Box>
                    <Typography variant="caption" color="text.secondary">TYPE</Typography>
                    <Typography fontWeight={600}>{watch('contentType')}</Typography>
                  </Box>
                </Stack>
                <Divider sx={{ my: 3 }} />
                <Stack direction="row" spacing={2}>
                  <Button variant="outlined" startIcon={<Save />} onClick={handleSaveDraft} fullWidth>
                    Sauvegarder en brouillon
                  </Button>
                  <Button variant="contained" startIcon={<Publish />} onClick={handlePublish} fullWidth>
                    Publier maintenant
                  </Button>
                </Stack>
              </CardContent>
            </Card>
          )}

          {/* Navigation buttons */}
          <Stack direction="row" spacing={2} mt={3} justifyContent="flex-end">
            {activeStep > 0 && (
              <Button startIcon={<ArrowBack />} onClick={() => setActiveStep((s) => s - 1)}>
                Précédent
              </Button>
            )}
            {activeStep < STEPS.length - 1 && (
              <Button variant="contained" endIcon={<ArrowForward />}
                onClick={() => setActiveStep((s) => s + 1)}>
                Suivant
              </Button>
            )}
          </Stack>
        </Grid>

        {/* Sidebar tips */}
        <Grid item xs={12} md={4}>
          <Card sx={{ bgcolor: 'primary.50', border: '1px solid', borderColor: 'primary.200' }}>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom color="primary">
                💡 Conseils pédagogiques
              </Typography>
              <Stack spacing={1.5}>
                {[
                  'Limitez chaque cours à un concept clair et précis.',
                  'Les vidéos de moins de 10 minutes favorisent la concentration.',
                  'Accompagnez chaque cours d\'un quiz de validation.',
                  'Référencez les UAA correspondants dans la description.',
                  'Utilisez des exemples concrets liés au contexte belge.',
                ].map((tip, i) => (
                  <Typography key={i} variant="body2" color="text.secondary">
                    {i + 1}. {tip}
                  </Typography>
                ))}
              </Stack>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
