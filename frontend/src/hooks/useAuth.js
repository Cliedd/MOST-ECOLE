import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import {
  selectUser, selectIsAuthenticated, selectAuthLoading, selectAuthError,
  loginThunk, registerThunk, logout, clearError,
} from '../store/authSlice';

export function useAuth() {
  const dispatch  = useDispatch();
  const navigate  = useNavigate();
  const user            = useSelector(selectUser);
  const isAuthenticated = useSelector(selectIsAuthenticated);
  const loading         = useSelector(selectAuthLoading);
  const error           = useSelector(selectAuthError);

  const login = async (credentials) => {
    const result = await dispatch(loginThunk(credentials));
    if (loginThunk.fulfilled.match(result)) {
      const role = result.payload.role;
      if      (role === 'ROLE_ADMIN')   navigate('/admin');
      else if (role === 'ROLE_TEACHER') navigate('/teacher');
      else                              navigate('/student');
    }
    return result;
  };

  const register = async (data) => {
    const result = await dispatch(registerThunk(data));
    if (registerThunk.fulfilled.match(result)) {
      const role = result.payload.role;
      if (role === 'ROLE_TEACHER') navigate('/teacher');
      else                         navigate('/student');
    }
    return result;
  };

  const logoutUser = () => {
    dispatch(logout());
    navigate('/login');
  };

  const hasRole = (roles) => {
    if (!user) return false;
    if (typeof roles === 'string') return user.role === roles;
    return roles.includes(user.role);
  };

  return { user, isAuthenticated, loading, error, login, register, logout: logoutUser, hasRole, clearError: () => dispatch(clearError()) };
}
