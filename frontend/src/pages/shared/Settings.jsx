import {
  Box, Card, CardContent, Typography, Stack, Divider,
  Switch, FormControlLabel, Button, Alert, Select,
  MenuItem, FormControl, InputLabel,
} from '@mui/material';
import { useState } from 'react';
import { Notifications, Language, Palette, Security } from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';

function SettingsSection({ icon, title, children }) {
  return (
    <Card sx={{ mb: 2 }}>
      <CardContent>
        <Box display="flex" alignItems="center" gap={1.5} mb={2}>
          <Box sx={{ color: 'primary.main' }}>{icon}</Box>
          <Typography variant="h6" fontWeight={700}>{title}</Typography>
        </Box>
        <Divider sx={{ mb: 2 }} />
        {children}
      </CardContent>
    </Card>
  );
}

export default function Settings() {
  const [saved, setSaved] = useState(false);
  const [prefs, setPrefs] = useState({
    emailNotifs: true,
    pushNotifs: false,
    weeklyReport: true,
    language: 'fr',
    theme: 'light',
  });

  const toggle = (key) => setPrefs((p) => ({ ...p, [key]: !p[key] }));
  const set = (key, val) => setPrefs((p) => ({ ...p, [key]: val }));

  const handleSave = () => {
    setSaved(true);
    setTimeout(() => setSaved(false), 3000);
  };

  return (
    <MainLayout>
      <Typography variant="h5" fontWeight={700} mb={3}>Paramètres</Typography>

      {saved && (
        <Alert severity="success" sx={{ mb: 2 }}>
          Paramètres enregistrés avec succès.
        </Alert>
      )}

      <SettingsSection icon={<Notifications />} title="Notifications">
        <Stack spacing={1}>
          <FormControlLabel
            control={<Switch checked={prefs.emailNotifs} onChange={() => toggle('emailNotifs')} />}
            label="Notifications par email"
          />
          <FormControlLabel
            control={<Switch checked={prefs.pushNotifs} onChange={() => toggle('pushNotifs')} />}
            label="Notifications push"
          />
          <FormControlLabel
            control={<Switch checked={prefs.weeklyReport} onChange={() => toggle('weeklyReport')} />}
            label="Rapport hebdomadaire de progression"
          />
        </Stack>
      </SettingsSection>

      <SettingsSection icon={<Language />} title="Langue et région">
        <FormControl size="small" sx={{ minWidth: 200 }}>
          <InputLabel>Langue</InputLabel>
          <Select
            value={prefs.language}
            label="Langue"
            onChange={(e) => set('language', e.target.value)}
          >
            <MenuItem value="fr">Français</MenuItem>
            <MenuItem value="nl">Nederlands</MenuItem>
            <MenuItem value="en">English</MenuItem>
          </Select>
        </FormControl>
      </SettingsSection>

      <SettingsSection icon={<Palette />} title="Apparence">
        <FormControl size="small" sx={{ minWidth: 200 }}>
          <InputLabel>Thème</InputLabel>
          <Select
            value={prefs.theme}
            label="Thème"
            onChange={(e) => set('theme', e.target.value)}
          >
            <MenuItem value="light">Clair</MenuItem>
            <MenuItem value="dark">Sombre</MenuItem>
            <MenuItem value="system">Selon le système</MenuItem>
          </Select>
        </FormControl>
      </SettingsSection>

      <SettingsSection icon={<Security />} title="Sécurité">
        <Stack spacing={2}>
          <Typography variant="body2" color="text.secondary">
            Votre compte est sécurisé. Connecté via Google OAuth2.
          </Typography>
          <Button variant="outlined" color="error" size="small" sx={{ alignSelf: 'flex-start' }}>
            Se déconnecter de tous les appareils
          </Button>
        </Stack>
      </SettingsSection>

      <Box display="flex" justifyContent="flex-end" mt={1}>
        <Button variant="contained" size="large" onClick={handleSave}>
          Enregistrer les paramètres
        </Button>
      </Box>
    </MainLayout>
  );
}
