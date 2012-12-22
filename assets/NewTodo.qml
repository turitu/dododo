import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "NewTodo"
        dismissAction: ActionItem {
            title: "Cancel"
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
