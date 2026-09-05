import {
  Box, Card, CardContent, Typography, Avatar, Grid,
  Divider, Chip, Stack, TextField, Button, Alert,
} from '@mui/material';
import { Email, Badge, School, Edit } from '@mui/icons-material';
import { useState } from 'react';
import { useSelector } from 'react-redux';
import MainLayout from '../../components/layout/MainLayout';
import { selectUser } from '../../store/authSlice';
import { formatRole, formatLevelName } from '../../utils/formatters';

export default function Profile() {
  const user = useSelector(selectUser);
  const [editMode, setEditMode] = useState(false);
  const [saved, setSaved] = useState(false);

  const initials = user
    ? `${user.firstName?.[0] ?? ''}${user.lastName?.[0] ?? ''}`.toUpperCase()
    : '?';

  const handleSave = () => {
    setEditMode(false);
    setSaved(true);
    setTimeout(() => setSaved(false), 3000);
  };

  return (
    <MainLayout>
      <Typography variant="h5" fontWeight={700} mb={3}>Mon profil</Typography>

      {saved && (
        <Alert severity="success" sx={{ mb: 2 }}>
          Profil mis à jour avec succès.
        </Alert>
      )}

      <Grid container spacing={3}>
        {/* Avatar card */}
        <Grid item xs={12} md={4}>
          <Card>
            <CardContent sx={{ textAlign: 'center', py: 4 }}>
              <Avatar
                sx={{
                  width: 90, height: 90, bgcolor: 'primary.main',
                  fontSize: 34, fontWeight: 700, mx: 'auto', mb: 2,
                }}
              >
                {initials}
              </Avatar>
              <Typography variant="h6" fontWeight={700}>
                {user?.firstName} {user?.lastName}
              </Typography>
              <Chip
                label={formatRole(user?.role)}
                color="primary"
                size="small"
                sx={{ mt: 1 }}
              />
              {user?.currentLevel && (
                <Typography variant="body2" color="text.secondary" mt={1.5}>
                  {formatLevelName(user.currentLevel)}
                </Typography>
              )}
            </CardContent>
          </Card>
        </Grid>

        {/* Info card */}
        <Grid item xs={12} md={8}>
          <Card>
            <CardContent>
              <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
                <Typography variant="h6" fontWeight={700}>
                  Informations personnelles
                </Typography>
                <Button
                  size="small"
                  startIcon={<Edit />}
                  onClick={() => setEditMode(!editMode)}
                >
                  {editMode ? 'Annuler' : 'Modifier'}
                </Button>
              </Box>
              <Divider sx={{ mb: 3 }} />

              <Stack spacing={3}>
                <Grid container spacing={2}>
                  <Grid item xs={12} sm={6}>
                    <TextField
                      label="Prénom"
                      fullWidth
                      defaultValue={user?.firstName ?? ''}
                      disabled={!editMode}
                      size="small"
                    />
                  </Grid>
                  <Grid item xs={12} sm={6}>
                    <TextField
                      label="Nom"
                      fullWidth
                      defaultValue={user?.lastName ?? ''}
                      disabled={!editMode}
                      size="small"
                    />
                  </Grid>
                </Grid>

                <Box display="flex" alignItems="center" gap={2}>
                  <Email sx={{ color: 'text.secondary' }} fontSize="small" />
                  <TextField
                    label="Adresse email"
                    fullWidth
                    defaultValue={user?.email ?? ''}
                    disabled
                    size="small"
                    helperText="L'email ne peut pas être modifié"
                  />
                </Box>

                <Box display="flex" alignItems="center" gap={2}>
                  <Badge sx={{ color: 'text.secondary' }} fontSize="small" />
                  <TextField
                    label="Rôle"
                    fullWidth
                    value={formatRole(user?.role)}
                    disabled
                    size="small"
                  />
                </Box>

                {user?.currentLevel && (
                  <Box display="flex" alignItems="center" gap={2}>
                    <School sx={{ color: 'text.secondary' }} fontSize="small" />
                    <TextField
                      label="Niveau actuel"
                      fullWidth
                      value={formatLevelName(user.currentLevel)}
                      disabled
                      size="small"
                    />
                  </Box>
                )}

                {editMode && (
                  <Box>
                    <Button
                      variant="contained"
                      onClick={handleSave}
                      sx={{ mr: 1 }}
                    >
                      Enregistrer
                    </Button>
                    <Button onClick={() => setEditMode(false)}>
                      Annuler
                    </Button>
                  </Box>
                )}
              </Stack>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </MainLayout>
  );
}
