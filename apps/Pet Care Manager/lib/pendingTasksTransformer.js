const tasks = {{ todayTasksVariable.value }};
const pending = {};
Object.keys(tasks).forEach((key) => {
  pending[key] = !tasks[key];
});
return pending;