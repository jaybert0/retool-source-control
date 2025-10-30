const events = {{ careEventsVariable.value }} || [];
return events.map((e) => e.title || 'Event');