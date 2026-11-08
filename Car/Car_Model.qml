import QtQuick
import QtQuick3D
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
        id: camera_2_camera
        objectName: "camera 2"
        x: 3572.418
        y: 1768.176
        eulerRotation.z: 3.71935
        eulerRotation.y: 50.16142
        eulerRotation.x: -19.10856
        z: 2986.57788
        scale.x: 100
        scale.y: 100
        scale.z: 100
        fieldOfView: 12.875000953674316
        fieldOfViewOrientation: PerspectiveCamera.Horizontal
    }

    DirectionalLight {
        eulerRotation.x: 2000
        eulerRotation.y: 1200
        eulerRotation.z: 0
        brightness: 2
    }

    Futuristic_Sports_Car_v1_2_ {
        id: futuristicCar
        position: Qt.vector3d(0, 0, 0)
        scale: Qt.vector3d(1, 1, 1)
        eulerRotation: Qt.vector3d(0, 0, 0)
    }
}
