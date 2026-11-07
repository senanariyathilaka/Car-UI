import QtQuick
import QtQuick.Controls
import QtQuick3D
import "UI/BottomBar"
import "UI/RightScreen"
import "UI/LeftScreen"
import "futuristic_sports_car"
import "Car"

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Main Screen"

    BottomBar {
        id: bottomBar
    }

    LeftScreen {
        id: leftScreen
    }

    Car_Model {
        id: carView

        anchors {
            left: leftScreen.right
            right: parent.right
            top: parent.top
            bottom: bottomBar.top
        }

        z: 10

        Component.onCompleted: {
            console.log("Car viewport width:", width);
            console.log("Car viewport height:", height);
        }
    }
}
