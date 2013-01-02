import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Test List"
    }

    Container {
        attachedObjects: [
            GroupDataModel {
                id: listModel
                objectName: "listModel"
            }
        ]
        ListView {
            dataModel: listModel
            listItemComponents: [
                ListItemComponent {
                    type: "todoItem"
                    StandardListItem {
                        title: ListItemData.name
                        description: ListItemData.due
                    }
                }
            ]
            function itemType(data, indexPath) {
                if (indexPath.length == 1) {
                    // If the index path contains a single integer, the item
                    // is a "header" type item
                    return "header";
                } else {
                    // If the index path contains more than one integer, the
                    // item is a "listItem" type item
                    return "todoItem";
                }
            }
        }
    }
}
