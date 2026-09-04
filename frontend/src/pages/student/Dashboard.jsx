import { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  LinearProgress, Avatar, Chip, Stack,
} from '@mui/material';
import {
  LocalHospital, TrendingUp, CalendarMonth, EmojiEvents, ArrowForward,
} from '@mui/icons-material';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts';
import MainLayout from '../../components/layout/MainLayout';
import CourseCard  from '../../components/ui/CourseCard';
import LoadingSpinner from '../../components/ui/LoadingSpinner';
import { fetchCourses } from '../../store/coursesSlice';
import { selectUser } from '../../store/authSlice';
import { formatLevelName } from '../../utils/formatters';

const MOCK_PROGRESS = [
  { subject: 'Maths',     score: 72 },
  { subject: 'Français',  score: 85 },
  { subject: 'Sciences',  score: 68 },
  { subject: 'Histoire',  score: 78 },
  { subject: 'FSE',       score: 91 },
];

export default function StudentDashboard() {
  const dispatch   = useDispatch();
  const navigate   = useNavigate();
  const user       = useSelector(selectUser);
  const { list: courses, loading } = useSelector((s) => s.courses);

  useEffect(() => { dispatch(fetchCourses({})); }, [dispatch]);

  const recentCourses = courses.slice(0, 3);

  const coursesTermines = courses.length > 0 ? Math.floor(courses.length * 0.3) : 0;
  const coursesEnCours  = courses.length > 0 ? Math.floor(courses.length * 0.5) : 0;
  const progressionMoy  = courses.length > 0 ? '75%' : '0%';

  const progressData = courses.length > 0
    ? courses.slice(0, 6).map((c) => ({
        subject: c.subjectName?.split(' ')[0] ?? 'Matière',
        score: ((c.id?.charCodeAt(0) ?? 50) % 40) + 50,
      }))
    : MOCK_PROGRESS;

  return (
    <MainLayout>
      {/* Welcome Banner */}
      <Box sx={{
        background: 'linear-gradient(135deg, #1B4F72, #2980B9)',
        borderRadius: 3, p: 4, mb: 3, color: 'white',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        flexWrap: 'wrap', gap: 2,
      }}>
        <Box>
          <Typography variant="h5" fontWeight={700}>
            Bonjour, {user?.firstName} ! 👋
          </Typography>
          <Typography sx={{ opacity: 0.9, mt: 0.5 }}>
            {formatLevelName(user?.currentLevel ?? 1)} · Continuez votre progression
          </Typography>
        </Box>
        <Button
          variant="contained"
          startIcon={<LocalHospital />}
          onClick={() => navigate('/student/medical-prep')}
          sx={{ bgcolor: '#E74C3C', '&:hover': { bgcolor: '#C0392B' } }}
        >
          Concours médecine
        </Button>
      </Box>

      <Grid container spacing={3}>
        {/* Stats cards */}
        {[
          { label: 'Cours terminés',     value: String(coursesTermines), color: '#27AE60', icon: <EmojiEvents /> },
          { label: 'En cours',           value: String(coursesEnCours),  color: '#3498DB', icon: <TrendingUp /> },
          { label: 'Progression moy.',   value: progressionMoy,          color: '#9B59B6', icon: <TrendingUp /> },
          { label: 'Prochain RDV',       value: 'Mer',                   color: '#F39C12', icon: <CalendarMonth /> },
        ].map((stat) => (
          <Grid item xs={6} md={3} key={stat.label}>
            <Card>
              <CardContent sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
                <Avatar sx={{ bgcolor: stat.color, width: 44, height: 44 }}>
                  {stat.icon}
                </Avatar>
                <Box>
                  <Typography variant="h5" fontWeight={700}>{stat.value}</Typography>
                  <Typography variant="caption" color="text.secondary">{stat.label}</Typography>
                </Box>
              </CardContent>
            </Card>
          </Grid>
        ))}

        {/* Progression par matière */}
        <Grid item xs={12} md={7}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Ma progression par matière
              </Typography>
              <ResponsiveContainer width="100%" height={200}>
                <BarChart data={progressData} margin={{ top: 5, right: 10, left: -20, bottom: 5 }}>
                  <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                  <XAxis dataKey="subject" tick={{ fontSize: 12 }} />
                  <YAxis domain={[0, 100]} tick={{ fontSize: 12 }} />
                  <Tooltip formatter={(v) => `${v} %`} />
                  <Bar dataKey="score" fill="#1B4F72" radius={[6,6,0,0]} />
                </BarChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Concours médecine widget */}
        <Grid item xs={12} md={5}>
          <Card sx={{ height: '100%', background: 'linear-gradient(135deg, #E74C3C, #C0392B)', color: 'white' }}>
            <CardContent sx={{ height: '100%', display: 'flex', flexDirection: 'column' }}>
              <LocalHospital sx={{ fontSize: 40, mb: 1 }} />
              <Typography variant="h6" fontWeight={700}>Concours Médecine 2025</Typography>
              <Typography variant="body2" sx={{ opacity: 0.9, mt: 1, flexGrow: 1 }}>
                Préparez-vous au concours d'entrée en médecine et dentisterie de la FWB.
                Biologie, Chimie, Physique, Maths, Raisonnement.
              </Typography>
              <Stack direction="row" spacing={1} mt={2} flexWrap="wrap" gap={0.5}>
                {['Biologie','Chimie','Physique','Maths','Raisonnement'].map((s) => (
                  <Chip key={s} label={s} size="small"
                    sx={{ bgcolor: 'rgba(255,255,255,0.2)', color: 'white', fontSize: 11 }} />
                ))}
              </Stack>
              <Button
                variant="outlined"
                endIcon={<ArrowForward />}
                onClick={() => navigate('/student/medical-prep')}
                sx={{ mt: 2, borderColor: 'white', color: 'white', alignSelf: 'flex-start' }}
              >
                Commencer
              </Button>
            </CardContent>
          </Card>
        </Grid>

        {/* Cours récents */}
        <Grid item xs={12}>
          <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
            <Typography variant="h6" fontWeight={700}>Mes cours en cours</Typography>
            <Button endIcon={<ArrowForward />} onClick={() => navigate('/student/courses')}>
              Voir tous les cours
            </Button>
          </Box>
          {loading ? <LoadingSpinner /> : (
            <Grid container spacing={3}>
              {recentCourses.length > 0
                ? recentCourses.map((course) => (
                    <Grid item xs={12} sm={6} md={4} key={course.id}>
                      <CourseCard course={course} progress={(recentCourses.indexOf(course) * 23 + 15) % 85} />
                    </Grid>
                  ))
                : (
                    <Grid item xs={12}>
                      <Card sx={{ p: 4, textAlign: 'center' }}>
                        <Typography color="text.secondary">
                          Aucun cours disponible pour le moment.
                        </Typography>
                        <Button variant="contained" sx={{ mt: 2 }}
                          onClick={() => navigate('/student/courses')}>
                          Explorer les cours
                        </Button>
                      </Card>
                    </Grid>
                  )
              }
            </Grid>
          )}
        </Grid>
      </Grid>
    </MainLayout>
  );
}
