import qbs

StaticLibrary {
    Depends { name: "cpp" }
    Depends { name: "Qt.core" }

    readonly property var filesList: [ "cpp/*.cpp", "cpp/*.h", "*.qrc", ]

    files: filesList

    cpp.includePaths: ['..', '../Template']
    cpp.cxxLanguageVersion: "c++14"
}
