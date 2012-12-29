import bb.cascades 1.0

Container {
    id: todoContainer
    layout: DockLayout {
    }
    property alias itemTitle: titleLabel.text
    property alias due: dueLabel.text

    //background: Color.LightGray

    Container {
        
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }

        topPadding: 30.0
        bottomPadding: 30.0

        leftPadding: 16.0

        CheckBox {
            id: completed
            verticalAlignment: VerticalAlignment.Center
            onCheckedChanged: {
                if (checked) {
                    todoContainer.background = Color.LightGray;
                    titleLabel.textStyle.color = Color.DarkGray;
                    dueLabel.textStyle.color = Color.DarkGray;
                }
                else {
                    todoContainer.background = SystemDefaults.Paints.ContainerBackground;
                    titleLabel.textStyle.color = SystemDefaults.Paints.DefaultText;
                    dueLabel.textStyle.color = SystemDefaults.Paints.DefaultText;
                }
            }

        }
        /*Label {
         text: "Check"
         layoutProperties: StackLayoutProperties {
         spaceQuota: 2.0
         }
         verticalAlignment: VerticalAlignment.Bottom
         }*/
        Label {
            id: titleLabel
            text: "Ett todo item"
            textStyle {
                base: SystemDefaults.TextStyles.PrimaryText     
            }
            verticalAlignment: VerticalAlignment.Center
            layoutProperties: StackLayoutProperties {
                spaceQuota: 7.0
            }    
        }
        Label {
            id: dueLabel
            textStyle {
                base: SystemDefaults.TextStyles.SubtitleText
            }
            text: "X-info"
            layoutProperties: StackLayoutProperties {
                spaceQuota: 2.0
            }
            verticalAlignment: VerticalAlignment.Center
        }  
    }
    Divider {
    }
}
