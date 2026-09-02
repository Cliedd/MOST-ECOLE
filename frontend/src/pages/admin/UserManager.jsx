import { useState } from 'react';
import {
  Box, Typography, Card, CardContent, Button, Stack, Chip, Avatar,
  TextField, MenuItem, IconButton, Tooltip, Table, TableBody,
  TableCell, TableContainer, TableHead, TableRow, TablePagination,
  Dialog, DialogTitle, DialogContent, DialogActions, Switch, FormControlLabel,
} from '@mui/material';
import {
  PersonAdd, Edit, Lock, LockOpen, Search, FilterList, Delete,
} from '@mui/icons-material';
import MainLayout from '../../components/layout/MainLayout';

const MOCK_USERS = [
  { id: '1', name: 'Alice Dupont',    email: 'alice@example.com',  role: 'ROLE_STUDENT',  enabled: true,  createdAt: '2026-09-01' },
  { id: '2', name: 'Prof. Martin',    email: 'martin@example.com', role: 'ROLE_TEACHER',  enabled: true,  createdAt: '2026-08-31' },
  { id: '3', name: 'Jean-P. Leroy',  email: 'jp@example.com',     role: 'ROLE_PARENT',   enabled: true,  createdAt: '2026-08-30' },
  { id: '4', name: 'Sophie Colignon',email: 'sophie@example.com', role: 'ROLE_STUDENT',  enabled: false, createdAt: '2026-08-30' },
  { id: '5', name: 'Admin MOST',      email: 'admin@mostecole.be', role: 'ROLE_ADMIN',    enabled: true,  createdAt: '2026-04-01' },
  { id: '6', name: 'Marc Lecomte',   email: 'marc@example.com',   role: 'ROLE_STUDENT',  enabled: true,  createdAt: '2026-08-28' },
];

const ROLE_COLORS = {
  ROLE_STUDENT: 'primary', ROLE_TEACHER: 'success',
  ROLE_PARENT: 'warning',  ROLE_ADMIN: 'error',
};
const ROLE_LABELS = {
  ROLE_STUDENT: 'Étudiant', ROLE_TEACHER: 'Enseignant',
  ROLE_PARENT: 'Parent',    ROLE_ADMIN: 'Admin',
};

