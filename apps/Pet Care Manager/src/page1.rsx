<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="399bea36-57b7-4335-97f9-ebc9eb1aa5e7"
>
  <State
    id="careEventsVariable"
    value={
      '[\n  {\n    "id": 1,\n    "title": "Morning Walk",\n    "description": "Take Reece for morning walk",\n    "startTime": "2024-01-01T07:00:00",\n    "endTime": "2024-01-01T07:30:00",\n    "rrule": "FREQ=DAILY",\n    "color": "#4A90E2",\n    "taskType": "morningWalk"\n  },\n  {\n    "id": 2,\n    "title": "Afternoon Walk",\n    "description": "Take Reece for afternoon walk",\n    "startTime": "2024-01-01T13:00:00",\n    "endTime": "2024-01-01T13:30:00",\n    "rrule": "FREQ=DAILY",\n    "color": "#4A90E2",\n    "taskType": "afternoonWalk"\n  },\n  {\n    "id": 3,\n    "title": "Evening Walk",\n    "description": "Take Reece for evening walk",\n    "startTime": "2024-01-01T18:00:00",\n    "endTime": "2024-01-01T18:30:00",\n    "rrule": "FREQ=DAILY",\n    "color": "#4A90E2",\n    "taskType": "eveningWalk"\n  },\n  {\n    "id": 4,\n    "title": "Breakfast",\n    "description": "Feed Reece breakfast",\n    "startTime": "2024-01-01T07:30:00",\n    "endTime": "2024-01-01T07:45:00",\n    "rrule": "FREQ=DAILY",\n    "color": "#7ED321",\n    "taskType": "breakfast"\n  },\n  {\n    "id": 5,\n    "title": "Dinner",\n    "description": "Feed Reece dinner",\n    "startTime": "2024-01-01T18:30:00",\n    "endTime": "2024-01-01T18:45:00",\n    "rrule": "FREQ=DAILY",\n    "color": "#7ED321",\n    "taskType": "dinner"\n  },\n  {\n    "id": 6,\n    "title": "Medication with Dinner",\n    "description": "Give Reece allergy tablet with dinner",\n    "startTime": "2024-01-01T18:45:00",\n    "endTime": "2024-01-01T18:50:00",\n    "rrule": "FREQ=DAILY",\n    "color": "#F5A623",\n    "taskType": "medication"\n  },\n  {\n    "id": 7,\n    "title": "Vet Visit - Allergy Shot",\n    "description": "Monthly vet appointment for allergy shot",\n    "startTime": "2024-01-27T10:00:00",\n    "endTime": "2024-01-27T11:00:00",\n    "rrule": "FREQ=MONTHLY;BYMONTHDAY=27",\n    "color": "#FF6B6B",\n    "taskType": "vetVisit"\n  }\n]'
    }
  />
  <State
    id="todayTasksVariable"
    value={
      '{\n  "morningWalk": false,\n  "afternoonWalk": false,\n  "eveningWalk": false,\n  "breakfast": false,\n  "dinner": false,\n  "medication": false\n}'
    }
  />
  <Function
    id="completedTasksTransformer"
    funcBody={include("../lib/completedTasksTransformer.js", "string")}
  />
  <Function
    id="pendingTasksTransformer"
    funcBody={include("../lib/pendingTasksTransformer.js", "string")}
  />
  <JavascriptQuery
    id="completeTaskScript"
    notificationDuration={4.5}
    query={include("../lib/completeTaskScript.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="careCalendarItems"
    funcBody={include("../lib/careCalendarItems.js", "string")}
  />
  <Function
    id="careCalendarTimestamps"
    funcBody={include("../lib/careCalendarTimestamps.js", "string")}
  />
  <State id="selectedTaskType" value={'""'} />
  <JavascriptQuery
    id="resetTodayTasks"
    notificationDuration={4.5}
    query={include("../lib/resetTodayTasks.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./taskDetailModal.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="appTitleText"
      value="# 🐕 Reece's Pet Care"
      verticalAlign="center"
    />
    <Container
      id="calendarContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { border: "transparent" } }}
    >
      <Header>
        <Text
          id="calendarHeaderText"
          value="### Care Schedule"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Timeline
          id="careCalendar"
          items="{{ careCalendarItems.value }}"
          timestamps="{{ careCalendarTimestamps.value }}"
        />
      </View>
    </Container>
    <Button id="buttonResetToday" styleVariant="outline" text="Reset today">
      <Event
        event="click"
        method="run"
        params={{ map: { src: "resetTodayTasks.trigger()" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Include src="./statsContainer.rsx" />
  </Frame>
</Screen>
