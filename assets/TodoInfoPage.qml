 import bb.cascades 1.0


Page {
    signal cancel()
    property bool bEditing: false
    id: newTodoPage
    titleBar: TitleBar {
        title: "Info"
        acceptAction: ActionItem {
            id: editAction
            title: "Edit"
            onTriggered: {
                if (bEditing) {
                    // "Done" button was clicked
                    bEditing = false; 
                    todoTitle.editable = false;
                    todoDescription.editable = false;
                    title = "Edit"
                } else {
                    bEditing = true;
                    todoTitle.editable = true;
                    todoDescription.editable = true;
                    title = "Done"
                }

            }
        }
    }
    ScrollView {
        Container {
            topPadding: 15.0
            leftPadding: 15.0
            rightPadding: 15.0
            /*Container {
                topPadding: 20.0
                //leftPadding: 20.0
                rightPadding: 20.0
                bottomPadding: 20.0
                background: Color.create("#112255ee")
                Label {
                    id: title
                    text: "Make a rental car reservation"
                    textStyle.fontWeight: FontWeight.Bold
                    topMargin: 0.0
                
                } 

                Label {
                    id: description
                    text: "När vi kommer fram till destinationen så måste vi ju såklart hyra en bil. Med denna ska vi ta oss från punkt A till punkt B. Till en så låg kostnad som möjligt. Innan vi åker så måste vi kolla oljan och lufttrycket i däcken."
                    multiline: true
                    topMargin: 0.0
                }
            }*/
            Container {
                topPadding: 20.0
                bottomPadding: 20.0
                leftPadding: 10.0
                rightPadding: 10.0
                background: Color.create("#112255ee")
                TextArea {
                    id: todoTitle
                    editable: false
                    text: "Make a rental car reservation"
                    textStyle.fontWeight: FontWeight.Bold
                }

                TextArea {
                    id: todoDescription
                    editable: false
                    text: "När vi kommer fram till destinationen så måste vi ju såklart hyra en bil. Med denna ska vi ta oss från punkt A till punkt B. Till en så låg kostnad som möjligt. Innan vi åker så måste vi kolla oljan och lufttrycket i däcken."
                
                }
            }
        }
    }
    attachedObjects: [

    ]

}

