import { useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  LinearProgress, Divider, Chip, Stack,
} from '@mui/material';
import { ArrowBack, PlayArrow, Quiz, CheckCircle } from '@mui/icons-material';
import MainLayout      from '../../components/layout/MainLayout';
import LoadingSpinner  from '../../components/ui/LoadingSpinner';
import LevelBadge      from '../../components/ui/LevelBadge';
import { fetchCourse }  from '../../store/coursesSlice';

export default function CourseView() {
  const { id }    = useParams();
  const dispatch  = useDispatch();
  const navigate  = useNavigate();
  const { current: course, loading } = useSelector((s) => s.courses);

  useEffect(() => { dispatch(fetchCourse(id)); }, [dispatch, id]);

  if (loading || !course) return <MainLayout><LoadingSpinner /></MainLayout>;

  return (
    <MainLayout>
      <Button startIcon={<ArrowBack />} onClick={() => navigate(-1)} sx={{ mb: 2 }}>
        Retour
      </Button>

      <Grid container spacing={3}>
        {/* Main content */}
        <Grid item xs={12} md={8}>
          <Card>
            <CardContent>
              <Stack direction="row" gap={1} mb={2} flexWrap="wrap">
                <LevelBadge levelNumber={course.levelNumber} />
                <Chip label={course.subjectName} variant="outlined" size="small" />
                <Chip label={course.contentType} color="primary" size="small" />
              </Stack>
              <Typography variant="h4" fontWeight={700} gutterBottom>{course.title}</Typography>
              <Typography color="text.secondary" gutterBottom>
                Par {course.teacherName ?? 'Équipe pédagogique MOST ÉCOLE'}
              </Typography>
              <Divider sx={{ my: 2 }} />

              {course.contentType === 'VIDEO' && course.contentUrl && (
                <Box sx={{ position: 'relative', paddingTop: '56.25%', bgcolor: '#000', borderRadius: 2, overflow: 'hidden', mb: 2 }}>
                  <iframe
                    src={course.contentUrl}
                    style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', border: 'none' }}
                    allowFullScreen
                    title={course.title}
                  />
                </Box>
              )}

              {course.contentText && (
                <Box sx={{ '& p': { mb: 2 }, '& h2,h3': { mt: 3, mb: 1 } }}>
                  <Typography variant="body1" sx={{ whiteSpace: 'pre-wrap', lineHeight: 1.8 }}>
                    {course.contentText}
                  </Typography>
                </Box>
              )}
            </CardContent>
          </Card>
        </Grid>

        {/* Right sidebar */}
        <Grid item xs={12} md={4}>
          <Card sx={{ mb: 2 }}>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>Ma progression</Typography>
              <Box mb={1}>
                <Box display="flex" justifyContent="space-between">
                  <Typography variant="body2" color="text.secondary">Avancement</Typography>
                  <Typography variant="body2" fontWeight={600}>35 %</Typography>
                </Box>
                <LinearProgress variant="determinate" value={35}
                  sx={{ mt: 1, height: 10, borderRadius: 5 }} />
              </Box>
              <Button variant="contained" fullWidth startIcon={<CheckCircle />} sx={{ mt: 2 }}>
                Marquer comme terminé
              </Button>
            </CardContent>
          </Card>

          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>Quiz associés</Typography>
              <Typography variant="body2" color="text.secondary" mb={2}>
                Testez vos connaissances après avoir étudié ce cours.
              </Typography>
              <Button variant="outlined" fullWidth startIcon={<Quiz />}>
                Commencer le quiz
              </Button>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
