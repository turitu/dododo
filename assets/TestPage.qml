import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "Test page"
    }

    keyListeners: [
        KeyListener {
            onKeyPressed: {
                console.log("Nu kom det ett onKeyPressed: " + event.key);
            }
        }
    ]
    Container {
    }
}
