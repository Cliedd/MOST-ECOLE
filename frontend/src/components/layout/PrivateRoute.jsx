import { Navigate, Outlet } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { selectIsAuthenticated, selectUser } from '../../store/authSlice';
import LoadingSpinner from '../ui/LoadingSpinner';

export default function PrivateRoute({ roles }) {
  const isAuthenticated = useSelector(selectIsAuthenticated);
  const user            = useSelector(selectUser);

  if (!isAuthenticated) return <Navigate to="/login" replace />;
  if (roles && user && !roles.includes(user.role)) return <Navigate to="/" replace />;

  return <Outlet />;
}
