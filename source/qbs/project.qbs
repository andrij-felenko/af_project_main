import qbs

CppApplication {
    property string prefix: ""
    property string projectName: ""
    name: prefix + "_" + projectName
    targetName: projectName

    destinationDirectory: "bin/" + prefix + "/" + projectName
    cpp.cxxLanguageVersion: "c++17"

    property var filesList: [
        "*h", "*/*.h",
        "*.hpp", "*/*.hpp",
        "*.c++", "*/*.c++",
        "*.chh", "*/*.chh",
        "*.cpp", "*/*.cpp",
        "*.qml", "*/*.qml",
        "*.qrc", "*/*.qrc",
    ]
    files: filesList
}
