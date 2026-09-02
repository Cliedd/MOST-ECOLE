import { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  Avatar, Stack, Divider, Chip,
} from '@mui/material';
import {
  People, MenuBook, CalendarMonth, TrendingUp, Add, ArrowForward,
} from '@mui/icons-material';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts';
import MainLayout from '../../components/layout/MainLayout';
import { fetchCourses } from '../../store/coursesSlice';
import { selectUser } from '../../store/authSlice';

const MOCK_STUDENT_ACTIVITY = [
  { day: 'Lun', sessions: 12 }, { day: 'Mar', sessions: 18 },
  { day: 'Mer', sessions: 8  }, { day: 'Jeu', sessions: 24 },
  { day: 'Ven', sessions: 15 }, { day: 'Sam', sessions: 5  },
  { day: 'Dim', sessions: 3  },
];

const MOCK_UPCOMING = [
  { id: 1, student: 'Alice Dupont',    subject: 'Mathématiques', date: '2026-09-03T14:00:00', duration: 60 },
  { id: 2, student: 'Marc Lecomte',   subject: 'FSE',            date: '2026-09-04T10:00:00', duration: 45 },
  { id: 3, student: 'Sophie Bernard', subject: 'Physique',       date: '2026-09-05T16:00:00', duration: 60 },
];

const MOCK_RECENT_STUDENTS = [
  { id: 1, name: 'Alice Dupont',    level: '5ème', progress: 78, lastSeen: 'Hier' },
  { id: 2, name: 'Marc Lecomte',   level: '6ème', progress: 65, lastSeen: "Il y a 2j" },
  { id: 3, name: 'Sophie Bernard', level: '4ème', progress: 91, lastSeen: 'Aujourd\'hui' },
];

function formatApptDate(iso) {
  return new Date(iso).toLocaleDateString('fr-BE', {
    weekday: 'short', day: 'numeric', month: 'short', hour: '2-digit', minute: '2-digit',
  });
}

