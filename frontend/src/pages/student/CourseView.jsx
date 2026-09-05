import { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  LinearProgress, Divider, Chip, Stack, Radio, RadioGroup,
  FormControl, FormControlLabel, Alert, Collapse, IconButton,
} from '@mui/material';
import {
  ArrowBack, CheckCircle, Quiz, Close, EmojiEvents,
  Replay, NavigateNext,
} from '@mui/icons-material';
import ReactMarkdown from 'react-markdown';
import remarkGfm from 'remark-gfm';
import MainLayout     from '../../components/layout/MainLayout';
import LoadingSpinner from '../../components/ui/LoadingSpinner';
import LevelBadge     from '../../components/ui/LevelBadge';
import { fetchCourse } from '../../store/coursesSlice';

/* ─── Markdown component styles ────────────────────────────────────────────── */
const mdComponents = {
  h1: ({ children }) => (
    <Typography variant="h4" fontWeight={800} sx={{ mt: 4, mb: 2, color: 'primary.main' }}>
      {children}
    </Typography>
  ),
  h2: ({ children }) => (
    <Typography variant="h5" fontWeight={700} sx={{ mt: 3.5, mb: 1.5, borderBottom: '2px solid', borderColor: 'primary.light', pb: 0.5 }}>
      {children}
    </Typography>
  ),
  h3: ({ children }) => (
    <Typography variant="h6" fontWeight={700} sx={{ mt: 2.5, mb: 1, color: 'text.primary' }}>
      {children}
    </Typography>
  ),
  p: ({ children }) => (
    <Typography variant="body1" sx={{ mb: 1.5, lineHeight: 1.85, color: 'text.secondary' }}>
      {children}
    </Typography>
  ),
  strong: ({ children }) => (
    <Box component="strong" sx={{ color: 'text.primary', fontWeight: 700 }}>
      {children}
    </Box>
  ),
  ul: ({ children }) => (
    <Box component="ul" sx={{ pl: 3, mb: 1.5, '& li': { mb: 0.5 } }}>
      {children}
    </Box>
  ),
  ol: ({ children }) => (
    <Box component="ol" sx={{ pl: 3, mb: 1.5, '& li': { mb: 0.5 } }}>
      {children}
    </Box>
  ),
  li: ({ children }) => (
    <Typography component="li" variant="body1" sx={{ lineHeight: 1.75, color: 'text.secondary' }}>
      {children}
    </Typography>
  ),
  blockquote: ({ children }) => (
    <Box sx={{
      borderLeft: '4px solid', borderColor: 'primary.main',
      pl: 2, py: 0.5, my: 2, bgcolor: 'primary.50',
      borderRadius: '0 8px 8px 0',
    }}>
      {children}
    </Box>
  ),
  code: ({ inline, children }) =>
    inline ? (
      <Box component="code" sx={{
        bgcolor: 'grey.100', px: 0.7, py: 0.2, borderRadius: 1,
        fontSize: '0.875em', fontFamily: 'monospace', color: 'error.main',
      }}>
        {children}
      </Box>
    ) : (
      <Box component="pre" sx={{
        bgcolor: 'grey.900', color: 'grey.100', p: 2, borderRadius: 2,
        overflow: 'auto', mb: 2, fontSize: '0.875rem', fontFamily: 'monospace',
      }}>
        <code>{children}</code>
      </Box>
    ),
  hr: () => <Divider sx={{ my: 3 }} />,
};

/* ─── Mock quiz generator (until backend sends real questions) ───────────────*/
function generateMockQuiz(course) {
  return [
    {
      id: 1,
      question: `Quel est le thème principal abordé dans "${course.title}" ?`,
      options: [
        course.subjectName + ' — concepts fondamentaux',
        'Histoire de la littérature française',
        'Géographie physique du monde',
        'Chimie organique avancée',
      ],
      correct: 0,
      explanation: `Ce cours porte sur les concepts clés de ${course.subjectName} au niveau ${course.levelNumber}.`,
    },
    {
      id: 2,
      question: `À quel niveau scolaire est destiné ce cours ?`,
      options: [
        `${course.levelNumber}ème secondaire`,
        '3ème primaire',
        'Master universitaire',
        'Bachelier',
      ],
      correct: 0,
      explanation: `Ce cours est conçu pour les élèves de ${course.levelNumber}ère/ème secondaire.`,
    },
    {
      id: 3,
      question: `Quelle est la bonne approche pour maîtriser ce chapitre ?`,
      options: [
        'Lire le cours une seule fois rapidement',
        'Comprendre les concepts, les appliquer et faire des exercices',
        'Mémoriser sans comprendre',
        'Ignorer les exemples et définitions',
      ],
      correct: 1,
      explanation: 'La méthode efficace combine compréhension, application et pratique régulière.',
    },
  ];
}

