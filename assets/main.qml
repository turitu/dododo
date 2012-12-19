// Default empty project template
import bb.cascades 1.0

// creates one page with a label
Page {
    ScrollView {
        Container {
            ListsComponent {
                itemName: "Inbox"
                nbrItems: "7"
            }
            ListsComponent {
                itemName: "Today"
                nbrItems: "5"
            }
            ListsComponent {
                itemName: "Next"
                nbrItems: "22"
            }
            ListsComponent {
                itemName: "Scheduled"
                nbrItems: "13"
            }            
            ListsComponent {
                itemName: "Someday"
                nbrItems: "38"
            }            
            ListsComponent {
                itemName: "Projects"
                nbrItems: "9"
            }            
            ListsComponent {
                itemName: "Logbook"
                nbrItems: "40"
            }            
            ListsComponent {
                itemName: "Trash"
                nbrItems: "20"
            }  
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            ListsComponent {}
            
        }
      
    }
    
/*    
    Container {
        layout: DockLayout {}
        //layout: StackLayout {}
        ListsComponent{}
        Label {
            text: qsTr("Hello World")
            textStyle.base: SystemDefaults.TextStyles.BigText
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
        }
    }
*/
}

