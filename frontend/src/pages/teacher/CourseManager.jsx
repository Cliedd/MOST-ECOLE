import { useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import {
  Box, Typography, Card, CardContent, Button, Grid,
  Chip, Stack, TextField, MenuItem, IconButton, Tooltip,
  Dialog, DialogTitle, DialogContent, DialogContentText, DialogActions,
} from '@mui/material';
import {
  Add, Edit, Delete, Visibility, Search, FilterList,
} from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';
import LoadingSpinner from '../../components/ui/LoadingSpinner';
import LevelBadge from '../../components/ui/LevelBadge';
import { fetchCourses } from '../../store/coursesSlice';

const CONTENT_TYPE_LABELS = {
  VIDEO: 'Vidéo', TEXT: 'Texte', QUIZ: 'Quiz', EXERCISE: 'Exercice',
};

export default function CourseManager() {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { list: courses, loading } = useSelector((s) => s.courses);

  const [search,     setSearch]     = useState('');
  const [typeFilter, setTypeFilter] = useState('ALL');
  const [deleteId,   setDeleteId]   = useState(null);

  useEffect(() => { dispatch(fetchCourses({})); }, [dispatch]);

  const filtered = courses.filter((c) => {
    const matchSearch = c.title.toLowerCase().includes(search.toLowerCase()) ||
      (c.subjectName ?? '').toLowerCase().includes(search.toLowerCase());
    const matchType   = typeFilter === 'ALL' || c.contentType === typeFilter;
    return matchSearch && matchType;
  });

  const handleDeleteConfirm = () => {
    // TODO: dispatch deleteCourse(deleteId)
    setDeleteId(null);
  };

  return (
    <MainLayout>
      <Box display="flex" justifyContent="space-between" alignItems="center" mb={3}>
        <Box>
          <Typography variant="h4" fontWeight={700}>Mes cours</Typography>
          <Typography color="text.secondary">Gérez et éditez votre contenu pédagogique</Typography>
        </Box>
        <Button variant="contained" startIcon={<Add />}
          onClick={() => navigate('/teacher/content-builder')}>
          Nouveau cours
        </Button>
      </Box>

      {/* Filters */}
      <Card sx={{ mb: 3 }}>
        <CardContent>
          <Stack direction={{ xs: 'column', md: 'row' }} spacing={2} alignItems="center">
            <TextField
              size="small"
              placeholder="Rechercher un cours..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              InputProps={{ startAdornment: <Search fontSize="small" sx={{ mr: 1, color: 'text.secondary' }} /> }}
              sx={{ flexGrow: 1 }}
            />
            <TextField
              select size="small" label="Type de contenu" value={typeFilter}
              onChange={(e) => setTypeFilter(e.target.value)} sx={{ minWidth: 180 }}>
              <MenuItem value="ALL">Tous les types</MenuItem>
              {Object.entries(CONTENT_TYPE_LABELS).map(([k, v]) => (
                <MenuItem key={k} value={k}>{v}</MenuItem>
              ))}
            </TextField>
            <Chip
              icon={<FilterList />}
              label={`${filtered.length} cours`}
              variant="outlined"
            />
          </Stack>
        </CardContent>
      </Card>

      {/* Course list */}
      {loading ? <LoadingSpinner /> : (
        <Grid container spacing={2}>
          {filtered.length > 0 ? filtered.map((course) => (
            <Grid item xs={12} key={course.id}>
              <Card>
                <CardContent>
                  <Stack direction={{ xs: 'column', md: 'row' }} spacing={2} alignItems={{ md: 'center' }}>
                    <Box flexGrow={1}>
                      <Stack direction="row" spacing={1} alignItems="center" mb={0.5} flexWrap="wrap">
                        <LevelBadge levelNumber={course.levelNumber} />
                        <Chip label={CONTENT_TYPE_LABELS[course.contentType] ?? course.contentType}
                          size="small" color="primary" />
                        <Chip
                          label={course.isPublished ? 'Publié' : 'Brouillon'}
                          size="small"
                          color={course.isPublished ? 'success' : 'default'}
                        />
                      </Stack>
                      <Typography fontWeight={700}>{course.title}</Typography>
                      <Typography variant="caption" color="text.secondary">
                        {course.subjectName} · {course.levelName}
                      </Typography>
                    </Box>
                    <Stack direction="row" spacing={1}>
                      <Tooltip title="Aperçu">
                        <IconButton size="small" color="primary"
                          onClick={() => navigate(`/student/courses/${course.id}`)}>
                          <Visibility />
                        </IconButton>
                      </Tooltip>
                      <Tooltip title="Modifier">
                        <IconButton size="small" color="primary"
                          onClick={() => navigate(`/teacher/content-builder?edit=${course.id}`)}>
                          <Edit />
                        </IconButton>
                      </Tooltip>
                      <Tooltip title="Supprimer">
                        <IconButton size="small" color="error"
                          onClick={() => setDeleteId(course.id)}>
                          <Delete />
                        </IconButton>
                      </Tooltip>
                    </Stack>
                  </Stack>
                </CardContent>
              </Card>
            </Grid>
          )) : (
            <Grid item xs={12}>
              <Card sx={{ p: 5, textAlign: 'center' }}>
                <Typography color="text.secondary" mb={2}>
                  {search || typeFilter !== 'ALL'
                    ? 'Aucun cours ne correspond à votre recherche.'
                    : 'Vous n\'avez pas encore créé de cours.'}
                </Typography>
                <Button variant="contained" startIcon={<Add />}
                  onClick={() => navigate('/teacher/content-builder')}>
                  Créer un cours
                </Button>
              </Card>
            </Grid>
          )}
        </Grid>
      )}

      {/* Delete confirmation dialog */}
      <Dialog open={!!deleteId} onClose={() => setDeleteId(null)}>
        <DialogTitle>Supprimer ce cours ?</DialogTitle>
        <DialogContent>
          <DialogContentText>
            Cette action est irréversible. Le cours sera définitivement supprimé,
            ainsi que toutes les progressions associées.
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setDeleteId(null)}>Annuler</Button>
          <Button color="error" variant="contained" onClick={handleDeleteConfirm}>
            Supprimer
          </Button>
        </DialogActions>
      </Dialog>
    </MainLayout>
  );
}
