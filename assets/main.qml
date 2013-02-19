// Default empty project template
import bb.cascades 1.0

// creates one page with a label
NavigationPane {
    id: np
    Page {
        titleBar: TitleBar {
            title: "Lists"
        }

        actions: [
            ActionItem {
                title: "New Todo"
                ActionBar.placement: ActionBarPlacement.OnBar
                onTriggered: {
                    todoSheet.open()
                }
                shortcuts: [
                    Shortcut {
                        key: "N"
                        onTriggered: {
                            todoSheet.open()
                        }
                    }
                ]
            },
            ActionItem {
                title: "Navigate"
                ActionBar.placement: ActionBarPlacement.OnBar
                /*onTriggered: {
                    var inboxPage = inboxPageDefinition.createObject();
                    np.push(inboxPage);
                }*/
                onTriggered: {
                    np.push(testPageDefinition.createObject());
                }
            },
            ActionItem {
                title: "Test"
                ActionBar.placement: ActionBarPlacement.OnBar
                onTriggered: {
                    //test();
                    printJsonData();
                }
            },
            ActionItem {
                title: "Another Action"
            }
        ]
        
        ScrollView {
            Container {
                Container {
                    topPadding: -1.0
                    Divider {
                    }
                }
                Container {
                    id: inboxContainer
                    //                    background: Color.DarkRed
                    topPadding: 20.0
                    bottomPadding: 20.0
                    ListsComponent {
                        itemName: "Inbox"
                        nbrItems: "7"
                    }
                    gestureHandlers: [
                        TapHandler {
                            onTapped: {
                                var inboxPage = inboxPageDefinition.createObject();
                                np.push(inboxPage);
                            }
                        }
                    ]
                    onTouch: {
                        //var inboxPage = inboxPageDefinition.createObject();
                        //np.push(inboxPage);
                    }
                }
                Divider {}
                Container {
                    id: listsContainer
                    //                    background: Color.LightGray
                    topPadding: 20.0
                    bottomPadding: 20.0
                    ListsComponent {
                        id: today
                        itemName: "Today"
                        nbrItems: "5"
                    }
                    ListsComponent {
                        id: next
                        itemName: "Next"
                        nbrItems: "22"
                    }
                    ListsComponent {
                        id: scheduled
                        itemName: "Scheduled"
                        nbrItems: "13"
                    }
                    ListsComponent {
                        id: someday
                        itemName: "Someday"
                        nbrItems: "38"
                    }
                }
                Divider {}
                Container {
                    id: projectsContainer
                    //                    background: Color.DarkCyan
                    topPadding: 20.0
                    bottomPadding: 20.0
                    ListsComponent {
                        id: projects
                        itemName: "Projects"
                        nbrItems: "9"
                    }
                }
                Divider {
                }
                Container {
                    id: responsibilitiesContainer
                    //                    background: Color.White
                    topPadding: 20.0
                    bottomPadding: 20.0
                    ListsComponent {
                        itemName: "A responsibility"
                        nbrItems: ""
                    }
                    ListsComponent {
                        itemName: "Hoppsan"
                        nbrItems: ""
                    }
                    ListsComponent {
                        itemName: "My last responsibility"
                        nbrItems: ""
                    }
                }
                Divider {
                }
                Container {
                    id: logbookContainer
                    //                    background: Color.DarkGray
                    topPadding: 20.0
                    bottomPadding: 20.0
                    ListsComponent {
                        itemName: "Logbook"
                        nbrItems: "40"
                    }
                }
                Divider {
                }
                Container {
                    id: otherstuffContainer
                    //                    background: Color.DarkGreen
                    topPadding: 20.0
                    //                    bottomPadding: 20.0
                    ListsComponent {
                        itemName: "Trash"
                        nbrItems: "20"
                    }
                    ListsComponent {
                    }
                    ListsComponent {
                        nbrItems: ""
                    }
                    ListsComponent {
                    }
                    ListsComponent {
                    }
                    ListsComponent {
                    }
                    
                    ListsComponent {
                    }
                    ListsComponent {
                        nbrItems: ""
                    }
                    ListsComponent {
                    }
                    ListsComponent {
                        itemName: "Hejsan"
                    }
                    ListsComponent {
                        nbrItems: ""
                    }
                    ListsComponent {
                        nbrItems: ""
                    }
                }           
                Divider {}
            
            }
        
        }
        
        
        onCreationCompleted: {

        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: inboxPageDefinition
            source: "InboxPage.qml"
        },
        ComponentDefinition {
            id: todoInfoPageDefinition
            source: "TodoInfoPage.qml"
        },
        ComponentDefinition {
            id: testPageDefinition
            source: "TestPage.qml"
        },
        Sheet {
            id: todoSheet
            NewTodoPage {
                onCancel: todoSheet.close()
            }
        }
    ]

    function printJsonData() {
        console.log("Nu anropas printJsonData()");
        console.log(_app.jsonData);
    }

    function test() {
        console.log("Nu anropas test()");
        var myJSONObject = {
            "bindings": [
                {
                    "ircEvent": "PRIVMSG",
                    "method": "newURI",
                    "regex": "^http://.*"
                },
                {
                    "ircEvent": "PRIVMSG",
                    "method": "deleteURI",
                    "regex": "^delete.*"
                },
                {
                    "ircEvent": "PRIVMSG",
                    "method": "randomURI",
                    "regex": "^random.*"
                }
            ]
        };
        var jsObject = JSON.parse("[1, 2, 3, 4, ]");
    }
}

