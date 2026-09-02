import { useNavigate } from 'react-router-dom';
import { Box, Typography, Button } from '@mui/material';
import { Home, ArrowBack } from '@mui/icons-material';

export default function NotFound() {
  const navigate = useNavigate();
  return (
    <Box display="flex" flexDirection="column" alignItems="center"
      justifyContent="center" minHeight="100vh" gap={2} textAlign="center" p={4}>
      <Typography variant="h1" fontWeight={800} color="primary" sx={{ fontSize: { xs: '6rem', md: '10rem' } }}>
        404
      </Typography>
      <Typography variant="h4" fontWeight={600} gutterBottom>Page introuvable</Typography>
      <Typography color="text.secondary" mb={3}>
        La page que vous cherchez n'existe pas ou a été déplacée.
      </Typography>
      <Box display="flex" gap={2}>
        <Button variant="outlined" startIcon={<ArrowBack />} onClick={() => navigate(-1)}>
          Retour
        </Button>
        <Button variant="contained" startIcon={<Home />} onClick={() => navigate('/')}>
          Accueil
        </Button>
      </Box>
    </Box>
  );
}
