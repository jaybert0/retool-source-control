<Container
  id="statsContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ map: { border: "transparent" } }}
>
  <Header>
    <Text
      id="statsHeaderText"
      value="### Today's Care Tasks"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Statistic
      id="morningWalkStat"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="percent"
      label="Morning Walk"
      labelCaption="Completed today"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ completedTasksTransformer.value.morningWalk ? 1 : 0 }}"
    />
    <Statistic
      id="afternoonWalkStat"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="percent"
      label="Afternoon Walk"
      labelCaption="Completion status"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={0}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ completedTasksTransformer.value.afternoonWalk ? 1 : 0 }}"
    />
    <Statistic
      id="eveningWalkStat"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="percent"
      label="Evening Walk"
      labelCaption="Completion status"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces={0}
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondaryValue=""
      showSeparators={true}
      value="{{ completedTasksTransformer.value.eveningWalk ? 1 : 0 }}"
    />
    <Statistic
      id="breakfastStat"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="percent"
      label="Breakfast"
      labelCaption="Completion status"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ completedTasksTransformer.value.breakfast ? 1 : 0 }}"
    />
    <Statistic
      id="dinnerStat"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="percent"
      label="Dinner"
      labelCaption="Completion status"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ completedTasksTransformer.value.dinner ? 1 : 0 }}"
    />
    <Statistic
      id="medicationStat"
      currency="USD"
      decimalPlaces={0}
      formattingStyle="percent"
      label="Medication"
      labelCaption="Completed"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ completedTasksTransformer.value.medication ? 1 : 0 }}"
    />
    <Button
      id="buttonDoneMorningWalk"
      styleVariant="outline"
      text="Done: Morning Walk"
    >
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedTaskType.setValue('morningWalk'); completeTaskScript.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDoneAfternoonWalk"
      styleVariant="outline"
      text="Done: Afternoon Walk"
    >
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedTaskType.setValue('afternoonWalk'); completeTaskScript.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDoneEveningWalk"
      styleVariant="outline"
      text="Done: Evening Walk"
    >
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedTaskType.setValue('eveningWalk'); completeTaskScript.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDoneBreakfast"
      styleVariant="outline"
      text="Done: Breakfast"
    >
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedTaskType.setValue('breakfast'); completeTaskScript.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="buttonDoneDinner" styleVariant="outline" text="Done: Dinner">
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedTaskType.setValue('dinner'); completeTaskScript.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDoneMedication"
      styleVariant="outline"
      text="Done: Medication"
    >
      <Event
        event="click"
        method="run"
        params={{
          map: {
            src: "selectedTaskType.setValue('medication'); completeTaskScript.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