/* ─── Inline Quiz component ─────────────────────────────────────────────────*/
function InlineQuiz({ course, onClose }) {
  const questions = generateMockQuiz(course);
  const [current, setCurrent] = useState(0);
  const [selected, setSelected] = useState(null);
  const [confirmed, setConfirmed] = useState(false);
  const [score, setScore] = useState(0);
  const [finished, setFinished] = useState(false);

  const q = questions[current];

  const handleConfirm = () => {
    if (selected === null) return;
    setConfirmed(true);
    if (parseInt(selected, 10) === q.correct) setScore((s) => s + 1);
  };

  const handleNext = () => {
    if (current + 1 >= questions.length) {
      setFinished(true);
    } else {
      setCurrent((c) => c + 1);
      setSelected(null);
      setConfirmed(false);
    }
  };

  const handleRestart = () => {
    setCurrent(0);
    setSelected(null);
    setConfirmed(false);
    setScore(0);
    setFinished(false);
  };

  const pct = Math.round((score / questions.length) * 100);

  if (finished) {
    return (
      <Box>
        <Box display="flex" alignItems="center" justifyContent="space-between" mb={2}>
          <Typography variant="h6" fontWeight={700}>Résultats du quiz</Typography>
          <IconButton size="small" onClick={onClose}><Close fontSize="small" /></IconButton>
        </Box>
        <Box textAlign="center" py={2}>
          <EmojiEvents sx={{ fontSize: 56, color: pct >= 67 ? 'success.main' : 'warning.main', mb: 1 }} />
          <Typography variant="h4" fontWeight={800}>{score}/{questions.length}</Typography>
          <Typography variant="body1" color="text.secondary" mt={1}>
            {pct >= 67
              ? 'Excellent ! Tu maîtrises bien ce chapitre.'
              : 'Continue à réviser, tu y es presque !'}
          </Typography>
          <LinearProgress
            variant="determinate"
            value={pct}
            color={pct >= 67 ? 'success' : 'warning'}
            sx={{ mt: 2, height: 10, borderRadius: 5 }}
          />
          <Typography variant="caption" color="text.secondary">{pct}%</Typography>
        </Box>
        <Stack direction="row" spacing={1} mt={2}>
          <Button variant="outlined" startIcon={<Replay />} onClick={handleRestart} fullWidth>
            Recommencer
          </Button>
          <Button variant="contained" onClick={onClose} fullWidth>
            Fermer
          </Button>
        </Stack>
      </Box>
    );
  }

  return (
    <Box>
      <Box display="flex" alignItems="center" justifyContent="space-between" mb={1}>
        <Typography variant="body2" color="text.secondary">
          Question {current + 1} / {questions.length}
        </Typography>
        <IconButton size="small" onClick={onClose}><Close fontSize="small" /></IconButton>
      </Box>
      <LinearProgress
        variant="determinate"
        value={((current) / questions.length) * 100}
        sx={{ mb: 2, borderRadius: 5 }}
      />
      <Typography variant="subtitle1" fontWeight={700} mb={2}>
        {q.question}
      </Typography>
      <FormControl component="fieldset" fullWidth>
        <RadioGroup value={selected} onChange={(e) => !confirmed && setSelected(e.target.value)}>
          {q.options.map((opt, i) => {
            let color = 'default';
            let bgcolor = 'transparent';
            if (confirmed) {
              if (i === q.correct) { color = 'success'; bgcolor = 'success.50'; }
              else if (String(i) === selected) { color = 'error'; bgcolor = 'error.50'; }
            }
            return (
              <FormControlLabel
                key={i}
                value={String(i)}
                control={<Radio color={color === 'default' ? 'primary' : color} />}
                label={opt}
                sx={{
                  mb: 1, p: 1, borderRadius: 2, border: '1px solid',
                  borderColor: confirmed && i === q.correct ? 'success.main'
                    : confirmed && String(i) === selected ? 'error.main'
                    : 'grey.200',
                  bgcolor,
                  transition: 'all 0.2s',
                }}
              />
            );
          })}
        </RadioGroup>
      </FormControl>

      <Collapse in={confirmed}>
        <Alert
          severity={parseInt(selected, 10) === q.correct ? 'success' : 'error'}
          sx={{ mt: 1, mb: 1 }}
        >
          {q.explanation}
        </Alert>
      </Collapse>

      {!confirmed ? (
        <Button
          variant="contained" fullWidth sx={{ mt: 1 }}
          disabled={selected === null}
          onClick={handleConfirm}
        >
          Valider
        </Button>
      ) : (
        <Button
          variant="contained" fullWidth sx={{ mt: 1 }}
          endIcon={<NavigateNext />}
          onClick={handleNext}
        >
          {current + 1 >= questions.length ? 'Voir les résultats' : 'Question suivante'}
        </Button>
      )}
    </Box>
  );
}

