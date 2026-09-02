import {
  Box, Grid, Typography, Card, CardContent, Avatar,
  Stack, Chip, Divider, Button,
} from '@mui/material';
import {
  People, School, MenuBook, TrendingUp, AdminPanelSettings,
  PersonAdd, ArrowForward,
} from '@mui/icons-material';
import {
  AreaChart, Area, XAxis, YAxis, CartesianGrid, Tooltip,
  ResponsiveContainer, PieChart, Pie, Cell, Legend,
} from 'recharts';
import { useNavigate } from 'react-router-dom';
import MainLayout from '../../components/layout/MainLayout';

const GROWTH_DATA = [
  { month: 'Avr', students: 18, teachers: 3 },
  { month: 'Mai', students: 32, teachers: 4 },
  { month: 'Jun', students: 45, teachers: 5 },
  { month: 'Jul', students: 38, teachers: 5 },
  { month: 'Aoû', students: 52, teachers: 7 },
  { month: 'Sep', students: 78, teachers: 9 },
];

const ROLE_DISTRIBUTION = [
  { name: 'Étudiants',   value: 78, color: '#1B4F72' },
  { name: 'Enseignants', value: 9,  color: '#27AE60' },
  { name: 'Parents',     value: 22, color: '#F39C12' },
  { name: 'Admins',      value: 2,  color: '#E74C3C' },
];

const RECENT_USERS = [
  { name: 'Alice Dupont',      role: 'ROLE_STUDENT',  email: 'alice@example.com', date: '2026-09-01' },
  { name: 'Prof. Martin',      role: 'ROLE_TEACHER',  email: 'martin@example.com', date: '2026-08-31' },
  { name: 'Jean-Pierre Leroy', role: 'ROLE_PARENT',   email: 'jp.leroy@example.com', date: '2026-08-30' },
  { name: 'Sophie Colignon',   role: 'ROLE_STUDENT',  email: 'sophie@example.com', date: '2026-08-30' },
];

const ROLE_COLORS = {
  ROLE_STUDENT: 'primary', ROLE_TEACHER: 'success',
  ROLE_PARENT: 'warning',  ROLE_ADMIN: 'error',
};
const ROLE_LABELS = {
  ROLE_STUDENT: 'Étudiant', ROLE_TEACHER: 'Enseignant',
  ROLE_PARENT: 'Parent',    ROLE_ADMIN: 'Admin',
};

