import QtQuick

Rectangle {
    id: rightScreen

    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }
    color: "gray"
    width: parent.width * 2 / 3
}
