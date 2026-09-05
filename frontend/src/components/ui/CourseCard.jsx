import { useNavigate } from 'react-router-dom';
import {
  Card, CardContent, CardActions, Typography, Button,
  LinearProgress, Box, Chip, Avatar,
} from '@mui/material';
import {
  PlayArrow, Article, Quiz, Calculate, Science,
  HistoryEdu, Language, MenuBook, Psychology,
} from '@mui/icons-material';

/* ── Couleur de bannière selon la matière ───────────────────────────────── */
const SUBJECT_STYLE = (name = '') => {
  const n = name.toLowerCase();
  if (n.includes('math'))      return { bg: 'linear-gradient(135deg,#1B4F72,#2980B9)', icon: <Calculate /> };
  if (n.includes('français') || n.includes('francais')) return { bg: 'linear-gradient(135deg,#6C3483,#A569BD)', icon: <MenuBook /> };
  if (n.includes('histoire'))  return { bg: 'linear-gradient(135deg,#784212,#CA6F1E)', icon: <HistoryEdu /> };
  if (n.includes('chimie'))    return { bg: 'linear-gradient(135deg,#0E6655,#1ABC9C)', icon: <Science /> };
  if (n.includes('physique'))  return { bg: 'linear-gradient(135deg,#1A237E,#5C6BC0)', icon: <Science /> };
  if (n.includes('biologie'))  return { bg: 'linear-gradient(135deg,#1B5E20,#43A047)', icon: <Science /> };
  if (n.includes('sciences'))  return { bg: 'linear-gradient(135deg,#004D40,#26A69A)', icon: <Science /> };
  if (n.includes('néerlandais') || n.includes('anglais') || n.includes('langues')) return { bg: 'linear-gradient(135deg,#E65100,#FF8F00)', icon: <Language /> };
  if (n.includes('concours') || n.includes('raisonnement')) return { bg: 'linear-gradient(135deg,#880E4F,#E91E63)', icon: <Psychology /> };
  if (n.includes('fse') || n.includes('économie') || n.includes('geographie')) return { bg: 'linear-gradient(135deg,#37474F,#78909C)', icon: <Article /> };
  return { bg: 'linear-gradient(135deg,#1B4F72,#2980B9)', icon: <MenuBook /> };
};

const TYPE_LABEL = { VIDEO: 'Vidéo', TEXT: 'Cours', QUIZ: 'Quiz', EXERCISE: 'Exercice' };
const TYPE_COLOR = { VIDEO: 'error', TEXT: 'primary', QUIZ: 'secondary', EXERCISE: 'success' };

export default function CourseCard({ course, progress = null }) {
  const navigate = useNavigate();
  const { bg, icon } = SUBJECT_STYLE(course.subjectName);
  const pct = progress ?? 0;
  const started = pct > 0;

  return (
    <Card
      sx={{
        height: '100%',
        display: 'flex',
        flexDirection: 'column',
        transition: 'transform 0.2s, box-shadow 0.2s',
        '&:hover': { transform: 'translateY(-4px)', boxShadow: '0 8px 30px rgba(0,0,0,0.14)' },
        cursor: 'pointer',
      }}
      onClick={() => navigate(`/student/courses/${course.id}`)}
    >
      {/* ── Bannière colorée ── */}
      <Box
        sx={{
          background: bg,
          height: 100,
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'space-between',
          px: 2.5,
          position: 'relative',
          overflow: 'hidden',
        }}
      >
        {/* Cercle décoratif */}
        <Box sx={{
          position: 'absolute', right: -24, top: -24,
          width: 120, height: 120,
          borderRadius: '50%',
          bgcolor: 'rgba(255,255,255,0.1)',
        }} />
        <Box sx={{
          position: 'absolute', right: 20, bottom: -40,
          width: 90, height: 90,
          borderRadius: '50%',
          bgcolor: 'rgba(255,255,255,0.07)',
        }} />

        <Box>
          <Chip
            label={`${course.levelNumber}ère${course.levelNumber > 1 ? '/ème' : ''} sec.`}
            size="small"
            sx={{ bgcolor: 'rgba(255,255,255,0.25)', color: '#fff', fontWeight: 700, fontSize: 11, mb: 0.5 }}
          />
          <Chip
            label={TYPE_LABEL[course.contentType] ?? course.contentType}
            size="small"
            sx={{ bgcolor: 'rgba(255,255,255,0.15)', color: '#fff', fontSize: 11, ml: 0.5 }}
          />
        </Box>

        <Avatar sx={{ bgcolor: 'rgba(255,255,255,0.2)', width: 44, height: 44, color: '#fff' }}>
          {icon}
        </Avatar>
      </Box>

      {/* ── Corps de la carte ── */}
      <CardContent sx={{ flexGrow: 1, pt: 2 }}>
        <Typography
          variant="body2"
          sx={{ color: 'text.secondary', fontWeight: 600, mb: 0.5, fontSize: 11, textTransform: 'uppercase', letterSpacing: 0.5 }}
        >
          {course.subjectName}
        </Typography>

        <Typography
          variant="subtitle1"
          fontWeight={700}
          sx={{
            lineHeight: 1.4,
            display: '-webkit-box',
            WebkitLineClamp: 2,
            WebkitBoxOrient: 'vertical',
            overflow: 'hidden',
            mb: 1,
          }}
        >
          {course.title}
        </Typography>

        <Typography
          variant="body2"
          color="text.secondary"
          sx={{
            display: '-webkit-box',
            WebkitLineClamp: 2,
            WebkitBoxOrient: 'vertical',
            overflow: 'hidden',
            lineHeight: 1.6,
            fontSize: 13,
          }}
        >
          {course.description || 'Aucune description disponible.'}
        </Typography>

        {/* Progression */}
        {started && (
          <Box sx={{ mt: 2 }}>
            <Box display="flex" justifyContent="space-between" mb={0.5}>
              <Typography variant="caption" color="text.secondary">Progression</Typography>
              <Typography variant="caption" fontWeight={700} color="primary">{pct}%</Typography>
            </Box>
            <LinearProgress
              variant="determinate"
              value={pct}
              sx={{ borderRadius: 4, height: 5, bgcolor: 'grey.100' }}
              color={pct === 100 ? 'success' : 'primary'}
            />
          </Box>
        )}
      </CardContent>

      {/* ── Bouton ── */}
      <CardActions sx={{ px: 2, pb: 2, pt: 0 }}>
        <Button
          variant={started ? 'contained' : 'outlined'}
          size="small"
          fullWidth
          startIcon={<PlayArrow fontSize="small" />}
          onClick={(e) => { e.stopPropagation(); navigate(`/student/courses/${course.id}`); }}
          sx={{ borderRadius: 2 }}
        >
          {pct === 100 ? 'Revoir' : started ? 'Continuer' : 'Commencer'}
        </Button>
      </CardActions>
    </Card>
  );
}
