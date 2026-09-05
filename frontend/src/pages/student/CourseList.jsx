import { useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import {
  Box, Grid, Typography, TextField, InputAdornment,
  Button, ButtonGroup, Skeleton, Paper, Chip, Stack,
  MenuItem, Select, FormControl, InputLabel,
} from '@mui/material';
import {
  Search, SchoolOutlined, FilterAlt, Clear,
} from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';
import CourseCard from '../../components/ui/CourseCard';
import { fetchCourses } from '../../store/coursesSlice';

const LEVELS = [
  { value: null, label: 'Tous les niveaux' },
  { value: 1, label: '1ère secondaire' },
  { value: 2, label: '2ème secondaire' },
  { value: 3, label: '3ème secondaire' },
  { value: 4, label: '4ème secondaire' },
  { value: 5, label: '5ème secondaire' },
  { value: 6, label: '6ème (Rhéto)' },
];

const TYPES = [
  { value: '', label: 'Tous les types' },
  { value: 'TEXT', label: 'Cours théorique' },
  { value: 'VIDEO', label: 'Vidéo' },
  { value: 'QUIZ', label: 'Quiz' },
  { value: 'EXERCISE', label: 'Exercice' },
];

export default function CourseList() {
  const dispatch = useDispatch();
  const { list: courses, loading } = useSelector((s) => s.courses);

  const [level, setLevel]   = useState(null);
  const [type, setType]     = useState('');
  const [search, setSearch] = useState('');

  useEffect(() => {
    dispatch(fetchCourses(level ? { levelId: level } : {}));
  }, [dispatch, level]);

  /* Filtrage côté client (search + type) */
  const filtered = courses.filter((c) => {
    const matchSearch = !search.trim() ||
      c.title?.toLowerCase().includes(search.toLowerCase()) ||
      c.subjectName?.toLowerCase().includes(search.toLowerCase()) ||
      c.description?.toLowerCase().includes(search.toLowerCase());
    const matchType = !type || c.contentType === type;
    return matchSearch && matchType;
  });

  const hasFilters = !!search || level !== null || !!type;

  const clearFilters = () => {
    setSearch('');
    setLevel(null);
    setType('');
  };

  return (
    <MainLayout>

      {/* ── En-tête ── */}
      <Box mb={4}>
        <Typography variant="h4" fontWeight={800} color="primary" gutterBottom>
          Mes cours
        </Typography>
        <Typography variant="body1" color="text.secondary">
          {loading
            ? 'Chargement du catalogue…'
            : `${filtered.length} cours${filtered.length !== courses.length ? ` sur ${courses.length}` : ''} disponibles`}
        </Typography>
      </Box>

      {/* ── Barre de filtres ── */}
      <Paper
        elevation={0}
        sx={{ p: 2.5, mb: 4, border: '1px solid', borderColor: 'grey.200', borderRadius: 3 }}
      >
        <Stack spacing={2}>
          {/* Recherche */}
          <TextField
            fullWidth
            size="small"
            placeholder="Rechercher un cours, une matière, un mot-clé…"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            InputProps={{
              startAdornment: (
                <InputAdornment position="start">
                  <Search fontSize="small" color="action" />
                </InputAdornment>
              ),
              endAdornment: search && (
                <InputAdornment position="end">
                  <Clear
                    fontSize="small"
                    sx={{ cursor: 'pointer', color: 'text.secondary' }}
                    onClick={() => setSearch('')}
                  />
                </InputAdornment>
              ),
            }}
          />

          {/* Filtres niveau + type */}
          <Stack direction={{ xs: 'column', sm: 'row' }} spacing={2} alignItems="center">
            {/* Niveau — boutons pill */}
            <Stack direction="row" flexWrap="wrap" gap={1} flexGrow={1}>
              {LEVELS.map((l) => (
                <Button
                  key={String(l.value)}
                  variant={level === l.value ? 'contained' : 'outlined'}
                  size="small"
                  onClick={() => setLevel(l.value)}
                  sx={{
                    borderRadius: 20,
                    px: 2,
                    fontSize: 12,
                    minWidth: 'auto',
                    ...(level === l.value ? {} : { borderColor: 'grey.300', color: 'text.secondary' }),
                  }}
                >
                  {l.label}
                </Button>
              ))}
            </Stack>

            {/* Type */}
            <FormControl size="small" sx={{ minWidth: 180, flexShrink: 0 }}>
              <InputLabel>Type de contenu</InputLabel>
              <Select
                value={type}
                label="Type de contenu"
                onChange={(e) => setType(e.target.value)}
              >
                {TYPES.map((t) => (
                  <MenuItem key={t.value} value={t.value}>{t.label}</MenuItem>
                ))}
              </Select>
            </FormControl>

            {/* Effacer */}
            {hasFilters && (
              <Button
                size="small"
                onClick={clearFilters}
                startIcon={<Clear fontSize="small" />}
                sx={{ flexShrink: 0, color: 'text.secondary' }}
              >
                Effacer
              </Button>
            )}
          </Stack>
        </Stack>
      </Paper>

      {/* ── Grille de cours ── */}
      {loading ? (
        <Grid container spacing={3}>
          {Array.from({ length: 9 }).map((_, i) => (
            <Grid item xs={12} sm={6} md={4} key={i}>
              <Skeleton variant="rectangular" height={280} sx={{ borderRadius: 3 }} />
            </Grid>
          ))}
        </Grid>
      ) : filtered.length === 0 ? (
        <Paper
          elevation={0}
          sx={{
            py: 8, textAlign: 'center',
            border: '2px dashed', borderColor: 'grey.200', borderRadius: 3,
          }}
        >
          <SchoolOutlined sx={{ fontSize: 60, color: 'grey.300', mb: 2 }} />
          <Typography variant="h6" fontWeight={700} color="text.secondary" gutterBottom>
            Aucun cours trouvé
          </Typography>
          <Typography variant="body2" color="text.secondary" mb={3}>
            {search
              ? `Aucun résultat pour "${search}"`
              : 'Aucun cours disponible pour les filtres sélectionnés.'}
          </Typography>
          {hasFilters && (
            <Button variant="outlined" onClick={clearFilters}>
              Réinitialiser les filtres
            </Button>
          )}
        </Paper>
      ) : (
        <Grid container spacing={3}>
          {filtered.map((course) => (
            <Grid item xs={12} sm={6} md={4} key={course.id}>
              <CourseCard course={course} />
            </Grid>
          ))}
        </Grid>
      )}
    </MainLayout>
  );
}
