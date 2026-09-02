import {
  Box, Grid, Typography, Card, CardContent, LinearProgress,
} from '@mui/material';
import {
  RadarChart, Radar, PolarGrid, PolarAngleAxis, PolarRadiusAxis,
  ResponsiveContainer, LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip,
} from 'recharts';
import MainLayout from '../../components/layout/MainLayout';

const RADAR_DATA = [
  { subject: 'Maths',    A: 72 }, { subject: 'Français', A: 85 },
  { subject: 'Sciences', A: 68 }, { subject: 'Histoire',  A: 78 },
  { subject: 'FSE',      A: 91 }, { subject: 'Anglais',   A: 74 },
];

const TIMELINE = [
  { month: 'Sep', score: 55 }, { month: 'Oct', score: 62 },
  { month: 'Nov', score: 70 }, { month: 'Déc', score: 68 },
  { month: 'Jan', score: 75 }, { month: 'Fév', score: 80 },
];

const SUBJECTS_PROGRESS = [
  { name: 'Mathématiques', progress: 72, color: '#1B4F72' },
  { name: 'Français',       progress: 85, color: '#27AE60' },
  { name: 'FSE',            progress: 91, color: '#F39C12' },
  { name: 'Sciences',       progress: 68, color: '#E74C3C' },
  { name: 'Histoire',       progress: 78, color: '#9B59B6' },
];

export default function MyProgress() {
  return (
    <MainLayout>
      <Typography variant="h4" fontWeight={700} gutterBottom>Ma progression</Typography>
      <Typography color="text.secondary" mb={3}>
        Vue d'ensemble de vos résultats et de votre avancement dans toutes les matières.
      </Typography>

      <Grid container spacing={3}>
        {/* Radar chart */}
        <Grid item xs={12} md={5}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>Compétences par matière</Typography>
              <ResponsiveContainer width="100%" height={280}>
                <RadarChart data={RADAR_DATA}>
                  <PolarGrid />
                  <PolarAngleAxis dataKey="subject" tick={{ fontSize: 12 }} />
                  <PolarRadiusAxis angle={30} domain={[0, 100]} tick={{ fontSize: 10 }} />
                  <Radar name="Score" dataKey="A" stroke="#1B4F72" fill="#1B4F72" fillOpacity={0.3} />
                </RadarChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Timeline */}
        <Grid item xs={12} md={7}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>Évolution mensuelle</Typography>
              <ResponsiveContainer width="100%" height={280}>
                <LineChart data={TIMELINE}>
                  <CartesianGrid strokeDasharray="3 3" stroke="#f0f0f0" />
                  <XAxis dataKey="month" tick={{ fontSize: 12 }} />
                  <YAxis domain={[0, 100]} tick={{ fontSize: 12 }} />
                  <Tooltip formatter={(v) => `${v} %`} />
                  <Line type="monotone" dataKey="score" stroke="#1B4F72" strokeWidth={3}
                    dot={{ fill: '#1B4F72', r: 5 }} />
                </LineChart>
              </ResponsiveContainer>
            </CardContent>
          </Card>
        </Grid>

        {/* Subject bars */}
        <Grid item xs={12}>
          <Card>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>Détail par matière</Typography>
              <Box sx={{ display: 'flex', flexDirection: 'column', gap: 2, mt: 2 }}>
                {SUBJECTS_PROGRESS.map((subj) => (
                  <Box key={subj.name}>
                    <Box display="flex" justifyContent="space-between" mb={0.5}>
                      <Typography variant="body2" fontWeight={600}>{subj.name}</Typography>
                      <Typography variant="body2" fontWeight={700}>{subj.progress} %</Typography>
                    </Box>
                    <LinearProgress variant="determinate" value={subj.progress}
                      sx={{ height: 10, borderRadius: 5, bgcolor: 'grey.200',
                        '& .MuiLinearProgress-bar': { bgcolor: subj.color } }} />
                  </Box>
                ))}
              </Box>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
