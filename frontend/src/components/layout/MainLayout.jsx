import { useState } from 'react';
import { Box, Toolbar } from '@mui/material';
import Navbar  from './Navbar';
import Sidebar from './Sidebar';

const DRAWER_WIDTH = 240;

export default function MainLayout({ children }) {
  const [open, setOpen] = useState(true);

  return (
    <Box sx={{ display: 'flex' }}>
      <Navbar onMenuToggle={() => setOpen(!open)} />
      <Sidebar open={open} />
      <Box
        component="main"
        sx={{
          flexGrow: 1,
          p: 3,
          ml: open ? `${DRAWER_WIDTH}px` : 0,
          transition: 'margin 0.2s ease',
          minHeight: '100vh',
          bgcolor: 'background.default',
        }}
      >
        <Toolbar />
        {children}
      </Box>
    </Box>
  );
}
