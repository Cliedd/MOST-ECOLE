import { useNavigate, useLocation } from 'react-router-dom';
import {
  Drawer, List, ListItem, ListItemButton, ListItemIcon, ListItemText,
  Toolbar, Divider, Box, Typography, Chip,
} from '@mui/material';
import {
  Dashboard, MenuBook, TrendingUp, LocalHospital, CalendarMonth,
  People, AddCircle, ManageAccounts, School, Assessment,
} from '@mui/icons-material';
import { useSelector } from 'react-redux';
import { selectUser } from '../../store/authSlice';

const DRAWER_WIDTH = 240;

const studentNav = [
  { label: 'Tableau de bord',     icon: <Dashboard />,      path: '/student' },
  { label: 'Mes cours',           icon: <MenuBook />,        path: '/student/courses' },
  { label: 'Ma progression',      icon: <TrendingUp />,      path: '/student/progress' },
  { label: 'Concours médecine',   icon: <LocalHospital />,   path: '/student/medical-prep', badge: 'HOT' },
  { label: 'Mes rendez-vous',     icon: <CalendarMonth />,   path: '/student/appointments' },
];

const teacherNav = [
  { label: 'Tableau de bord',  icon: <Dashboard />,  path: '/teacher' },
  { label: 'Mes cours',        icon: <MenuBook />,    path: '/teacher/courses' },
  { label: 'Créer un cours',   icon: <AddCircle />,   path: '/teacher/courses/new' },
  { label: 'Mes élèves',       icon: <People />,      path: '/teacher/students' },
];

const adminNav = [
  { label: 'Tableau de bord',  icon: <Dashboard />,      path: '/admin' },
  { label: 'Utilisateurs',     icon: <ManageAccounts />, path: '/admin/users' },
  { label: 'Curriculum',       icon: <School />,         path: '/admin/curriculum' },
  { label: 'Statistiques',     icon: <Assessment />,     path: '/admin/statistics' },
];

const getNav = (role) => {
  if (role === 'ROLE_ADMIN')   return adminNav;
  if (role === 'ROLE_TEACHER') return teacherNav;
  return studentNav;
};

export default function Sidebar({ open }) {
  const navigate  = useNavigate();
  const location  = useLocation();
  const user      = useSelector(selectUser);
  const navItems  = getNav(user?.role);

  return (
    <Drawer
      variant="persistent"
      open={open}
      sx={{
        width: DRAWER_WIDTH,
        flexShrink: 0,
        '& .MuiDrawer-paper': {
          width: DRAWER_WIDTH,
          boxSizing: 'border-box',
          bgcolor: 'background.paper',
          borderRight: '1px solid',
          borderColor: 'divider',
        },
      }}
    >
      <Toolbar />
      <Box sx={{ overflow: 'auto', pt: 2 }}>
        <List>
          {navItems.map((item) => {
            const isActive = location.pathname === item.path ||
              (item.path !== '/student' && item.path !== '/teacher' && item.path !== '/admin'
               && location.pathname.startsWith(item.path));
            return (
              <ListItem key={item.path} disablePadding sx={{ mb: 0.5 }}>
                <ListItemButton
                  onClick={() => navigate(item.path)}
                  selected={isActive}
                  sx={{
                    mx: 1, borderRadius: 2,
                    '&.Mui-selected': {
                      bgcolor: 'primary.main',
                      color: 'white',
                      '& .MuiListItemIcon-root': { color: 'white' },
                      '&:hover': { bgcolor: 'primary.dark' },
                    },
                  }}
                >
                  <ListItemIcon sx={{ minWidth: 36 }}>{item.icon}</ListItemIcon>
                  <ListItemText primary={item.label} primaryTypographyProps={{ fontSize: 14 }} />
                  {item.badge && (
                    <Chip label={item.badge} size="small" color="error"
                      sx={{ height: 18, fontSize: 10, ml: 0.5 }} />
                  )}
                </ListItemButton>
              </ListItem>
            );
          })}
        </List>
        <Divider sx={{ my: 2 }} />
        <Box sx={{ px: 2, pb: 2 }}>
          <Typography variant="caption" color="text.secondary" display="block">
            MOST ÉCOLE v1.0
          </Typography>
        </Box>
      </Box>
    </Drawer>
  );
}
