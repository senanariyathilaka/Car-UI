import QtQuick
import QtQuick.Controls
import "UI/BottomBar"
import "UI/RightScreen"
import "UI/LeftScreen"

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Main Screen"

    BottomBar {
        id: bottomBar
    }

    RightScreen {
        id: rightScreen
    }
}
