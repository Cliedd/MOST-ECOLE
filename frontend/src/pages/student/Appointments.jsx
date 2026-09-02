import {
  Box, Typography, Card, CardContent, Button, Grid,
  Chip, Avatar, Stack, Divider,
} from '@mui/material';
import { CalendarMonth, VideoCall, Add } from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';
import { formatDateTime } from '../../utils/formatters';

const MOCK_APPOINTMENTS = [
  { id: 1, teacher: 'M. Dumont',      subject: 'FSE',          date: '2025-09-10T14:00:00', status: 'CONFIRMED', duration: 60 },
  { id: 2, teacher: 'Mme Van Dieren', subject: 'Mathématiques', date: '2025-09-12T10:00:00', status: 'SCHEDULED', duration: 45 },
];

const STATUS_COLORS = { CONFIRMED: 'success', SCHEDULED: 'warning', CANCELLED: 'error', COMPLETED: 'default' };
const STATUS_LABELS = { CONFIRMED: 'Confirmé', SCHEDULED: 'En attente', CANCELLED: 'Annulé', COMPLETED: 'Terminé' };

export default function Appointments() {
  return (
    <MainLayout>
      <Box display="flex" justifyContent="space-between" alignItems="center" mb={3}>
        <Box>
          <Typography variant="h4" fontWeight={700}>Mes rendez-vous</Typography>
          <Typography color="text.secondary">Sessions de tutorat avec vos professeurs</Typography>
        </Box>
        <Button variant="contained" startIcon={<Add />}>
          Demander un RDV
        </Button>
      </Box>

      <Grid container spacing={3}>
        {MOCK_APPOINTMENTS.map((appt) => (
          <Grid item xs={12} md={6} key={appt.id}>
            <Card>
              <CardContent>
                <Stack direction="row" spacing={2} alignItems="center" mb={2}>
                  <Avatar sx={{ bgcolor: 'primary.main' }}>
                    {appt.teacher[0]}
                  </Avatar>
                  <Box flexGrow={1}>
                    <Typography fontWeight={700}>{appt.teacher}</Typography>
                    <Typography variant="caption" color="text.secondary">{appt.subject}</Typography>
                  </Box>
                  <Chip label={STATUS_LABELS[appt.status]} color={STATUS_COLORS[appt.status]} size="small" />
                </Stack>
                <Divider sx={{ mb: 2 }} />
                <Stack spacing={1}>
                  <Stack direction="row" spacing={1} alignItems="center">
                    <CalendarMonth fontSize="small" color="action" />
                    <Typography variant="body2">{formatDateTime(appt.date)}</Typography>
                  </Stack>
                  <Stack direction="row" spacing={1} alignItems="center">
                    <VideoCall fontSize="small" color="action" />
                    <Typography variant="body2">{appt.duration} minutes · Visioconférence</Typography>
                  </Stack>
                </Stack>
                <Button variant="outlined" fullWidth startIcon={<VideoCall />} sx={{ mt: 2 }}>
                  Rejoindre la session
                </Button>
              </CardContent>
            </Card>
          </Grid>
        ))}
      </Grid>
    </MainLayout>
  );
}