/* ─── Main page ─────────────────────────────────────────────────────────────*/
export default function CourseView() {
  const { id }    = useParams();
  const dispatch  = useDispatch();
  const navigate  = useNavigate();
  const { current: course, loading } = useSelector((s) => s.courses);
  const [quizOpen, setQuizOpen] = useState(false);
  const [done, setDone] = useState(false);

  useEffect(() => { dispatch(fetchCourse(id)); }, [dispatch, id]);

  if (loading || !course) return <MainLayout><LoadingSpinner /></MainLayout>;

  return (
    <MainLayout>
      <Button startIcon={<ArrowBack />} onClick={() => navigate(-1)} sx={{ mb: 2 }}>
        Retour
      </Button>

      <Grid container spacing={3}>
        {/* ── Main content ── */}
        <Grid item xs={12} md={8}>
          <Card elevation={2}>
            <CardContent sx={{ p: { xs: 2, md: 4 } }}>
              {/* Badges */}
              <Stack direction="row" gap={1} mb={2} flexWrap="wrap">
                <LevelBadge levelNumber={course.levelNumber} />
                <Chip label={course.subjectName} variant="outlined" size="small" />
                <Chip label={course.contentType} color="primary" size="small" />
              </Stack>

              {/* Title */}
              <Typography variant="h4" fontWeight={800} gutterBottom>
                {course.title}
              </Typography>
              <Typography variant="body2" color="text.secondary" gutterBottom>
                Par {course.teacherName ?? 'Équipe pédagogique MOST ÉCOLE'}
              </Typography>
              <Divider sx={{ my: 2.5 }} />

              {/* Video embed */}
              {course.contentType === 'VIDEO' && course.contentUrl && (
                <Box sx={{
                  position: 'relative', paddingTop: '56.25%',
                  bgcolor: '#000', borderRadius: 2, overflow: 'hidden', mb: 3,
                }}>
                  <iframe
                    src={course.contentUrl}
                    style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', border: 'none' }}
                    allowFullScreen
                    title={course.title}
                  />
                </Box>
              )}

              {/* Markdown text */}
              {course.contentText && (
                <Box sx={{ '& > *:first-of-type': { mt: 0 } }}>
                  <ReactMarkdown
                    remarkPlugins={[remarkGfm]}
                    components={mdComponents}
                  >
                    {course.contentText}
                  </ReactMarkdown>
                </Box>
              )}
            </CardContent>
          </Card>
        </Grid>

        {/* ── Right sidebar ── */}
        <Grid item xs={12} md={4}>
          {/* Progress card */}
          <Card elevation={2} sx={{ mb: 2 }}>
            <CardContent>
              <Typography variant="h6" fontWeight={700} gutterBottom>
                Ma progression
              </Typography>
              <Box mb={1}>
                <Box display="flex" justifyContent="space-between">
                  <Typography variant="body2" color="text.secondary">Avancement</Typography>
                  <Typography variant="body2" fontWeight={700}>{done ? '100' : '35'} %</Typography>
                </Box>
                <LinearProgress
                  variant="determinate"
                  value={done ? 100 : 35}
                  color={done ? 'success' : 'primary'}
                  sx={{ mt: 1, height: 10, borderRadius: 5 }}
                />
              </Box>
              <Button
                variant={done ? 'outlined' : 'contained'}
                color={done ? 'success' : 'primary'}
                fullWidth
                startIcon={<CheckCircle />}
                sx={{ mt: 2 }}
                onClick={() => setDone((v) => !v)}
              >
                {done ? 'Cours terminé ✓' : 'Marquer comme terminé'}
              </Button>
            </CardContent>
          </Card>

          {/* Quiz card */}
          <Card elevation={2}>
            <CardContent>
              {quizOpen ? (
                <InlineQuiz course={course} onClose={() => setQuizOpen(false)} />
              ) : (
                <>
                  <Typography variant="h6" fontWeight={700} gutterBottom>
                    Quiz associés
                  </Typography>
                  <Typography variant="body2" color="text.secondary" mb={2}>
                    Testez vos connaissances après avoir étudié ce cours.
                  </Typography>
                  <Button
                    variant="outlined"
                    fullWidth
                    startIcon={<Quiz />}
                    onClick={() => setQuizOpen(true)}
                  >
                    Commencer le quiz
                  </Button>
                </>
              )}
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
