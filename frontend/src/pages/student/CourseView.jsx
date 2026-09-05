import { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';
import {
  Box, Grid, Typography, Card, CardContent, Button,
  LinearProgress, Divider, Chip, Stack, Avatar,
  Radio, RadioGroup, FormControlLabel, Alert, Collapse,
  IconButton, Paper, Stepper, Step, StepLabel,
} from '@mui/material';
import {
  ArrowBack, CheckCircle, CheckCircleOutline, Quiz as QuizIcon,
  EmojiEvents, Replay, NavigateNext, Close, LockClock,
} from '@mui/icons-material';
import ReactMarkdown from 'react-markdown';
import remarkGfm from 'remark-gfm';
import MainLayout     from '../../components/layout/MainLayout';
import LoadingSpinner from '../../components/ui/LoadingSpinner';
import LevelBadge     from '../../components/ui/LevelBadge';
import { fetchCourse } from '../../store/coursesSlice';

/* ─── Styles Markdown ──────────────────────────────────────────────────────── */
const md = {
  h1: ({ children }) => (
    <Typography variant="h4" fontWeight={800} sx={{ mt: 4, mb: 2, color: 'primary.dark' }}>
      {children}
    </Typography>
  ),
  h2: ({ children }) => (
    <Box sx={{ mt: 4, mb: 1.5 }}>
      <Typography variant="h5" fontWeight={700} sx={{ pb: 0.5, borderBottom: '3px solid', borderColor: 'primary.light', display: 'inline-block' }}>
        {children}
      </Typography>
    </Box>
  ),
  h3: ({ children }) => (
    <Typography variant="h6" fontWeight={700} sx={{ mt: 3, mb: 1, color: 'text.primary' }}>
      {children}
    </Typography>
  ),
  p: ({ children }) => (
    <Typography variant="body1" sx={{ mb: 1.8, lineHeight: 1.9, color: 'text.secondary' }}>
      {children}
    </Typography>
  ),
  strong: ({ children }) => (
    <Box component="strong" sx={{ color: 'text.primary', fontWeight: 700 }}>
      {children}
    </Box>
  ),
  ul: ({ children }) => (
    <Box component="ul" sx={{ pl: 3, mb: 2, '& li': { mb: 0.75 } }}>{children}</Box>
  ),
  ol: ({ children }) => (
    <Box component="ol" sx={{ pl: 3, mb: 2, '& li': { mb: 0.75 } }}>{children}</Box>
  ),
  li: ({ children }) => (
    <Typography component="li" variant="body1" sx={{ lineHeight: 1.8, color: 'text.secondary' }}>
      {children}
    </Typography>
  ),
  blockquote: ({ children }) => (
    <Box sx={{
      borderLeft: '4px solid', borderColor: 'primary.main',
      pl: 2.5, py: 1, my: 2.5, bgcolor: '#EBF5FB',
      borderRadius: '0 10px 10px 0',
    }}>
      {children}
    </Box>
  ),
  hr: () => <Divider sx={{ my: 3.5 }} />,
  code: ({ inline, children }) =>
    inline ? (
      <Box component="code" sx={{
        bgcolor: 'grey.100', px: 0.8, py: 0.2, borderRadius: 1,
        fontSize: '0.875em', fontFamily: 'monospace', color: 'error.main',
      }}>
        {children}
      </Box>
    ) : (
      <Box component="pre" sx={{
        bgcolor: '#1e1e2e', color: '#cdd6f4', p: 2.5, borderRadius: 2,
        overflow: 'auto', mb: 2.5, fontSize: '0.875rem', fontFamily: 'monospace', lineHeight: 1.7,
      }}>
        <code>{children}</code>
      </Box>
    ),
};

/* ─── Quiz questions par type de cours (générées localement) ────────────── */
function buildQuiz(course) {
  const subject = course.subjectName ?? '';
  const level   = course.levelNumber ?? 1;
  return [
    {
      question: `Ce cours appartient à quelle matière ?`,
      options: [subject, 'Géographie', 'Éducation physique', 'Dessin'],
      correct: 0,
      explanation: `Ce cours fait partie du programme de ${subject} en ${level}ème secondaire.`,
    },
    {
      question: `Quelle est la meilleure façon de retenir un cours théorique ?`,
      options: [
        'Le relire sans s\'arrêter',
        'Comprendre, prendre des notes, puis se tester',
        'Mémoriser mot pour mot',
        'Ne rien faire, ça vient tout seul',
      ],
      correct: 1,
      explanation: 'La méthode active (comprendre → noter → se tester) est la plus efficace scientifiquement.',
    },
    {
      question: `Combien de secondaire compte le cursus belge FWB ?`,
      options: ['4 ans', '5 ans', '6 ans', '7 ans'],
      correct: 2,
      explanation: 'Le secondaire en Fédération Wallonie-Bruxelles dure 6 ans (1ère → 6ème/Rhéto).',
    },
    {
      question: `"${course.title}" est un cours de niveau :`,
      options: [`${level}ème secondaire`, '3ème primaire', 'Licence universitaire', 'Master'],
      correct: 0,
      explanation: `Ce cours est conçu pour les élèves de ${level}${level === 1 ? 'ère' : 'ème'} secondaire.`,
    },
  ];
}

/* ─── Composant Quiz ────────────────────────────────────────────────────── */
function CourseQuiz({ course, onClose }) {
  const questions = buildQuiz(course);
  const [step, setStep]         = useState(0);   // question actuelle
  const [chosen, setChosen]     = useState(null); // index choisi (string car RadioGroup)
  const [validated, setValidated] = useState(false);
  const [scores, setScores]     = useState([]);   // bool par question
  const [done, setDone]         = useState(false);

  const q   = questions[step];
  const total = questions.length;
  const good  = scores.filter(Boolean).length;

  const validate = () => {
    if (chosen === null) return;
    const correct = parseInt(chosen, 10) === q.correct;
    setScores((s) => [...s, correct]);
    setValidated(true);
  };

  const next = () => {
    if (step + 1 >= total) { setDone(true); return; }
    setStep((s) => s + 1);
    setChosen(null);
    setValidated(false);
  };

  const restart = () => {
    setStep(0);
    setChosen(null);
    setValidated(false);
    setScores([]);
    setDone(false);
  };

  const pct = Math.round((good / total) * 100);

  /* ── Résultats ── */
  if (done) {
    return (
      <Box>
        <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
          <Typography variant="h6" fontWeight={700}>Résultats</Typography>
          <IconButton size="small" onClick={onClose}><Close /></IconButton>
        </Box>

        <Box textAlign="center" py={2}>
          <Avatar sx={{
            width: 72, height: 72, mx: 'auto', mb: 2,
            bgcolor: pct >= 75 ? 'success.main' : pct >= 50 ? 'warning.main' : 'error.main',
          }}>
            <EmojiEvents sx={{ fontSize: 40 }} />
          </Avatar>
          <Typography variant="h3" fontWeight={800}>{good}/{total}</Typography>
          <Typography variant="h6" color="text.secondary" mt={0.5}>
            {pct >= 75 ? 'Excellent !' : pct >= 50 ? 'Pas mal, continue !' : 'Il faut réviser encore.'}
          </Typography>

          <LinearProgress
            variant="determinate" value={pct}
            color={pct >= 75 ? 'success' : pct >= 50 ? 'warning' : 'error'}
            sx={{ mt: 3, mb: 1, height: 12, borderRadius: 6 }}
          />
          <Typography variant="caption" color="text.secondary">{pct}% de bonnes réponses</Typography>
        </Box>

        {/* Détail par question */}
        <Box mt={2} mb={3}>
          {questions.map((qq, i) => (
            <Box key={i} display="flex" alignItems="center" gap={1} mb={0.5}>
              {scores[i]
                ? <CheckCircle fontSize="small" color="success" />
                : <Close fontSize="small" color="error" />}
              <Typography variant="body2" color="text.secondary" sx={{ fontSize: 13 }}>
                {qq.question.length > 50 ? qq.question.slice(0, 50) + '…' : qq.question}
              </Typography>
            </Box>
          ))}
        </Box>

        <Stack direction="row" spacing={1}>
          <Button fullWidth variant="outlined" startIcon={<Replay />} onClick={restart}>
            Recommencer
          </Button>
          <Button fullWidth variant="contained" onClick={onClose}>
            Fermer
          </Button>
        </Stack>
      </Box>
    );
  }

  /* ── Question ── */
  return (
    <Box>
      <Box display="flex" justifyContent="space-between" alignItems="center" mb={1.5}>
        <Typography variant="body2" color="text.secondary" fontWeight={600}>
          Question {step + 1} / {total}
        </Typography>
        <IconButton size="small" onClick={onClose}><Close fontSize="small" /></IconButton>
      </Box>

      <LinearProgress
        variant="determinate"
        value={(step / total) * 100}
        sx={{ mb: 2.5, height: 6, borderRadius: 6 }}
      />

      <Typography variant="subtitle1" fontWeight={700} mb={2.5} lineHeight={1.5}>
        {q.question}
      </Typography>

      <RadioGroup value={chosen} onChange={(e) => !validated && setChosen(e.target.value)}>
        {q.options.map((opt, i) => {
          let borderColor = 'grey.200';
          let bgcolor     = 'transparent';
          let textColor   = 'text.primary';

          if (validated) {
            if (i === q.correct) {
              borderColor = 'success.main'; bgcolor = '#EAFAF1'; textColor = 'success.dark';
            } else if (String(i) === chosen) {
              borderColor = 'error.main'; bgcolor = '#FDEDEC'; textColor = 'error.dark';
            }
          } else if (chosen === String(i)) {
            borderColor = 'primary.main'; bgcolor = '#EBF5FB';
          }

          return (
            <FormControlLabel
              key={i}
              value={String(i)}
              control={
                <Radio
                  size="small"
                  color={
                    validated && i === q.correct ? 'success'
                    : validated && String(i) === chosen ? 'error'
                    : 'primary'
                  }
                  sx={{ py: 0.5 }}
                />
              }
              label={
                <Typography variant="body2" sx={{ color: textColor, fontWeight: chosen === String(i) || (validated && i === q.correct) ? 600 : 400 }}>
                  {opt}
                </Typography>
              }
              sx={{
                mb: 1, px: 1.5, py: 0.5, borderRadius: 2,
                border: '1.5px solid', borderColor,
                bgcolor,
                transition: 'all 0.15s',
                width: '100%', ml: 0,
              }}
            />
          );
        })}
      </RadioGroup>

      <Collapse in={validated}>
        <Alert
          severity={parseInt(chosen, 10) === q.correct ? 'success' : 'error'}
          sx={{ mt: 1.5, borderRadius: 2 }}
        >
          {q.explanation}
        </Alert>
      </Collapse>

      <Box mt={2}>
        {!validated ? (
          <Button
            fullWidth variant="contained"
            disabled={chosen === null}
            onClick={validate}
            sx={{ py: 1.2 }}
          >
            Valider ma réponse
          </Button>
        ) : (
          <Button
            fullWidth variant="contained"
            endIcon={<NavigateNext />}
            onClick={next}
            sx={{ py: 1.2 }}
          >
            {step + 1 >= total ? 'Voir mes résultats' : 'Question suivante'}
          </Button>
        )}
      </Box>
    </Box>
  );
}

/* ─── Page principale ───────────────────────────────────────────────────── */
export default function CourseView() {
  const { id }   = useParams();
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { current: course, loading } = useSelector((s) => s.courses);

  const [done, setDone]           = useState(false);
  const [quizOpen, setQuizOpen]   = useState(false);

  useEffect(() => {
    dispatch(fetchCourse(id));
    setDone(false);
    setQuizOpen(false);
  }, [dispatch, id]);

  if (loading || !course) {
    return <MainLayout><LoadingSpinner /></MainLayout>;
  }

  return (
    <MainLayout>
      {/* Retour */}
      <Button
        startIcon={<ArrowBack />}
        onClick={() => navigate(-1)}
        sx={{ mb: 3, color: 'text.secondary' }}
      >
        Retour aux cours
      </Button>

      <Grid container spacing={3} alignItems="flex-start">

        {/* ══ Contenu principal ══ */}
        <Grid item xs={12} md={8}>
          <Card elevation={0} sx={{ border: '1px solid', borderColor: 'grey.200' }}>
            <CardContent sx={{ p: { xs: 2.5, md: 4 } }}>

              {/* Badges */}
              <Stack direction="row" gap={1} mb={2.5} flexWrap="wrap">
                <LevelBadge levelNumber={course.levelNumber} />
                <Chip label={course.subjectName} variant="outlined" size="small" />
                <Chip
                  label={{ VIDEO: 'Vidéo', TEXT: 'Cours', QUIZ: 'Quiz', EXERCISE: 'Exercice' }[course.contentType] ?? course.contentType}
                  color="primary"
                  size="small"
                />
              </Stack>

              {/* Titre */}
              <Typography variant="h4" fontWeight={800} gutterBottom lineHeight={1.3}>
                {course.title}
              </Typography>
              <Typography variant="body2" color="text.secondary" mb={3}>
                Par {course.teacherName ?? 'Équipe pédagogique MOST ÉCOLE'}
              </Typography>

              <Divider sx={{ mb: 3 }} />

              {/* Vidéo */}
              {course.contentType === 'VIDEO' && course.contentUrl && (
                <Box sx={{
                  position: 'relative', paddingTop: '56.25%',
                  bgcolor: '#000', borderRadius: 2, overflow: 'hidden', mb: 4,
                }}>
                  <iframe
                    src={course.contentUrl}
                    style={{ position: 'absolute', top: 0, left: 0, width: '100%', height: '100%', border: 'none' }}
                    allowFullScreen title={course.title}
                  />
                </Box>
              )}

              {/* Texte Markdown */}
              {course.contentText && (
                <Box sx={{ '& > *:first-of-type': { mt: 0 } }}>
                  <ReactMarkdown remarkPlugins={[remarkGfm]} components={md}>
                    {course.contentText}
                  </ReactMarkdown>
                </Box>
              )}
            </CardContent>
          </Card>
        </Grid>

        {/* ══ Sidebar ══ */}
        <Grid item xs={12} md={4}>
          <Stack spacing={2}>

            {/* Progression */}
            <Card elevation={0} sx={{ border: '1px solid', borderColor: 'grey.200' }}>
              <CardContent>
                <Typography variant="h6" fontWeight={700} mb={2}>Ma progression</Typography>

                <Box display="flex" justifyContent="space-between" mb={0.5}>
                  <Typography variant="body2" color="text.secondary">Avancement</Typography>
                  <Typography variant="body2" fontWeight={700} color={done ? 'success.main' : 'primary.main'}>
                    {done ? '100%' : '35%'}
                  </Typography>
                </Box>
                <LinearProgress
                  variant="determinate"
                  value={done ? 100 : 35}
                  color={done ? 'success' : 'primary'}
                  sx={{ height: 10, borderRadius: 6, mb: 2.5 }}
                />

                <Button
                  fullWidth
                  variant={done ? 'outlined' : 'contained'}
                  color={done ? 'success' : 'primary'}
                  startIcon={done ? <CheckCircle /> : <CheckCircleOutline />}
                  onClick={() => setDone((v) => !v)}
                  sx={{ py: 1.2 }}
                >
                  {done ? 'Terminé ✓' : 'Marquer comme terminé'}
                </Button>
              </CardContent>
            </Card>

            {/* Quiz */}
            <Card elevation={0} sx={{ border: '1px solid', borderColor: 'grey.200' }}>
              <CardContent>
                {quizOpen ? (
                  <CourseQuiz course={course} onClose={() => setQuizOpen(false)} />
                ) : (
                  <>
                    <Box display="flex" alignItems="center" gap={1.5} mb={1.5}>
                      <Avatar sx={{ bgcolor: 'secondary.main', width: 40, height: 40 }}>
                        <QuizIcon />
                      </Avatar>
                      <Typography variant="h6" fontWeight={700}>Quiz du cours</Typography>
                    </Box>

                    <Typography variant="body2" color="text.secondary" mb={2.5} lineHeight={1.6}>
                      Testez vos connaissances avec 4 questions sur ce cours. Obtenez au moins 75% pour valider vos acquis.
                    </Typography>

                    {!done && (
                      <Alert severity="info" sx={{ mb: 2, borderRadius: 2 }}>
                        Finissez de lire le cours avant de commencer le quiz.
                      </Alert>
                    )}

                    <Button
                      fullWidth
                      variant={done ? 'contained' : 'outlined'}
                      color="secondary"
                      startIcon={<QuizIcon />}
                      onClick={() => setQuizOpen(true)}
                      sx={{ py: 1.2 }}
                    >
                      Commencer le quiz
                    </Button>
                  </>
                )}
              </CardContent>
            </Card>

            {/* Info cours */}
            <Card elevation={0} sx={{ border: '1px solid', borderColor: 'grey.200' }}>
              <CardContent>
                <Typography variant="subtitle2" fontWeight={700} mb={1.5} color="text.secondary" textTransform="uppercase" letterSpacing={0.5}>
                  À propos de ce cours
                </Typography>
                <Stack spacing={1}>
                  <Box display="flex" justifyContent="space-between">
                    <Typography variant="body2" color="text.secondary">Matière</Typography>
                    <Typography variant="body2" fontWeight={600}>{course.subjectName}</Typography>
                  </Box>
                  <Divider />
                  <Box display="flex" justifyContent="space-between">
                    <Typography variant="body2" color="text.secondary">Niveau</Typography>
                    <Typography variant="body2" fontWeight={600}>{course.levelNumber}ème secondaire</Typography>
                  </Box>
                  <Divider />
                  <Box display="flex" justifyContent="space-between">
                    <Typography variant="body2" color="text.secondary">Type</Typography>
                    <Typography variant="body2" fontWeight={600}>
                      {{ VIDEO: 'Vidéo', TEXT: 'Cours écrit', QUIZ: 'Quiz', EXERCISE: 'Exercice' }[course.contentType]}
                    </Typography>
                  </Box>
                  <Divider />
                  <Box display="flex" justifyContent="space-between">
                    <Typography variant="body2" color="text.secondary">Auteur</Typography>
                    <Typography variant="body2" fontWeight={600}>
                      {course.teacherName ?? 'Équipe MOST ÉCOLE'}
                    </Typography>
                  </Box>
                </Stack>
              </CardContent>
            </Card>

          </Stack>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
