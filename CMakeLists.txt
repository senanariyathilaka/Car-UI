cmake_minimum_required(VERSION 3.5)

project(hello_world VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Widgets Quick Qml)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Widgets Quick Qml)

set(PROJECT_SOURCES
    main.cpp


)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)

    qt_add_executable(hello_world
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )

    qt_add_qml_module(hello_world
        URI HelloWorld
        VERSION 1.0
        QML_FILES
            Main.qml
            UI/BottomBar/BottomBar.qml
            UI/RightScreen/RightScreen.qml
            UI/LeftScreen/LeftScreen.qml
    )

else()

    if(ANDROID)

        add_library(hello_world SHARED
            ${PROJECT_SOURCES}
        )

    else()

        add_executable(hello_world
            ${PROJECT_SOURCES}
        )

    endif()

endif()

target_link_libraries(hello_world PRIVATE
    Qt${QT_VERSION_MAJOR}::Widgets
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
)

set_target_properties(hello_world PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING
        ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE FALSE
)

install(TARGETS hello_world
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

if(QT_VERSION_MAJOR EQUAL 6)
    qt_finalize_executable(hello_world)
endif()