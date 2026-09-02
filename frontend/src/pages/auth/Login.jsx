import { useEffect } from 'react';
import { useNavigate, Link as RouterLink } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import {
  Box, Card, CardContent, Typography, TextField, Button,
  Alert, Link, Divider, Stack, InputAdornment, IconButton,
} from '@mui/material';
import { School, Visibility, VisibilityOff } from '@mui/icons-material';
import { useState } from 'react';
import { useAuth } from '../../hooks/useAuth';
import { loginSchema } from '../../utils/validators';

export default function Login() {
  const { login, isAuthenticated, loading, error, clearError, user } = useAuth();
  const navigate = useNavigate();
  const [showPwd, setShowPwd] = useState(false);

  const { register, handleSubmit, formState: { errors } } = useForm({
    resolver: yupResolver(loginSchema),
  });

  useEffect(() => {
    if (isAuthenticated && user) {
      if (user.role === 'ROLE_ADMIN')   navigate('/admin');
      else if (user.role === 'ROLE_TEACHER') navigate('/teacher');
      else navigate('/student');
    }
  }, [isAuthenticated, user, navigate]);

  const onSubmit = async (data) => {
    clearError();
    await login(data);
  };

  return (
    <Box minHeight="100vh" display="flex" alignItems="center"
      justifyContent="center" bgcolor="background.default" p={2}>
      <Card sx={{ width: '100%', maxWidth: 420 }}>
        <CardContent sx={{ p: 4 }}>
          {/* Logo */}
          <Stack alignItems="center" mb={3}>
            <School sx={{ fontSize: 48, color: 'primary.main', mb: 1 }} />
            <Typography variant="h5" fontWeight={700} color="primary">MOST ÉCOLE</Typography>
            <Typography variant="body2" color="text.secondary">Connectez-vous à votre espace</Typography>
          </Stack>

          {error && (
            <Alert severity="error" sx={{ mb: 2 }} onClose={clearError}>{error}</Alert>
          )}

          <form onSubmit={handleSubmit(onSubmit)} noValidate>
            <Stack spacing={2.5}>
              <TextField
                label="Adresse email"
                type="email"
                fullWidth
                autoComplete="email"
                {...register('email')}
                error={!!errors.email}
                helperText={errors.email?.message}
              />
              <TextField
                label="Mot de passe"
                type={showPwd ? 'text' : 'password'}
                fullWidth
                autoComplete="current-password"
                {...register('password')}
                error={!!errors.password}
                helperText={errors.password?.message}
                InputProps={{
                  endAdornment: (
                    <InputAdornment position="end">
                      <IconButton onClick={() => setShowPwd(!showPwd)} edge="end">
                        {showPwd ? <VisibilityOff /> : <Visibility />}
                      </IconButton>
                    </InputAdornment>
                  ),
                }}
              />
              <Button
                type="submit"
                variant="contained"
                size="large"
                fullWidth
                disabled={loading}
                sx={{ py: 1.5, fontWeight: 700 }}
              >
                {loading ? 'Connexion…' : 'Se connecter'}
              </Button>
            </Stack>
          </form>

          <Divider sx={{ my: 3 }}>
            <Typography variant="caption" color="text.secondary">OU</Typography>
          </Divider>

          <Typography variant="body2" textAlign="center">
            Pas encore de compte ?{' '}
            <Link component={RouterLink} to="/register" fontWeight={600}>
              Créer un compte
            </Link>
          </Typography>
        </CardContent>
      </Card>
    </Box>
  );
}
