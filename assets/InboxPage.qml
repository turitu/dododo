import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Inbox"
    }
    Container {
        ListView {
            dataModel: XmlDataModel {
                source: "models/inboxmodel.xml"
            }
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    StandardListItem {
                        title: ListItemData.name
                        status: ListItemData.due
                    }
                }
            ]
        }
    }
}
