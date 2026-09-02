import { useNavigate } from 'react-router-dom';
import {
  Box, Container, Typography, Button, Grid, Card, CardContent,
  Stack, Chip, Avatar,
} from '@mui/material';
import {
  School, LocalHospital, PersonPin, EmojiEvents, ArrowForward,
  CheckCircle, MenuBook, TrendingUp,
} from '@mui/icons-material';

const FEATURES = [
  {
    icon: <MenuBook sx={{ fontSize: 40, color: 'primary.main' }} />,
    title: 'Cours par niveau',
    desc: 'De la 1ère à la 6ème secondaire, des cours structurés alignés sur les référentiels officiels de la Fédération Wallonie-Bruxelles.',
    badge: '6 niveaux',
  },
  {
    icon: <PersonPin sx={{ fontSize: 40, color: 'secondary.main' }} />,
    title: 'Accompagnement personnalisé',
    desc: 'Un suivi individuel avec des professeurs qualifiés, des recommandations intelligentes et des sessions de tutorat en ligne.',
    badge: 'Sur mesure',
  },
  {
    icon: <LocalHospital sx={{ fontSize: 40, color: '#E74C3C' }} />,
    title: 'Concours médecine',
    desc: 'Préparation intensive au concours d\'entrée en médecine et dentisterie (FWB) : biologie, chimie, physique, maths, raisonnement.',
    badge: 'Spécialisé',
  },
];

const SUBJECTS = [
  'Mathématiques', 'Français', 'Biologie', 'Chimie',
  'Physique', 'Néerlandais', 'Anglais', 'Histoire',
  'Formation sociale & économique', 'Informatique',
];

const STATS = [
  { value: '6',    label: 'Niveaux couverts' },
  { value: '10+',  label: 'Matières disponibles' },
  { value: '5',    label: 'Domaines concours médecine' },
  { value: '100%', label: 'Aligné FWB' },
];

export default function Home() {
  const navigate = useNavigate();

  return (
    <Box>
      {/* ── Hero ── */}
      <Box sx={{
        background: 'linear-gradient(135deg, #1B4F72 0%, #2980B9 60%, #1ABC9C 100%)',
        color: 'white', pt: 12, pb: 10,
      }}>
        <Container maxWidth="lg">
          <Grid container spacing={4} alignItems="center">
            <Grid item xs={12} md={7}>
              <Chip label="🇧🇪 Secondaire belge – FWB" sx={{ mb: 2, bgcolor: 'rgba(255,255,255,0.2)', color: 'white' }} />
              <Typography variant="h2" fontWeight={800} gutterBottom sx={{ lineHeight: 1.2 }}>
                Bienvenue sur<br />
                <Box component="span" sx={{ color: '#F39C12' }}>MOST ÉCOLE</Box>
              </Typography>
              <Typography variant="h6" sx={{ opacity: 0.9, mb: 4, maxWidth: 520, fontWeight: 400 }}>
                L'école en ligne qui accompagne chaque élève belge de la 1ère à la 6ème secondaire,
                jusqu'au concours d'entrée en médecine.
              </Typography>
              <Stack direction={{ xs: 'column', sm: 'row' }} spacing={2}>
                <Button
                  variant="contained"
                  size="large"
                  endIcon={<ArrowForward />}
                  onClick={() => navigate('/register')}
                  sx={{ bgcolor: '#F39C12', color: '#000', '&:hover': { bgcolor: '#E67E22' }, px: 4, py: 1.5 }}
                >
                  Commencer gratuitement
                </Button>
                <Button
                  variant="outlined"
                  size="large"
                  onClick={() => navigate('/login')}
                  sx={{ borderColor: 'white', color: 'white', '&:hover': { bgcolor: 'rgba(255,255,255,0.1)' }, px: 4, py: 1.5 }}
                >
                  Se connecter
                </Button>
              </Stack>
            </Grid>
            <Grid item xs={12} md={5}>
              <Grid container spacing={2}>
                {STATS.map((stat) => (
                  <Grid item xs={6} key={stat.label}>
                    <Card sx={{ textAlign: 'center', p: 2, bgcolor: 'rgba(255,255,255,0.15)', backdropFilter: 'blur(8px)', border: '1px solid rgba(255,255,255,0.2)' }}>
                      <Typography variant="h3" fontWeight={800} color="white">{stat.value}</Typography>
                      <Typography variant="caption" sx={{ color: 'rgba(255,255,255,0.8)' }}>{stat.label}</Typography>
                    </Card>
                  </Grid>
                ))}
              </Grid>
            </Grid>
          </Grid>
        </Container>
      </Box>

      {/* ── Features ── */}
      <Container maxWidth="lg" sx={{ py: 10 }}>
        <Typography variant="h3" fontWeight={700} textAlign="center" gutterBottom>
          Tout ce dont votre enfant a besoin
        </Typography>
        <Typography variant="body1" textAlign="center" color="text.secondary" sx={{ mb: 6, maxWidth: 600, mx: 'auto' }}>
          Une plateforme complète pensée pour le système éducatif belge francophone.
        </Typography>
        <Grid container spacing={4}>
          {FEATURES.map((f) => (
            <Grid item xs={12} md={4} key={f.title}>
              <Card sx={{ p: 3, height: '100%', textAlign: 'center', cursor: 'default' }}>
                <CardContent>
                  <Box mb={2}>{f.icon}</Box>
                  <Chip label={f.badge} size="small" color="primary" sx={{ mb: 1.5 }} />
                  <Typography variant="h6" fontWeight={700} gutterBottom>{f.title}</Typography>
                  <Typography variant="body2" color="text.secondary">{f.desc}</Typography>
                </CardContent>
              </Card>
            </Grid>
          ))}
        </Grid>
      </Container>

      {/* ── Matières ── */}
      <Box sx={{ bgcolor: 'background.default', py: 8 }}>
        <Container maxWidth="lg">
          <Typography variant="h4" fontWeight={700} textAlign="center" gutterBottom>
            Toutes les matières du secondaire
          </Typography>
          <Box display="flex" flexWrap="wrap" gap={1.5} justifyContent="center" sx={{ mt: 4 }}>
            {SUBJECTS.map((s) => (
              <Chip key={s} label={s} icon={<CheckCircle fontSize="small" />}
                sx={{ px: 1, fontWeight: 500, bgcolor: 'white', border: '1px solid', borderColor: 'primary.light' }} />
            ))}
          </Box>
        </Container>
      </Box>

      {/* ── CTA Final ── */}
      <Box sx={{ bgcolor: 'primary.main', color: 'white', py: 8, textAlign: 'center' }}>
        <Container maxWidth="md">
          <EmojiEvents sx={{ fontSize: 60, color: '#F39C12', mb: 2 }} />
          <Typography variant="h4" fontWeight={700} gutterBottom>
            Prêt à réussir votre année ?
          </Typography>
          <Typography variant="body1" sx={{ opacity: 0.9, mb: 4 }}>
            Rejoignez MOST ÉCOLE et progressez à votre rythme avec des professeurs qualifiés.
          </Typography>
          <Button
            variant="contained"
            size="large"
            endIcon={<ArrowForward />}
            onClick={() => navigate('/register')}
            sx={{ bgcolor: '#F39C12', color: '#000', '&:hover': { bgcolor: '#E67E22' }, px: 5, py: 1.5 }}
          >
            Créer mon compte gratuitement
          </Button>
        </Container>
      </Box>
    </Box>
  );
}
