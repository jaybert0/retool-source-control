// Documentation:
//   Completes the task specified by selectedTaskType by setting the corresponding
//   task status to true in todayTasksVariable.
// Returns:
//   {
//     success: boolean, // Whether the task was successfully completed
//     taskType: string | null // The type of task that was completed
//   }

const type = selectedTaskType.value;
if (type) {
  await todayTasksVariable.setIn([type], true);
  return { success: true, taskType: type };
}

return { success: false, taskType: null };