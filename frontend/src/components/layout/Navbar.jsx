import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import {
  AppBar, Toolbar, Typography, IconButton, Avatar, Menu, MenuItem,
  Badge, Box, Divider, ListItemIcon, Tooltip,
} from '@mui/material';
import {
  Notifications, AccountCircle, Logout, Settings, School,
} from '@mui/icons-material';
import { useAuth } from '../../hooks/useAuth';
import { formatRole } from '../../utils/formatters';

export default function Navbar({ onMenuToggle }) {
  const { user, logout }     = useAuth();
  const navigate             = useNavigate();
  const [anchorEl, setAnchorEl] = useState(null);

  const initials = user
    ? `${user.firstName?.[0] ?? ''}${user.lastName?.[0] ?? ''}`.toUpperCase()
    : '?';

  return (
    <AppBar position="fixed" sx={{ zIndex: (t) => t.zIndex.drawer + 1, bgcolor: 'primary.main' }}>
      <Toolbar>
        {/* Logo */}
        <School sx={{ mr: 1, color: 'secondary.main' }} />
        <Typography
          variant="h6"
          fontWeight={700}
          sx={{ flexGrow: 1, cursor: 'pointer', letterSpacing: 1 }}
          onClick={() => navigate('/')}
        >
          MOST ÉCOLE
        </Typography>

        {/* Notifications */}
        <Tooltip title="Notifications">
          <IconButton color="inherit" sx={{ mr: 1 }}>
            <Badge badgeContent={0} color="secondary">
              <Notifications />
            </Badge>
          </IconButton>
        </Tooltip>

        {/* Avatar menu */}
        <Tooltip title="Mon compte">
          <IconButton onClick={(e) => setAnchorEl(e.currentTarget)} sx={{ p: 0 }}>
            <Avatar sx={{ bgcolor: 'secondary.main', width: 36, height: 36, fontSize: 14, fontWeight: 700 }}>
              {initials}
            </Avatar>
          </IconButton>
        </Tooltip>

        <Menu
          anchorEl={anchorEl}
          open={Boolean(anchorEl)}
          onClose={() => setAnchorEl(null)}
          PaperProps={{ sx: { mt: 1.5, minWidth: 200 } }}
          transformOrigin={{ horizontal: 'right', vertical: 'top' }}
          anchorOrigin={{ horizontal: 'right', vertical: 'bottom' }}
        >
          <Box sx={{ px: 2, py: 1 }}>
            <Typography fontWeight={600}>{user?.firstName} {user?.lastName}</Typography>
            <Typography variant="caption" color="text.secondary">{formatRole(user?.role)}</Typography>
          </Box>
          <Divider />
          <MenuItem onClick={() => { setAnchorEl(null); navigate('/profile'); }}>
            <ListItemIcon><AccountCircle fontSize="small" /></ListItemIcon>
            Mon profil
          </MenuItem>
          <MenuItem onClick={() => { setAnchorEl(null); navigate('/settings'); }}>
            <ListItemIcon><Settings fontSize="small" /></ListItemIcon>
            Paramètres
          </MenuItem>
          <Divider />
          <MenuItem onClick={() => { setAnchorEl(null); logout(); }} sx={{ color: 'error.main' }}>
            <ListItemIcon><Logout fontSize="small" color="error" /></ListItemIcon>
            Déconnexion
          </MenuItem>
        </Menu>
      </Toolbar>
    </AppBar>
  );
}
