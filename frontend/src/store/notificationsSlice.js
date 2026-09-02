import { createSlice } from '@reduxjs/toolkit';

const notificationsSlice = createSlice({
  name: 'notifications',
  initialState: { unreadMessages: 0, unreadCount: 0 },
  reducers: {
    setUnreadMessages(state, action) { state.unreadMessages = action.payload; },
    decrementUnread(state)           { state.unreadCount = Math.max(0, state.unreadCount - 1); },
    resetNotifications(state)        { state.unreadMessages = 0; state.unreadCount = 0; },
  },
});

export const { setUnreadMessages, decrementUnread, resetNotifications } = notificationsSlice.actions;
export default notificationsSlice.reducer;
