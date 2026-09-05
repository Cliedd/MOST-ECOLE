import {
  Box, Card, CardContent, Typography, Table, TableBody,
  TableCell, TableContainer, TableHead, TableRow, Avatar,
  Chip, TextField, InputAdornment, LinearProgress,
} from '@mui/material';
import { Search, Person } from '@mui/icons-material';
import { useState } from 'react';
import MainLayout from '../../components/layout/MainLayout';

const MOCK_STUDENTS = [
  { id: 1, firstName: 'Amara',   lastName: 'Diallo',   email: 'amara@example.com',   level: 3, progress: 72, status: 'Actif' },
  { id: 2, firstName: 'Lucas',   lastName: 'Martin',   email: 'lucas@example.com',   level: 4, progress: 85, status: 'Actif' },
  { id: 3, firstName: 'Sofia',   lastName: 'Dumont',   email: 'sofia@example.com',   level: 3, progress: 58, status: 'Inactif' },
  { id: 4, firstName: 'Youssef', lastName: 'Benali',   email: 'youssef@example.com', level: 5, progress: 91, status: 'Actif' },
  { id: 5, firstName: 'Emma',    lastName: 'Lejeune',  email: 'emma@example.com',    level: 4, progress: 64, status: 'Actif' },
  { id: 6, firstName: 'Nathan',  lastName: 'Renard',   email: 'nathan@example.com',  level: 3, progress: 33, status: 'Inactif' },
];

export default function StudentList() {
  const [search, setSearch] = useState('');

  const filtered = search.trim()
    ? MOCK_STUDENTS.filter((s) =>
        `${s.firstName} ${s.lastName} ${s.email}`
          .toLowerCase()
          .includes(search.toLowerCase())
      )
    : MOCK_STUDENTS;

  return (
    <MainLayout>
      <Box mb={3} display="flex" justifyContent="space-between" alignItems="center" flexWrap="wrap" gap={2}>
        <Box>
          <Typography variant="h5" fontWeight={700} gutterBottom>
            Mes élèves
          </Typography>
          <Typography variant="body2" color="text.secondary">
            {MOCK_STUDENTS.length} élèves inscrits dans vos cours
          </Typography>
        </Box>
        <TextField
          size="small"
          placeholder="Rechercher un élève..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          sx={{ minWidth: 240 }}
          InputProps={{
            startAdornment: (
              <InputAdornment position="start">
                <Search fontSize="small" />
              </InputAdornment>
            ),
          }}
        />
      </Box>

      <Card>
        <TableContainer>
          <Table>
            <TableHead>
              <TableRow sx={{ bgcolor: 'grey.50' }}>
                <TableCell><Typography fontWeight={600} variant="body2">Élève</Typography></TableCell>
                <TableCell><Typography fontWeight={600} variant="body2">Email</Typography></TableCell>
                <TableCell><Typography fontWeight={600} variant="body2">Niveau</Typography></TableCell>
                <TableCell><Typography fontWeight={600} variant="body2">Progression</Typography></TableCell>
                <TableCell><Typography fontWeight={600} variant="body2">Statut</Typography></TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {filtered.map((student) => (
                <TableRow key={student.id} hover>
                  <TableCell>
                    <Box display="flex" alignItems="center" gap={1.5}>
                      <Avatar sx={{ bgcolor: 'primary.main', width: 36, height: 36, fontSize: 14 }}>
                        {student.firstName[0]}{student.lastName[0]}
                      </Avatar>
                      <Typography variant="body2" fontWeight={600}>
                        {student.firstName} {student.lastName}
                      </Typography>
                    </Box>
                  </TableCell>
                  <TableCell>
                    <Typography variant="body2" color="text.secondary">{student.email}</Typography>
                  </TableCell>
                  <TableCell>
                    <Chip label={`Niveau ${student.level}`} size="small" variant="outlined" color="primary" />
                  </TableCell>
                  <TableCell sx={{ minWidth: 140 }}>
                    <Box>
                      <Box display="flex" justifyContent="space-between" mb={0.5}>
                        <Typography variant="caption" color="text.secondary">Progression</Typography>
                        <Typography variant="caption" fontWeight={600}>{student.progress}%</Typography>
                      </Box>
                      <LinearProgress
                        variant="determinate"
                        value={student.progress}
                        sx={{ borderRadius: 4, height: 6 }}
                        color={student.progress >= 70 ? 'success' : student.progress >= 40 ? 'warning' : 'error'}
                      />
                    </Box>
                  </TableCell>
                  <TableCell>
                    <Chip
                      label={student.status}
                      size="small"
                      color={student.status === 'Actif' ? 'success' : 'default'}
                    />
                  </TableCell>
                </TableRow>
              ))}

              {filtered.length === 0 && (
                <TableRow>
                  <TableCell colSpan={5} sx={{ textAlign: 'center', py: 5 }}>
                    <Person sx={{ fontSize: 48, color: 'grey.300', display: 'block', mx: 'auto', mb: 1 }} />
                    <Typography color="text.secondary">Aucun élève trouvé.</Typography>
                  </TableCell>
                </TableRow>
              )}
            </TableBody>
          </Table>
        </TableContainer>
      </Card>
    </MainLayout>
  );
}
