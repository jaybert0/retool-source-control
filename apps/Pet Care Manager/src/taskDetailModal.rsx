<ModalFrame
  id="taskDetailModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="taskModalHeaderText"
      value="### Mark Task Complete"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Text
      id="taskDescriptionText"
      value="Select a task to complete"
      verticalAlign="center"
    />
    <TextArea
      id="notesTextArea"
      autoResize={true}
      label="Notes"
      labelPosition="top"
      minLines={2}
      placeholder="Add any notes about this task..."
    />
  </Body>
  <Footer>
    <Button id="cancelTaskButton" styleVariant="outline" text="Cancel">
      <Event
        event="click"
        method="run"
        params={{ map: { src: "taskDetailModal.hide()" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="completeTaskButton" text="Mark Complete">
      <Event
        event="click"
        method="run"
        params={{ map: { src: "completeTaskScript.trigger()" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
