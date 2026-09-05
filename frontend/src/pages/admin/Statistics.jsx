import {
  Box, Grid, Card, CardContent, Typography, Avatar,
} from '@mui/material';
import {
  People, MenuBook, School, TrendingUp,
} from '@mui/icons-material';
import {
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip,
  ResponsiveContainer, LineChart, Line, PieChart, Pie, Cell, Legend,
} from 'recharts';
import MainLayout from '../../components/layout/MainLayout';

const enrollmentData = [
  { month: 'Mar', inscrits: 42 },
  { month: 'Avr', inscrits: 58 },
  { month: 'Mai', inscrits: 75 },
  { month: 'Jun', inscrits: 61 },
  { month: 'Jui', inscrits: 89 },
  { month: 'Aoû', inscrits: 104 },
  { month: 'Sep', inscrits: 131 },
];

const levelData = [
  { name: 'Niveau 1', value: 28, color: '#3498DB' },
  { name: 'Niveau 2', value: 22, color: '#2ECC71' },
  { name: 'Niveau 3', value: 19, color: '#F39C12' },
  { name: 'Niveau 4', value: 17, color: '#9B59B6' },
  { name: 'Niveau 5', value: 31, color: '#E74C3C' },
  { name: 'Niveau 6', value: 14, color: '#1ABC9C' },
];

const subjectData = [
  { subject: 'Maths',    cours: 24 },
  { subject: 'Français', cours: 18 },
  { subject: 'Sciences', cours: 21 },
  { subject: 'Histoire', cours: 15 },
  { subject: 'FSE',      cours: 9  },
  { subject: 'Langues',  cours: 12 },
];

const STATS = [
  { label: 'Élèves inscrits',   value: '131',  icon: <People />,    color: '#3498DB' },
  { label: 'Cours publiés',     value: '168',  icon: <MenuBook />,  color: '#27AE60' },
  { label: 'Matières actives',  value: '61',   icon: <School />,    color: '#9B59B6' },
  { label: 'Taux de complétion',value: '74%',  icon: <TrendingUp />,color: '#F39C12' },
];

export default function Statistics() {
  return (
    <MainLayout>
      <Typography variant="h5" fontWeight={700} mb={3}>
        Statistiques de la plateforme
      </Typography>

      {/* KPI cards */}
      <Grid container spacing={3} mb={3}>
        {STATS.map((stat) => (
          <Grid item xs={6} md={3} key={stat.label}>
            <Card>
              <CardContent sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
                <Avatar sx={{ bgcolor: stat.color, width: 48, height: 48 }}>
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
      </Grid>

      <Grid container spacing={3}>
        {/* Inscriptions par mois */}
        <Grid item xs={12} md={7}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Inscriptions par mois
              </Typography>
              <ResponsiveContainer width="100%" height={220}>
                <LineChart data={enrollmentData} margin={{ top: 5, right: 20, left: -20, bottom: 5 }}>
                  <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                  <XAxis dataKey="month" tick={{ fontSize: 12 }} />
                  <YAxis tick={{ fontSize: 12 }} />
                  <Tooltip />
                  <Line
                    type="monotone"
                    dataKey="inscrits"
                    stroke="#1B4F72"
                    strokeWidth={2}
                    dot={{ fill: '#1B4F72', r: 4 }}
                    activeDot={{ r: 6 }}
                  />
                </LineChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Répartition par niveau */}
        <Grid item xs={12} md={5}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Élèves par niveau
              </Typography>
              <ResponsiveContainer width="100%" height={220}>
                <PieChart>
                  <Pie
                    data={levelData}
                    cx="50%"
                    cy="50%"
                    innerRadius={50}
                    outerRadius={80}
                    paddingAngle={3}
                    dataKey="value"
                  >
                    {levelData.map((entry) => (
                      <Cell key={entry.name} fill={entry.color} />
                    ))}
                  </Pie>
                  <Tooltip formatter={(v, n) => [v + ' élèves', n]} />
                  <Legend iconSize={10} wrapperStyle={{ fontSize: 12 }} />
                </PieChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Cours par matière */}
        <Grid item xs={12}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Cours publiés par matière (top 6)
              </Typography>
              <ResponsiveContainer width="100%" height={200}>
                <BarChart data={subjectData} margin={{ top: 5, right: 20, left: -20, bottom: 5 }}>
                  <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                  <XAxis dataKey="subject" tick={{ fontSize: 12 }} />
                  <YAxis tick={{ fontSize: 12 }} />
                  <Tooltip />
                  <Bar dataKey="cours" fill="#2980B9" radius={[6, 6, 0, 0]} name="Cours" />
                </BarChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
