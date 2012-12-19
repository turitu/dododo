import bb.cascades 1.0

Container {
    property alias imageSrc: listIcon.imageSource
    property alias itemName: name.text
    property alias nbrItems: nbrItems.text
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
    }
    ImageView {
        id: listIcon
        imageSource: ""
    }
    Label {
        text: "Ikon"
        layoutProperties: StackLayoutProperties {
            spaceQuota: 2.0
        }
    }
    Label {
        id: name
        text: "Tjo"
        layoutProperties: StackLayoutProperties {
            spaceQuota: 7.0
        }    
    }
    Label {
        id: nbrItems
        text: "Tjipp"
        layoutProperties: StackLayoutProperties {
            spaceQuota: 2.0
        }
    }
}