export default function AdminDashboard() {
  const navigate = useNavigate();

  const stats = [
    { label: 'Utilisateurs',  value: 111, change: '+12%', color: '#1B4F72', icon: <People /> },
    { label: 'Enseignants',   value: 9,   change: '+2',   color: '#27AE60', icon: <School /> },
    { label: 'Cours publiés', value: 47,  change: '+8',   color: '#9B59B6', icon: <MenuBook /> },
    { label: 'Connexions/j.', value: 34,  change: '+18%', color: '#F39C12', icon: <TrendingUp /> },
  ];

  return (
    <MainLayout>
      {/* Header */}
      <Box sx={{
        background: 'linear-gradient(135deg, #2C3E50, #E74C3C)',
        borderRadius: 3, p: 4, mb: 3, color: 'white',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        flexWrap: 'wrap', gap: 2,
      }}>
        <Box>
          <Stack direction="row" spacing={1} alignItems="center" mb={0.5}>
            <AdminPanelSettings />
            <Typography variant="h5" fontWeight={700}>Administration MOST ÉCOLE</Typography>
          </Stack>
          <Typography sx={{ opacity: 0.9 }}>Tableau de bord administrateur</Typography>
        </Box>
        <Button variant="contained" startIcon={<PersonAdd />}
          onClick={() => navigate('/admin/users')}
          sx={{ bgcolor: 'rgba(255,255,255,0.2)', backdropFilter: 'blur(4px)' }}>
          Gérer les utilisateurs
        </Button>
      </Box>

      <Grid container spacing={3}>
        {/* Stat Cards */}
        {stats.map((s) => (
          <Grid item xs={6} md={3} key={s.label}>
            <Card>
              <CardContent>
                <Stack direction="row" justifyContent="space-between" alignItems="flex-start">
                  <Box>
                    <Typography variant="h4" fontWeight={800}>{s.value}</Typography>
                    <Typography variant="caption" color="text.secondary">{s.label}</Typography>
                  </Box>
                  <Avatar sx={{ bgcolor: s.color, width: 40, height: 40 }}>{s.icon}</Avatar>
                </Stack>
                <Chip label={s.change} size="small" color="success" sx={{ mt: 1 }} />
              </CardContent>
            </Card>
          </Grid>
        ))}

        {/* Growth Chart */}
        <Grid item xs={12} md={7}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Croissance des inscriptions
              </Typography>
              <ResponsiveContainer width="100%" height={240}>
                <AreaChart data={GROWTH_DATA} margin={{ top: 5, right: 10, left: -20, bottom: 5 }}>
                  <defs>
                    <linearGradient id="students" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="5%" stopColor="#1B4F72" stopOpacity={0.3} />
                      <stop offset="95%" stopColor="#1B4F72" stopOpacity={0} />
                    </linearGradient>
                    <linearGradient id="teachers" x1="0" y1="0" x2="0" y2="1">
                      <stop offset="5%" stopColor="#27AE60" stopOpacity={0.3} />
                      <stop offset="95%" stopColor="#27AE60" stopOpacity={0} />
                    </linearGradient>
                  </defs>
                  <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                  <XAxis dataKey="month" tick={{ fontSize: 12 }} />
                  <YAxis tick={{ fontSize: 12 }} />
                  <Tooltip />
                  <Area type="monotone" dataKey="students" name="Étudiants"
                    stroke="#1B4F72" fill="url(#students)" strokeWidth={2} />
                  <Area type="monotone" dataKey="teachers" name="Enseignants"
                    stroke="#27AE60" fill="url(#teachers)" strokeWidth={2} />
                </AreaChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Role distribution */}
        <Grid item xs={12} md={5}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Répartition des rôles
              </Typography>
              <ResponsiveContainer width="100%" height={240}>
                <PieChart>
                  <Pie data={ROLE_DISTRIBUTION} cx="50%" cy="50%" innerRadius={50} outerRadius={90}
                    paddingAngle={4} dataKey="value">
                    {ROLE_DISTRIBUTION.map((entry, i) => (
                      <Cell key={i} fill={entry.color} />
                    ))}
                  </Pie>
                  <Tooltip formatter={(v, n) => [`${v} utilisateurs`, n]} />
                  <Legend />
                </PieChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Recent registrations */}
        <Grid item xs={12}>
          <Card>
            <CardContent>
              <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
                <Typography variant="h6" fontWeight={700}>Inscriptions récentes</Typography>
                <Button size="small" endIcon={<ArrowForward />}
                  onClick={() => navigate('/admin/users')}>
                  Voir tous les utilisateurs
                </Button>
              </Box>
              <Stack divider={<Divider />} spacing={0}>
                {RECENT_USERS.map((u, i) => (
                  <Stack key={i} direction="row" alignItems="center" spacing={2} py={1.5}>
                    <Avatar sx={{ bgcolor: 'primary.main', width: 36, height: 36 }}>
                      {u.name[0]}
                    </Avatar>
                    <Box flexGrow={1}>
                      <Typography variant="body2" fontWeight={600}>{u.name}</Typography>
                      <Typography variant="caption" color="text.secondary">{u.email}</Typography>
                    </Box>
                    <Chip label={ROLE_LABELS[u.role]} color={ROLE_COLORS[u.role]} size="small" />
                    <Typography variant="caption" color="text.secondary">{u.date}</Typography>
                  </Stack>
                ))}
              </Stack>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
