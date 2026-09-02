import { useState, useEffect } from 'react';
import {
  Box, Typography, Card, CardContent, Button, Stack, Chip, TextField,
  MenuItem, Grid, Accordion, AccordionSummary, AccordionDetails,
  IconButton, Tooltip, Dialog, DialogTitle, DialogContent,
  DialogActions, Alert,
} from '@mui/material';
import {
  ExpandMore, Add, Edit, Delete, LibraryBooks, Link as LinkIcon,
} from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';
import { getLevels, getLevelSubjects, getCurriculum } from '../../api/levelsApi';

export default function CurriculumManager() {
  const [levels,      setLevels]      = useState([]);
  const [subjects,    setSubjects]    = useState([]);
  const [curriculum,  setCurriculum]  = useState([]);
  const [levelId,     setLevelId]     = useState('');
  const [subjectId,   setSubjectId]   = useState('');
  const [addDialog,   setAddDialog]   = useState(false);

  useEffect(() => {
    getLevels().then(setLevels).catch(() => {});
  }, []);

  useEffect(() => {
    if (levelId) {
      getLevelSubjects(levelId).then(setSubjects).catch(() => {});
      setSubjectId('');
      setCurriculum([]);
    }
  }, [levelId]);

  useEffect(() => {
    if (levelId && subjectId) {
      getCurriculum(levelId, subjectId).then(setCurriculum).catch(() => {});
    }
  }, [levelId, subjectId]);

  // Group by topic
  const grouped = curriculum.reduce((acc, item) => {
    if (!acc[item.topic]) acc[item.topic] = [];
    acc[item.topic].push(item);
    return acc;
  }, {});

  return (
    <MainLayout>
      <Box display="flex" justifyContent="space-between" alignItems="center" mb={3}>
        <Box>
          <Typography variant="h4" fontWeight={700}>Référentiels curriculaires</Typography>
          <Typography color="text.secondary">
            Attentes du programme officiel FWB/SEGEC/WBE
          </Typography>
        </Box>
        <Button variant="contained" startIcon={<Add />} onClick={() => setAddDialog(true)}>
          Ajouter une attente
        </Button>
      </Box>

      <Alert severity="info" sx={{ mb: 3 }}>
        <strong>Source légale :</strong> Seuls les référentiels officiels FWB, SEGEC et WBE sont
        utilisés comme base curriculaire. Les manuels commerciaux (Van In, De Boeck, Plantyn) ne
        sont pas reproduits sur la plateforme pour respecter le droit d'auteur.
      </Alert>

      {/* Filters */}
      <Card sx={{ mb: 3 }}>
        <CardContent>
          <Stack direction={{ xs: 'column', md: 'row' }} spacing={2}>
            <TextField select label="Niveau" value={levelId}
              onChange={(e) => setLevelId(e.target.value)} sx={{ minWidth: 220 }} size="small">
              <MenuItem value="">Sélectionnez un niveau</MenuItem>
              {levels.map((l) => (
                <MenuItem key={l.id} value={l.id}>{l.displayName}</MenuItem>
              ))}
            </TextField>
            <TextField select label="Matière" value={subjectId} disabled={!levelId}
              onChange={(e) => setSubjectId(e.target.value)} sx={{ minWidth: 220 }} size="small">
              <MenuItem value="">Sélectionnez une matière</MenuItem>
              {subjects.map((s) => (
                <MenuItem key={s.id} value={s.id}>{s.name}</MenuItem>
              ))}
            </TextField>
            {curriculum.length > 0 && (
              <Chip
                icon={<LibraryBooks />}
                label={`${curriculum.length} attentes curriculaires`}
                color="primary"
              />
            )}
          </Stack>
        </CardContent>
      </Card>

      {/* Curriculum list grouped by topic */}
      {!levelId && (
        <Card sx={{ p: 4, textAlign: 'center' }}>
          <LibraryBooks sx={{ fontSize: 48, color: 'text.disabled', mb: 1 }} />
          <Typography color="text.secondary">
            Sélectionnez un niveau et une matière pour afficher les attentes curriculaires.
          </Typography>
        </Card>
      )}

      {levelId && subjectId && Object.keys(grouped).length === 0 && (
        <Card sx={{ p: 4, textAlign: 'center' }}>
          <Typography color="text.secondary" mb={2}>
            Aucune attente curriculaire définie pour cette matière.
          </Typography>
          <Button variant="contained" startIcon={<Add />} onClick={() => setAddDialog(true)}>
            Ajouter la première attente
          </Button>
        </Card>
      )}

      {Object.entries(grouped).map(([topic, items]) => (
        <Accordion key={topic} defaultExpanded sx={{ mb: 1 }}>
          <AccordionSummary expandIcon={<ExpandMore />}>
            <Stack direction="row" spacing={2} alignItems="center">
              <Typography fontWeight={700}>{topic}</Typography>
              <Chip label={`${items.length} attente${items.length > 1 ? 's' : ''}`}
                size="small" variant="outlined" />
            </Stack>
          </AccordionSummary>
          <AccordionDetails>
            <Grid container spacing={2}>
              {items.map((item) => (
                <Grid item xs={12} key={item.id}>
                  <Card variant="outlined">
                    <CardContent sx={{ py: 1.5, '&:last-child': { pb: 1.5 } }}>
                      <Stack direction="row" alignItems="flex-start" spacing={2}>
                        <Box flexGrow={1}>
                          <Typography variant="body2">{item.description}</Typography>
                          {item.sourceUrl && (
                            <Stack direction="row" spacing={0.5} alignItems="center" mt={0.5}>
                              <LinkIcon fontSize="small" color="action" />
                              <Typography
                                variant="caption"
                                color="primary"
                                component="a"
                                href={item.sourceUrl}
                                target="_blank"
                                rel="noopener noreferrer"
                                sx={{ textDecoration: 'none', '&:hover': { textDecoration: 'underline' } }}
                              >
                                {item.sourceName ?? 'Source officielle'}
                              </Typography>
                            </Stack>
                          )}
                        </Box>
                        <Stack direction="row">
                          <Tooltip title="Modifier">
                            <IconButton size="small"><Edit fontSize="small" /></IconButton>
                          </Tooltip>
                          <Tooltip title="Supprimer">
                            <IconButton size="small" color="error"><Delete fontSize="small" /></IconButton>
                          </Tooltip>
                        </Stack>
                      </Stack>
                    </CardContent>
                  </Card>
                </Grid>
              ))}
            </Grid>
          </AccordionDetails>
        </Accordion>
      ))}

      {/* Add Dialog */}
      <Dialog open={addDialog} onClose={() => setAddDialog(false)} maxWidth="sm" fullWidth>
        <DialogTitle>Ajouter une attente curriculaire</DialogTitle>
        <DialogContent>
          <Stack spacing={2} pt={1}>
            <TextField label="Sujet / UAA" fullWidth placeholder="Ex: UAA 2 – Algèbre" />
            <TextField label="Description de l'attente" fullWidth multiline rows={3}
              placeholder="L'élève sera capable de..." />
            <TextField label="Source officielle (nom)" fullWidth
              placeholder="Ex: Référentiel FWB Mathématiques 2026" />
            <TextField label="URL de la source" fullWidth
              placeholder="https://www.enseignement.be/..." />
          </Stack>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setAddDialog(false)}>Annuler</Button>
          <Button variant="contained" onClick={() => setAddDialog(false)}>Ajouter</Button>
        </DialogActions>
      </Dialog>
    </MainLayout>
  );
}
