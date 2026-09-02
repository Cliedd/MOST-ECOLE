import { Box, CircularProgress, Typography } from '@mui/material';

export default function LoadingSpinner({ message = 'Chargement…', fullPage = false }) {
  return (
    <Box
      display="flex"
      flexDirection="column"
      alignItems="center"
      justifyContent="center"
      gap={2}
      sx={fullPage ? { minHeight: '100vh' } : { py: 6 }}
    >
      <CircularProgress color="primary" size={48} thickness={4} />
      <Typography color="text.secondary" variant="body2">{message}</Typography>
    </Box>
  );
}
