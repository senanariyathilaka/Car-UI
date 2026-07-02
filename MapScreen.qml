import QtQuick
import QtQuick.Controls
import "UI/LeftScreen"
import "UI/BottomBar"
import "Map/Gps"

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Map Screen"

    BottomBar {
        id: bottomBar
    }

    LeftScreen {
        id: leftScreen
    }

    Gps {
        id: gps
    }
}
