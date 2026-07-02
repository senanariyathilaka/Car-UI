import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: bottomBar

    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }

    TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }

    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        Item {
            id: homeTab
            width: implicitWidth
        }
        Item {
            id: discoverTab
            width: implicitWidth
        }
        Item {
            id: activityTab
            width: implicitWidth
        }
    }

    color: "black"
    height: parent.height / 12
}
