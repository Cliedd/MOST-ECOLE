import { useNavigate } from 'react-router-dom';
import {
  Card, CardContent, CardActions, Typography, Button,
  LinearProgress, Box, Chip,
} from '@mui/material';
import { PlayArrow, Article, Quiz, FitnessCenter } from '@mui/icons-material';
import LevelBadge from './LevelBadge';
import { formatContentType } from '../../utils/formatters';

const TYPE_ICONS = {
  VIDEO:    <PlayArrow fontSize="small" />,
  TEXT:     <Article fontSize="small" />,
  QUIZ:     <Quiz fontSize="small" />,
  EXERCISE: <FitnessCenter fontSize="small" />,
};

export default function CourseCard({ course, progress = null }) {
  const navigate = useNavigate();

  return (
    <Card sx={{ height: '100%', display: 'flex', flexDirection: 'column' }}>
      <CardContent sx={{ flexGrow: 1 }}>
        {/* Header badges */}
        <Box display="flex" gap={1} mb={1.5} flexWrap="wrap">
          <LevelBadge levelNumber={course.levelNumber} />
          <Chip
            icon={TYPE_ICONS[course.contentType]}
            label={formatContentType(course.contentType)}
            size="small"
            variant="outlined"
            color="primary"
          />
        </Box>

        <Typography variant="subtitle1" fontWeight={700} gutterBottom noWrap>
          {course.title}
        </Typography>

        <Typography variant="body2" color="text.secondary" sx={{
          display: '-webkit-box', WebkitLineClamp: 2, WebkitBoxOrient: 'vertical', overflow: 'hidden',
        }}>
          {course.description || 'Aucune description disponible.'}
        </Typography>

        <Typography variant="caption" color="text.secondary" sx={{ mt: 1, display: 'block' }}>
          {course.subjectName} · {course.teacherName ?? 'Équipe pédagogique'}
        </Typography>

        {/* Progression */}
        {progress !== null && (
          <Box sx={{ mt: 2 }}>
            <Box display="flex" justifyContent="space-between" mb={0.5}>
              <Typography variant="caption" color="text.secondary">Progression</Typography>
              <Typography variant="caption" fontWeight={600}>{progress} %</Typography>
            </Box>
            <LinearProgress
              variant="determinate"
              value={progress}
              sx={{ borderRadius: 4, height: 6, bgcolor: 'grey.200' }}
            />
          </Box>
        )}
      </CardContent>

      <CardActions sx={{ px: 2, pb: 2 }}>
        <Button
          variant={progress !== null && progress > 0 ? 'contained' : 'outlined'}
          size="small"
          fullWidth
          startIcon={<PlayArrow />}
          onClick={() => navigate(`/student/courses/${course.id}`)}
        >
          {progress !== null && progress > 0 ? 'Continuer' : 'Commencer'}
        </Button>
      </CardActions>
    </Card>
  );
}
