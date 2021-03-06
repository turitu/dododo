import bb.cascades 1.0
import turitu.com 1.0

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
            /*dataModel: XmlDataModel {
                source: "models/inboxmodel.xml"
            }*/
            /*dataModel: GroupDataModel {
                objectName: "listModelXX"
            }*/
            dataModel: inboxModel
            //dataModel: cppModel
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
            onTriggered: {
                //np.pop();
                //np.push(TodoInfoPage);
                var todoInfoPage = todoInfoPageDefinition.createObject();
                np.push(todoInfoPage);
            }
        }
    }
    attachedObjects: [
        MyModel {
            id: cppModel
        },
        Sheet {
            id: todoSheet
            NewTodoPage {
                onCancel: todoSheet.close()
            }
        }
    ]
}
