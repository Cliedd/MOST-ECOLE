import { Chip } from '@mui/material';
import { formatLevelName } from '../../utils/formatters';

const LEVEL_COLORS = {
  1: '#1ABC9C', 2: '#16A085',
  3: '#3498DB', 4: '#2980B9',
  5: '#9B59B6', 6: '#8E44AD',
};

export default function LevelBadge({ levelNumber, size = 'small' }) {
  return (
    <Chip
      label={formatLevelName(levelNumber)}
      size={size}
      sx={{
        bgcolor: LEVEL_COLORS[levelNumber] || '#95A5A6',
        color: 'white',
        fontWeight: 600,
        fontSize: size === 'small' ? 11 : 13,
      }}
    />
  );
}
