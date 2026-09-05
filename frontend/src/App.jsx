import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import PrivateRoute from './components/layout/PrivateRoute';

// Pages publiques
import Home           from './pages/public/Home';
import Login          from './pages/auth/Login';
import Register       from './pages/auth/Register';
import OAuth2Callback from './pages/auth/OAuth2Callback';
import NotFound       from './pages/public/NotFound';

// Pages partagées (tous rôles connectés)
import Profile  from './pages/shared/Profile';
import Settings from './pages/shared/Settings';

// Pages étudiant
import StudentDashboard from './pages/student/Dashboard';
import CourseList       from './pages/student/CourseList';
import CourseView       from './pages/student/CourseView';
import MyProgress       from './pages/student/MyProgress';
import MedicalExamPrep  from './pages/student/MedicalExamPrep';
import Appointments     from './pages/student/Appointments';

// Pages professeur
import TeacherDashboard from './pages/teacher/Dashboard';
import CourseManager    from './pages/teacher/CourseManager';
import ContentBuilder   from './pages/teacher/ContentBuilder';
import StudentList      from './pages/teacher/StudentList';

// Pages admin
import AdminDashboard    from './pages/admin/Dashboard';
import UserManager       from './pages/admin/UserManager';
import CurriculumManager from './pages/admin/CurriculumManager';
import Statistics        from './pages/admin/Statistics';

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* Public */}
        <Route path="/"                element={<Home />} />
        <Route path="/login"           element={<Login />} />
        <Route path="/register"        element={<Register />} />
        <Route path="/oauth2/callback" element={<OAuth2Callback />} />

        {/* Pages partagées — tout utilisateur connecté */}
        <Route element={<PrivateRoute roles={['ROLE_STUDENT', 'ROLE_TEACHER', 'ROLE_ADMIN']} />}>
          <Route path="/profile"  element={<Profile />} />
          <Route path="/settings" element={<Settings />} />
        </Route>

        {/* Espace élève */}
        <Route path="/student" element={<PrivateRoute roles={['ROLE_STUDENT']} />}>
          <Route index                  element={<StudentDashboard />} />
          <Route path="courses"         element={<CourseList />} />
          <Route path="courses/:id"     element={<CourseView />} />
          <Route path="progress"        element={<MyProgress />} />
          <Route path="medical-prep"    element={<MedicalExamPrep />} />
          <Route path="appointments"    element={<Appointments />} />
        </Route>

        {/* Espace professeur */}
        <Route path="/teacher" element={<PrivateRoute roles={['ROLE_TEACHER', 'ROLE_ADMIN']} />}>
          <Route index                    element={<TeacherDashboard />} />
          <Route path="courses"           element={<CourseManager />} />
          <Route path="courses/new"       element={<ContentBuilder />} />
          <Route path="courses/:id/edit"  element={<ContentBuilder />} />
          <Route path="students"          element={<StudentList />} />
        </Route>

        {/* Espace admin */}
        <Route path="/admin" element={<PrivateRoute roles={['ROLE_ADMIN']} />}>
          <Route index              element={<AdminDashboard />} />
          <Route path="users"       element={<UserManager />} />
          <Route path="curriculum"  element={<CurriculumManager />} />
          <Route path="statistics"  element={<Statistics />} />
        </Route>

        {/* Redirections */}
        <Route path="/dashboard" element={<Navigate to="/student" replace />} />
        <Route path="*"          element={<NotFound />} />
      </Routes>
    </BrowserRouter>
  );
}
