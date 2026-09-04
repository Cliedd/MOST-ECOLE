import { useNavigate, Link as RouterLink } from 'react-router-dom';
import { useForm, Controller } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import {
  Box, Card, CardContent, Typography, TextField, Button, Alert,
  Link, Stack, InputAdornment, IconButton, ToggleButton, ToggleButtonGroup, Divider,
} from '@mui/material';
import { School, Visibility, VisibilityOff, Person, MenuBook } from '@mui/icons-material';
import { useState } from 'react';
import { useAuth } from '../../hooks/useAuth';
import { registerSchema } from '../../utils/validators';

const BACKEND_URL = import.meta.env.VITE_API_URL?.startsWith('http')
  ? import.meta.env.VITE_API_URL
  : window.location.origin.replace(':3000', ':8080');

export default function Register() {
  const { register: registerUser, loading, error, clearError } = useAuth();
  const navigate  = useNavigate();
  const [showPwd, setShowPwd] = useState(false);

  const handleGoogleRegister = () => {
    window.location.href = `${BACKEND_URL}/oauth2/authorization/google`;
  };

  const { register, handleSubmit, control, formState: { errors } } = useForm({
    resolver: yupResolver(registerSchema),
    defaultValues: { role: 'ROLE_STUDENT' },
  });

  const onSubmit = async (data) => {
    clearError();
    const { confirmPassword, ...payload } = data;
    await registerUser(payload);
  };

  return (
    <Box minHeight="100vh" display="flex" alignItems="center"
      justifyContent="center" bgcolor="background.default" p={2}>
      <Card sx={{ width: '100%', maxWidth: 460 }}>
        <CardContent sx={{ p: 4 }}>
          <Stack alignItems="center" mb={3}>
            <School sx={{ fontSize: 48, color: 'primary.main', mb: 1 }} />
            <Typography variant="h5" fontWeight={700} color="primary">Créer un compte</Typography>
            <Typography variant="body2" color="text.secondary">Rejoignez MOST ÉCOLE</Typography>
          </Stack>

          {error && <Alert severity="error" sx={{ mb: 2 }} onClose={clearError}>{error}</Alert>}

          {/* Google OAuth Button */}
          <Button
            variant="outlined"
            fullWidth
            size="large"
            onClick={handleGoogleRegister}
            sx={{
              mb: 2, py: 1.4, fontWeight: 600, borderColor: '#dadce0',
              color: 'text.primary', gap: 1.5,
              '&:hover': { bgcolor: '#f8f9fa', borderColor: '#c6c6c6' },
            }}
            startIcon={
              <Box component="img"
                src="https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/google.svg"
                alt="Google" sx={{ width: 20, height: 20 }} />
            }
          >
            Continuer avec Google
          </Button>

          <Divider sx={{ mb: 2 }}>
            <Typography variant="caption" color="text.secondary">OU</Typography>
          </Divider>

          <form onSubmit={handleSubmit(onSubmit)} noValidate>
            <Stack spacing={2.5}>
              {/* Rôle */}
              <Box>
                <Typography variant="body2" fontWeight={600} mb={1}>Je suis…</Typography>
                <Controller
                  name="role"
                  control={control}
                  render={({ field }) => (
                    <ToggleButtonGroup
                      {...field}
                      exclusive
                      fullWidth
                      onChange={(_, v) => v && field.onChange(v)}
                      sx={{ '& .MuiToggleButton-root': { py: 1.5 } }}
                    >
                      <ToggleButton value="ROLE_STUDENT">
                        <Person sx={{ mr: 1 }} />Élève
                      </ToggleButton>
                      <ToggleButton value="ROLE_TEACHER">
                        <MenuBook sx={{ mr: 1 }} />Professeur
                      </ToggleButton>
                    </ToggleButtonGroup>
                  )}
                />
              </Box>

              <Stack direction="row" spacing={2}>
                <TextField label="Prénom" fullWidth {...register('firstName')}
                  error={!!errors.firstName} helperText={errors.firstName?.message} />
                <TextField label="Nom" fullWidth {...register('lastName')}
                  error={!!errors.lastName} helperText={errors.lastName?.message} />
              </Stack>

              <TextField label="Email" type="email" fullWidth {...register('email')}
                error={!!errors.email} helperText={errors.email?.message} />

              <TextField
                label="Mot de passe" type={showPwd ? 'text' : 'password'} fullWidth
                {...register('password')}
                error={!!errors.password} helperText={errors.password?.message}
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

              <TextField label="Confirmer le mot de passe" type="password" fullWidth
                {...register('confirmPassword')}
                error={!!errors.confirmPassword} helperText={errors.confirmPassword?.message} />

              <Button type="submit" variant="contained" size="large" fullWidth
                disabled={loading} sx={{ py: 1.5, fontWeight: 700 }}>
                {loading ? 'Inscription…' : "Créer mon compte"}
              </Button>
            </Stack>
          </form>

          <Typography variant="body2" textAlign="center" mt={3}>
            Déjà un compte ?{' '}
            <Link component={RouterLink} to="/login" fontWeight={600}>Se connecter</Link>
          </Typography>
        </CardContent>
      </Card>
    </Box>
  );
}
