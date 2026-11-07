import QtQuick
import QtQuick3D
import "../futuristic_sports_car"

View3D {
    id: carView

    environment: SceneEnvironment {
        backgroundMode: SceneEnvironment.Color
        clearColor: "#303030"
    }

    PerspectiveCamera {
        id: carCamera
        position: Qt.vector3d(-100, -100, 500)
        clipFar: 10000
    }

    DirectionalLight {
        eulerRotation.x: -30
        brightness: 2
    }

    Futuristic_Sports_Car_v1_2_ {
        id: futuristicCar
        position: Qt.vector3d(-100, -100, 0)
        scale: Qt.vector3d(1, 1, 1)
    }
}
