import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Inbox"
    }
    actions: [
        ActionItem {
            title: "New Todo"
            ActionBar.placement: ActionBarPlacement.OnBar
            onTriggered: {
                todoSheet.open()
            }
        },
        ActionItem {
            title: "Another Action"
        },
        MultiSelectActionItem {
            
        }
    ]
    Container {
        ListView {
            dataModel: XmlDataModel {
                source: "models/inboxmodel.xml"
            }
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    /*StandardListItem {
                        title: ListItemData.name
                        status: ListItemData.due
                    }*/
                    TodoListItem {
                        itemTitle: ListItemData.name
                        due: ListItemData.due
                    }
                }
            ]
        }
    }
    attachedObjects: [
        Sheet {
            id: todoSheet
            NewTodoPage {
                onCancel: todoSheet.close()
            }
        }
    ]
}
