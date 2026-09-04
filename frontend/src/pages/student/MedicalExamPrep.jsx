import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  LinearProgress, Chip, Stack, Alert,
} from '@mui/material';
import {
  Science, Biotech, ElectricBolt, Calculate, Psychology,
  Timer, EmojiEvents, ArrowForward,
} from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';

const SUBJECTS = [
  { key: 'BIOLOGY',    label: 'Biologie',            icon: <Biotech />,       color: '#27AE60', progress: 45, topics: ['Cellule', 'Génétique', 'Écologie', 'Physiologie'] },
  { key: 'CHEMISTRY',  label: 'Chimie',              icon: <Science />,       color: '#E74C3C', progress: 30, topics: ['Atomes', 'Réactions', 'Thermochimie', 'Chimie organique'] },
  { key: 'PHYSICS',    label: 'Physique',            icon: <ElectricBolt />,  color: '#3498DB', progress: 55, topics: ['Mécanique', 'Thermodynamique', 'Optique', 'Électromagnétisme'] },
  { key: 'MATHEMATICS',label: 'Mathématiques',       icon: <Calculate />,     color: '#9B59B6', progress: 70, topics: ['Algèbre', 'Analyse', 'Probabilités', 'Géométrie'] },
  { key: 'REASONING',  label: 'Raisonnement & Com.', icon: <Psychology />,    color: '#F39C12', progress: 40, topics: ["Analyse critique", "Lecture de graphiques", "Logique", "Textes scientifiques"] },
];

function Countdown() {
  // Exam fin août – date fixe pour l'affichage
  const examDate = new Date('2026-08-27T08:00:00');
  const now      = new Date();
  const diff     = examDate - now;
  const days     = Math.max(0, Math.floor(diff / (1000 * 60 * 60 * 24)));
  return (
    <Card sx={{ background: 'linear-gradient(135deg, #1B4F72, #E74C3C)', color: 'white', mb: 3 }}>
      <CardContent>
        <Stack direction={{ xs: 'column', md: 'row' }} alignItems="center" justifyContent="space-between" gap={2}>
          <Box>
            <Typography variant="h6" fontWeight={700}>⏳ Compte à rebours – Concours médecine FWB</Typography>
            <Typography sx={{ opacity: 0.9 }}>27 août 2026 · Université de Liège</Typography>
          </Box>
          <Box textAlign="center">
            <Typography variant="h2" fontWeight={800}>{days}</Typography>
            <Typography variant="body2" sx={{ opacity: 0.9 }}>jours restants</Typography>
          </Box>
          <Button variant="outlined" endIcon={<ArrowForward />}
            sx={{ borderColor: 'white', color: 'white' }}>
            Simuler l'examen
          </Button>
        </Stack>
      </CardContent>
    </Card>
  );
}

export default function MedicalExamPrep() {
  const navigate  = useNavigate();
  const [selected, setSelected] = useState(null);

  return (
    <MainLayout>
      <Typography variant="h4" fontWeight={700} gutterBottom>
        🏥 Préparation au Concours Médecine
      </Typography>
      <Typography color="text.secondary" mb={3}>
        Concours d'entrée en médecine et dentisterie – Fédération Wallonie-Bruxelles
      </Typography>

      <Alert severity="info" sx={{ mb: 3 }}>
        Le concours évalue 5 matières. Choisissez une matière ci-dessous pour accéder aux cours spécifiques et aux annales.
      </Alert>

      <Countdown />

      <Grid container spacing={3}>
        {SUBJECTS.map((subj) => (
          <Grid item xs={12} sm={6} md={4} key={subj.key}>
            <Card
              onClick={() => setSelected(subj.key === selected ? null : subj.key)}
              sx={{
                cursor: 'pointer',
                border: '2px solid',
                borderColor: selected === subj.key ? subj.color : 'transparent',
                transition: 'all 0.2s',
              }}
            >
              <CardContent>
                <Stack direction="row" alignItems="center" gap={2} mb={2}>
                  <Box sx={{ color: subj.color, display: 'flex' }}>{subj.icon}</Box>
                  <Typography variant="h6" fontWeight={700}>{subj.label}</Typography>
                </Stack>

                {/* Progress */}
                <Box mb={2}>
                  <Box display="flex" justifyContent="space-between" mb={0.5}>
                    <Typography variant="caption" color="text.secondary">Progression</Typography>
                    <Typography variant="caption" fontWeight={600}>{subj.progress} %</Typography>
                  </Box>
                  <LinearProgress variant="determinate" value={subj.progress}
                    sx={{ height: 8, borderRadius: 4, bgcolor: 'grey.200',
                      '& .MuiLinearProgress-bar': { bgcolor: subj.color } }} />
                </Box>

                {/* Topics */}
                <Stack direction="row" flexWrap="wrap" gap={0.5} mb={2}>
                  {subj.topics.map((t) => (
                    <Chip key={t} label={t} size="small" variant="outlined" sx={{ fontSize: 10 }} />
                  ))}
                </Stack>

                <Button fullWidth variant="contained"
                  sx={{ bgcolor: subj.color, '&:hover': { filter: 'brightness(0.9)' } }}
                  startIcon={<Timer />}
                  onClick={() => navigate(`/student/courses?subject=${subj.key}`)}>
                  Commencer les révisions
                </Button>
              </CardContent>
            </Card>
          </Grid>
        ))}

        {/* Annales & Tests blancs */}
        <Grid item xs={12} md={6}>
          <Card sx={{ bgcolor: '#2C3E50', color: 'white', p: 3 }}>
            <EmojiEvents sx={{ fontSize: 40, color: '#F39C12', mb: 1 }} />
            <Typography variant="h6" fontWeight={700}>📄 Annales officielles</Typography>
            <Typography variant="body2" sx={{ opacity: 0.8, mt: 1, mb: 2 }}>
              Accédez aux questions des années précédentes du concours FWB (depuis 2017).
            </Typography>
            <Button variant="outlined" sx={{ borderColor: 'white', color: 'white' }}>
              Voir les annales
            </Button>
          </Card>
        </Grid>
        <Grid item xs={12} md={6}>
          <Card sx={{ bgcolor: '#1A5276', color: 'white', p: 3 }}>
            <Timer sx={{ fontSize: 40, color: '#1ABC9C', mb: 1 }} />
            <Typography variant="h6" fontWeight={700}>🧪 Simulation d'examen</Typography>
            <Typography variant="body2" sx={{ opacity: 0.8, mt: 1, mb: 2 }}>
              Testez-vous en conditions réelles : 4h d'examen, toutes matières, correction immédiate.
            </Typography>
            <Button variant="outlined" sx={{ borderColor: 'white', color: 'white' }}>
              Lancer une simulation
            </Button>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
