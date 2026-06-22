import QtQuick

Rectangle {
    id: leftScreen
    anchors {
        left: parent.left
        right: rightScreen.left
        bottom: bottomBar.top
        top: parent.top
    }
    color: "blue"
    width: parent.width * 1 / 3
}
