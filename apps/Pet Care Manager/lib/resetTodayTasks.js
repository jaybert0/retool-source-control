// Documentation:
//   Resets all today's tasks to false by updating the todayTasksVariable with a new object where all task properties are set to false.
// Returns:
//   {
//     morningWalk: boolean,    // false
//     afternoonWalk: boolean,  // false
//     eveningWalk: boolean,    // false
//     breakfast: boolean,      // false
//     dinner: boolean,         // false
//     medication: boolean      // false
//   }

const resetTasks = {
  morningWalk: false,
  afternoonWalk: false,
  eveningWalk: false,
  breakfast: false,
  dinner: false,
  medication: false };


await todayTasksVariable.setValue(resetTasks);

return resetTasks;