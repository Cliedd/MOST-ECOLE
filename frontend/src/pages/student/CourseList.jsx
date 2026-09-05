import { useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import {
  Box, Grid, Typography, TextField, InputAdornment,
  ToggleButton, ToggleButtonGroup, Card, Skeleton, Chip, Stack,
} from '@mui/material';
import { Search, FilterList } from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';
import CourseCard from '../../components/ui/CourseCard';
import { fetchCourses, setFilters } from '../../store/coursesSlice';

export default function CourseList() {
  const dispatch = useDispatch();
  const { list: courses, loading } = useSelector((s) => s.courses);
  const [level, setLevel] = useState(null);
  const [search, setSearch] = useState('');

  useEffect(() => {
    dispatch(fetchCourses(level ? { levelId: level } : {}));
  }, [dispatch, level]);

  const filtered = search.trim()
    ? courses.filter((c) =>
        c.title?.toLowerCase().includes(search.toLowerCase()) ||
        c.subjectName?.toLowerCase().includes(search.toLowerCase()) ||
        c.description?.toLowerCase().includes(search.toLowerCase())
      )
    : courses;

  const handleLevelChange = (_, newLevel) => {
    setLevel(newLevel);
    dispatch(setFilters({ levelId: newLevel }));
  };

  return (
    <MainLayout>
      {/* Header */}
      <Box mb={3}>
        <Typography variant="h5" fontWeight={700} gutterBottom>
          Mes cours
        </Typography>
        <Typography variant="body2" color="text.secondary">
          {courses.length > 0
            ? `${courses.length} cours disponibles dans votre programme`
            : 'Explorez tout le contenu pédagogique disponible'}
        </Typography>
      </Box>

      {/* Filtres */}
      <Box sx={{ mb: 3, display: 'flex', gap: 2, flexWrap: 'wrap', alignItems: 'center' }}>
        <TextField
          size="small"
          placeholder="Rechercher un cours, une matière..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          sx={{ minWidth: 260, flexGrow: 1, maxWidth: 400 }}
          InputProps={{
            startAdornment: (
              <InputAdornment position="start">
                <Search fontSize="small" />
              </InputAdornment>
            ),
          }}
        />

        <Stack direction="row" alignItems="center" gap={1} flexWrap="wrap">
          <FilterList fontSize="small" sx={{ color: 'text.secondary' }} />
          <ToggleButtonGroup
            value={level}
            exclusive
            onChange={handleLevelChange}
            size="small"
          >
            {[1, 2, 3, 4, 5, 6].map((n) => (
              <ToggleButton key={n} value={n} sx={{ px: 1.5, fontSize: 12 }}>
                N{n}
              </ToggleButton>
            ))}
          </ToggleButtonGroup>
          {level && (
            <Chip
              label="Effacer filtre"
              size="small"
              onDelete={() => handleLevelChange(null, null)}
            />
          )}
        </Stack>
      </Box>

      {/* Grille de cours */}
      {loading ? (
        <Grid container spacing={3}>
          {Array.from({ length: 9 }).map((_, i) => (
            <Grid item xs={12} sm={6} md={4} key={i}>
              <Skeleton variant="rectangular" height={240} sx={{ borderRadius: 2 }} />
            </Grid>
          ))}
        </Grid>
      ) : filtered.length === 0 ? (
        <Card sx={{ p: 5, textAlign: 'center' }}>
          <Typography variant="h6" color="text.secondary" gutterBottom>
            Aucun cours trouvé
          </Typography>
          <Typography variant="body2" color="text.secondary">
            {search ? `Aucun résultat pour "${search}"` : 'Aucun cours disponible pour ce niveau.'}
          </Typography>
        </Card>
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