export default function UserManager() {
  const [search,     setSearch]     = useState('');
  const [roleFilter, setRoleFilter] = useState('ALL');
  const [page,       setPage]       = useState(0);
  const [rowsPerPage,setRowsPerPage]= useState(10);
  const [editUser,   setEditUser]   = useState(null);
  const [users,      setUsers]      = useState(MOCK_USERS);

  const filtered = users.filter((u) => {
    const matchSearch = u.name.toLowerCase().includes(search.toLowerCase()) ||
      u.email.toLowerCase().includes(search.toLowerCase());
    const matchRole   = roleFilter === 'ALL' || u.role === roleFilter;
    return matchSearch && matchRole;
  });

  const toggleEnabled = (id) => {
    setUsers((prev) => prev.map((u) => u.id === id ? { ...u, enabled: !u.enabled } : u));
  };

  return (
    <MainLayout>
      <Box display="flex" justifyContent="space-between" alignItems="center" mb={3}>
        <Box>
          <Typography variant="h4" fontWeight={700}>Gestion des utilisateurs</Typography>
          <Typography color="text.secondary">
            {filtered.length} utilisateur{filtered.length > 1 ? 's' : ''}
          </Typography>
        </Box>
        <Button variant="contained" startIcon={<PersonAdd />}>
          Inviter un utilisateur
        </Button>
      </Box>

      {/* Filters */}
      <Card sx={{ mb: 3 }}>
        <CardContent>
          <Stack direction={{ xs: 'column', md: 'row' }} spacing={2} alignItems="center">
            <TextField
              size="small" placeholder="Rechercher..." value={search}
              onChange={(e) => setSearch(e.target.value)}
              InputProps={{ startAdornment: <Search fontSize="small" sx={{ mr: 1, color: 'text.secondary' }} /> }}
              sx={{ flexGrow: 1 }}
            />
            <TextField select size="small" label="Rôle" value={roleFilter}
              onChange={(e) => setRoleFilter(e.target.value)} sx={{ minWidth: 160 }}>
              <MenuItem value="ALL">Tous les rôles</MenuItem>
              {Object.entries(ROLE_LABELS).map(([k, v]) => (
                <MenuItem key={k} value={k}>{v}</MenuItem>
              ))}
            </TextField>
            <Chip icon={<FilterList />} label={`${filtered.length} résultats`} variant="outlined" />
          </Stack>
        </CardContent>
      </Card>

      {/* Table */}
      <Card>
        <TableContainer>
          <Table size="small">
            <TableHead>
              <TableRow sx={{ '& th': { fontWeight: 700, bgcolor: 'grey.50' } }}>
                <TableCell>Utilisateur</TableCell>
                <TableCell>Email</TableCell>
                <TableCell>Rôle</TableCell>
                <TableCell>Statut</TableCell>
                <TableCell>Inscrit le</TableCell>
                <TableCell align="center">Actions</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {filtered.slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage).map((u) => (
                <TableRow key={u.id} hover>
                  <TableCell>
                    <Stack direction="row" spacing={1.5} alignItems="center">
                      <Avatar sx={{ width: 32, height: 32, fontSize: 13, bgcolor: 'primary.main' }}>
                        {u.name[0]}
                      </Avatar>
                      <Typography variant="body2" fontWeight={600}>{u.name}</Typography>
                    </Stack>
                  </TableCell>
                  <TableCell>
                    <Typography variant="body2" color="text.secondary">{u.email}</Typography>
                  </TableCell>
                  <TableCell>
                    <Chip label={ROLE_LABELS[u.role]} color={ROLE_COLORS[u.role]} size="small" />
                  </TableCell>
                  <TableCell>
                    <Chip
                      label={u.enabled ? 'Actif' : 'Désactivé'}
                      color={u.enabled ? 'success' : 'default'}
                      size="small"
                    />
                  </TableCell>
                  <TableCell>
                    <Typography variant="caption" color="text.secondary">{u.createdAt}</Typography>
                  </TableCell>
                  <TableCell align="center">
                    <Stack direction="row" justifyContent="center">
                      <Tooltip title="Modifier">
                        <IconButton size="small" onClick={() => setEditUser(u)}>
                          <Edit fontSize="small" />
                        </IconButton>
                      </Tooltip>
                      <Tooltip title={u.enabled ? 'Désactiver' : 'Activer'}>
                        <IconButton size="small" color={u.enabled ? 'warning' : 'success'}
                          onClick={() => toggleEnabled(u.id)}>
                          {u.enabled ? <Lock fontSize="small" /> : <LockOpen fontSize="small" />}
                        </IconButton>
                      </Tooltip>
                      <Tooltip title="Supprimer">
                        <IconButton size="small" color="error">
                          <Delete fontSize="small" />
                        </IconButton>
                      </Tooltip>
                    </Stack>
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
        <TablePagination
          component="div"
          count={filtered.length}
          page={page}
          onPageChange={(_, p) => setPage(p)}
          rowsPerPage={rowsPerPage}
          onRowsPerPageChange={(e) => { setRowsPerPage(+e.target.value); setPage(0); }}
          rowsPerPageOptions={[5, 10, 25]}
          labelRowsPerPage="Par page:"
          labelDisplayedRows={({ from, to, count }) => `${from}–${to} sur ${count}`}
        />
      </Card>

      {/* Edit Dialog */}
      <Dialog open={!!editUser} onClose={() => setEditUser(null)} maxWidth="sm" fullWidth>
        <DialogTitle>Modifier l'utilisateur</DialogTitle>
        <DialogContent>
          {editUser && (
            <Stack spacing={2} pt={1}>
              <TextField label="Prénom" defaultValue={editUser.name.split(' ')[0]} fullWidth />
              <TextField label="Nom" defaultValue={editUser.name.split(' ').slice(1).join(' ')} fullWidth />
              <TextField label="Email" defaultValue={editUser.email} fullWidth />
              <TextField select label="Rôle" defaultValue={editUser.role} fullWidth>
                {Object.entries(ROLE_LABELS).map(([k, v]) => (
                  <MenuItem key={k} value={k}>{v}</MenuItem>
                ))}
              </TextField>
              <FormControlLabel
                control={<Switch defaultChecked={editUser.enabled} />}
                label="Compte actif"
              />
            </Stack>
          )}
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setEditUser(null)}>Annuler</Button>
          <Button variant="contained" onClick={() => setEditUser(null)}>Enregistrer</Button>
        </DialogActions>
      </Dialog>
    </MainLayout>
  );
}
