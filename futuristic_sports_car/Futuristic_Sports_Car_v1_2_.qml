import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: floor_material
        objectName: "floor"
        baseColor: "#ff060606"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: paint_metalic_white_material
        objectName: "paint metalic white"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: paint_grey_material
        objectName: "paint grey"
        baseColor: "#ffc5b6a8"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: paint_black_material
        objectName: "paint black"
        baseColor: "#ff7c7a7a"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: glass_material
        objectName: "glass"
        baseColor: "#ff202020"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: car_backlights_material
        objectName: "car backlights"
        baseColor: "#ff9d3c3c"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: car_frontlights_material
        objectName: "car frontlights"
        baseColor: "#ffcccccc"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: mirrors_material
        objectName: "mirrors"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: paint_blue_material
        objectName: "paint blue"
        baseColor: "#ff3e83a6"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: wheel_rim_material
        objectName: "wheel rim"
        baseColor: "#ff2f2f2f"
        roughness: 0.5
    }
    PrincipledMaterial {
        id: wheel_tires_001_material
        objectName: "wheel tires.001"
        baseColor: "#ff2e2e2e"
        roughness: 0.5
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: background
            objectName: "background"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/sphere_mesh.mesh"
            materials: [floor_material]
        }
        PerspectiveCamera {
            id: camera_1_camera
            objectName: "camera 1"
            y: 125.9029769897461
            z: 1278.379150390625
            rotation: Qt.quaternion(7.54979e-08, 0, 1, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 17.744670867919922
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        PerspectiveCamera {
            id: camera_2_camera
            objectName: "camera 2"
            x: -100.5167236328125
            y: -100.14013671875
            z: -100.9189453125
            rotation: Qt.quaternion(-0.384377, -0.0536699, 0.921351, -0.0220715)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 12.875000953674316
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        PerspectiveCamera {
            id: camera_3_camera
            objectName: "camera 3"
            x: 1701.0633544921875
            y: 113.3118896484375
            z: 10.040688514709473
            rotation: Qt.quaternion(0.707062, -0.00792042, -0.707062, -0.00792042)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 17.744670867919922
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        PerspectiveCamera {
            id: camera_4_camera
            objectName: "camera 4"
            x: 1358.13134765625
            y: 383.39959716796875
            z: -1406.056396484375
            rotation: Qt.quaternion(0.921772, 0.0748163, -0.38044, 0.00212244)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 12.875000953674316
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        PerspectiveCamera {
            id: camera_5_camera
            objectName: "camera 5"
            y: 154.3489990234375
            z: -1358.5888671875
            rotation: Qt.quaternion(0.99995, 0.0100285, 1.61289e-07, 2.1918e-10)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 17.744670867919922
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        PerspectiveCamera {
            id: camera_6_camera
            objectName: "camera 6"
            x: -392.92510986328125
            y: 139.2940673828125
            z: -903.8740234375
            rotation: Qt.quaternion(0.981514, 0, 0.191391, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            fieldOfView: 14.87457275390625
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        }
        Model {
            id: car_mesh
            objectName: "car mesh"
            y: 133.70729064941406
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/car_mesh_mesh.mesh"
            materials: [paint_metalic_white_material, paint_grey_material, paint_black_material, glass_material, car_backlights_material, car_frontlights_material, mirrors_material, paint_blue_material]
        }
        Model {
            id: wheel_front_left
            objectName: "wheel front left"
            x: 170.1134033203125
            y: 70.26849365234375
            z: 283.9506530761719
            rotation: Qt.quaternion(0.704416, -0.704416, 0.0616284, 0.0616284)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/wheel_front_left_mesh.mesh"
            materials: [wheel_rim_material, wheel_tires_001_material]
        }
        Model {
            id: wheel_front_right
            objectName: "wheel front right"
            x: -170.1134033203125
            y: 70.26847839355469
            z: 283.9506530761719
            rotation: Qt.quaternion(0.704416, -0.704416, 0.0616284, 0.0616284)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/wheel_front_right_mesh.mesh"
            materials: [wheel_rim_material, wheel_tires_001_material]
        }
        Model {
            id: wheels_back
            objectName: "wheels back"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "meshes/wheels_back_mesh.mesh"
            materials: [wheel_rim_material, wheel_tires_001_material]
        }
    }

    // Animations:
}
