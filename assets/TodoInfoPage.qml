import bb.cascades 1.0

Page {
    signal cancel()
    id: newTodoPage
    titleBar: TitleBar {
        title: "Info"
        acceptAction: ActionItem {
            title: "Edit"
        }
    }
    Container {
        leftPadding: 30.0

        rightPadding: 30.0
        TextField {
            text: "Make a rental car reservation"
        
        }
        Label {
            text: "Description"
        }
        TextArea {
            hintText: "Description"
            preferredHeight: 400
            maxHeight: 400
        }
    }
}

