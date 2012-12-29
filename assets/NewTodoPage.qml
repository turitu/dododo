import bb.cascades 1.0

Page {
    signal cancel ()
    id: newTodoPage
    titleBar: TitleBar {
        title: "NewTodo"
        dismissAction: ActionItem {
            title: "Cancel"
            onTriggered: newTodoPage.cancel()
        }
        acceptAction: ActionItem {
            title: "Save"
        }
    }
    Container {
        Label {
            text: "Name"
        }
        TextField {
            hintText: "Name"

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