export default function TeacherDashboard() {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const user     = useSelector(selectUser);
  const { list: courses } = useSelector((s) => s.courses);

  useEffect(() => { dispatch(fetchCourses({})); }, [dispatch]);

  const myCourses = courses.slice(0, 4);

  const stats = [
    { label: 'Mes cours',          value: courses.length || 0, color: '#1B4F72', icon: <MenuBook /> },
    { label: 'Élèves suivis',      value: 24,                  color: '#27AE60', icon: <People /> },
    { label: 'RDV cette semaine',  value: 5,                   color: '#F39C12', icon: <CalendarMonth /> },
    { label: 'Progression moy.',   value: '76%',               color: '#9B59B6', icon: <TrendingUp /> },
  ];

  return (
    <MainLayout>
      {/* Welcome Banner */}
      <Box sx={{
        background: 'linear-gradient(135deg, #1B4F72, #117A65)',
        borderRadius: 3, p: 4, mb: 3, color: 'white',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        flexWrap: 'wrap', gap: 2,
      }}>
        <Box>
          <Typography variant="h5" fontWeight={700}>
            Bonjour, {user?.firstName} ! 👋
          </Typography>
          <Typography sx={{ opacity: 0.9, mt: 0.5 }}>
            Tableau de bord enseignant · MOST ÉCOLE
          </Typography>
        </Box>
        <Button
          variant="contained"
          startIcon={<Add />}
          onClick={() => navigate('/teacher/content-builder')}
          sx={{ bgcolor: '#F39C12', '&:hover': { bgcolor: '#D68910' } }}
        >
          Créer un cours
        </Button>
      </Box>

      <Grid container spacing={3}>
        {/* Stats */}
        {stats.map((s) => (
          <Grid item xs={6} md={3} key={s.label}>
            <Card>
              <CardContent sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
                <Avatar sx={{ bgcolor: s.color, width: 44, height: 44 }}>{s.icon}</Avatar>
                <Box>
                  <Typography variant="h5" fontWeight={700}>{s.value}</Typography>
                  <Typography variant="caption" color="text.secondary">{s.label}</Typography>
                </Box>
              </CardContent>
            </Card>
          </Grid>
        ))}

        {/* Activity Chart */}
        <Grid item xs={12} md={7}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Activité des élèves (7 derniers jours)
              </Typography>
              <ResponsiveContainer width="100%" height={220}>
                <BarChart data={MOCK_STUDENT_ACTIVITY} margin={{ top: 5, right: 10, left: -20, bottom: 5 }}>
                  <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                  <XAxis dataKey="day" tick={{ fontSize: 12 }} />
                  <YAxis tick={{ fontSize: 12 }} />
                  <Tooltip formatter={(v) => [`${v} sessions`]} />
                  <Bar dataKey="sessions" fill="#1B4F72" radius={[6,6,0,0]} />
                </BarChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Upcoming Appointments */}
        <Grid item xs={12} md={5}>
          <Card sx={{ height: '100%' }}>
            <CardContent>
              <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
                <Typography variant="h6" fontWeight={700}>Prochains RDV</Typography>
                <Button size="small" endIcon={<ArrowForward />}
                  onClick={() => navigate('/teacher/appointments')}>
                  Tous les RDV
                </Button>
              </Box>
              <Stack spacing={2} divider={<Divider />}>
                {MOCK_UPCOMING.map((appt) => (
                  <Box key={appt.id}>
                    <Typography fontWeight={600} variant="body2">{appt.student}</Typography>
                    <Typography variant="caption" color="text.secondary">
                      {appt.subject} · {formatApptDate(appt.date)} · {appt.duration} min
                    </Typography>
                  </Box>
                ))}
              </Stack>
            </CardContent>
          </Card>
        </Grid>

        {/* Recent Students */}
        <Grid item xs={12} md={6}>
          <Card>
            <CardContent>
              <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
                <Typography variant="h6" fontWeight={700}>Élèves récents</Typography>
                <Button size="small" endIcon={<ArrowForward />}
                  onClick={() => navigate('/teacher/students')}>
                  Voir tous
                </Button>
              </Box>
              <Stack spacing={2}>
                {MOCK_RECENT_STUDENTS.map((stu) => (
                  <Stack key={stu.id} direction="row" alignItems="center" spacing={2}>
                    <Avatar sx={{ bgcolor: 'primary.main', width: 36, height: 36 }}>
                      {stu.name[0]}
                    </Avatar>
                    <Box flexGrow={1}>
                      <Typography variant="body2" fontWeight={600}>{stu.name}</Typography>
                      <Typography variant="caption" color="text.secondary">
                        {stu.level} · {stu.progress}% progression
                      </Typography>
                    </Box>
                    <Chip label={stu.lastSeen} size="small" variant="outlined" />
                  </Stack>
                ))}
              </Stack>
            </CardContent>
          </Card>
        </Grid>

        {/* My Courses Quick List */}
        <Grid item xs={12} md={6}>
          <Card>
            <CardContent>
              <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
                <Typography variant="h6" fontWeight={700}>Mes cours</Typography>
                <Button size="small" endIcon={<ArrowForward />}
                  onClick={() => navigate('/teacher/courses')}>
                  Gérer mes cours
                </Button>
              </Box>
              {myCourses.length > 0 ? (
                <Stack spacing={1.5} divider={<Divider />}>
                  {myCourses.map((c) => (
                    <Box key={c.id} display="flex" justifyContent="space-between" alignItems="center">
                      <Box>
                        <Typography variant="body2" fontWeight={600}>{c.title}</Typography>
                        <Typography variant="caption" color="text.secondary">
                          {c.subjectName} · {c.contentType}
                        </Typography>
                      </Box>
                      <Chip
                        label={c.isPublished ? 'Publié' : 'Brouillon'}
                        color={c.isPublished ? 'success' : 'default'}
                        size="small"
                      />
                    </Box>
                  ))}
                </Stack>
              ) : (
                <Box textAlign="center" py={3}>
                  <Typography color="text.secondary" mb={2}>
                    Vous n'avez pas encore créé de cours.
                  </Typography>
                  <Button variant="contained" startIcon={<Add />}
                    onClick={() => navigate('/teacher/content-builder')}>
                    Créer votre premier cours
                  </Button>
                </Box>
              )}
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
