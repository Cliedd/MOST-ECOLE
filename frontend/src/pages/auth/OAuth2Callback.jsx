import { useEffect } from 'react';
import { useNavigate, useSearchParams } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { Box, CircularProgress, Typography, Alert } from '@mui/material';
import { setCredentials } from '../../store/authSlice';
import { getRoleRedirect } from '../../utils/formatters';

/**
 * Landing page after Google OAuth2 redirect.
 * Backend redirects here with ?token=JWT&userId=...&email=...&role=...&firstName=...&lastName=...
 * (or ?error=message on failure)
 */
export default function OAuth2Callback() {
  const [searchParams] = useSearchParams();
  const dispatch       = useDispatch();
  const navigate       = useNavigate();

  useEffect(() => {
    const token     = searchParams.get('token');
    const error     = searchParams.get('error');

    if (error) {
      setTimeout(() => navigate('/login?error=' + encodeURIComponent(error)), 2000);
      return;
    }

    if (!token) {
      navigate('/login');
      return;
    }

    const user = {
      id:        searchParams.get('userId'),
      email:     searchParams.get('email'),
      role:      searchParams.get('role'),
      firstName: searchParams.get('firstName'),
      lastName:  searchParams.get('lastName'),
    };

    // Store in Redux + localStorage (same shape as loginThunk)
    dispatch(setCredentials({ token, user }));
    localStorage.setItem('token', token);
    localStorage.setItem('user', JSON.stringify(user));

    navigate(getRoleRedirect(user.role), { replace: true });
  }, [searchParams, dispatch, navigate]);

  const error = searchParams.get('error');

  return (
    <Box display="flex" flexDirection="column" alignItems="center"
      justifyContent="center" minHeight="100vh" gap={2}>
      {error ? (
        <Alert severity="error">Connexion Google échouée : {decodeURIComponent(error)}</Alert>
      ) : (
        <>
          <CircularProgress size={48} />
          <Typography color="text.secondary">Connexion en cours…</Typography>
        </>
      )}
    </Box>
  );
}
