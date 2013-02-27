import bb.cascades 1.0
import turitu.com 1.0

Page {
    titleBar: TitleBar {
        title: "Test List 2"
    }

    onCreationCompleted: {
        console.log("TestList2: onCreationCompleted()");
    }

    Container {
        ListView {
            //dataModel: MyModel {}
            dataModel: MyArrayModel {
            }
            /*
            listItemComponents: [
                ListItemComponent {
                    type: "todoItem"
                    StandardListItem {
                        title: ListItemData.name
                        description: ListItemData.due
                    }
                }
            ]*/
            // Treat outer level as header, inner level as item
            /*function itemType(data, indexPath) {
                console.log("itemType()");
                return "item";
            }/*
            /*
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
            }*/
        }
    }
}
