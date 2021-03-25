import qbs

StaticLibrary {
    property string libraryName: ""
    name: "lib_" + libraryName
    targetName: /*"m_" + */"lib_" + libraryName + "_" + version

    Depends { name: "cpp" }
    Depends { name: "Qt.core" }

    readonly property var filesList: [ "**/*.cpp", "**/*.h", "*.qrc", "gui/*.qml", "*.cpp", "*.h"]

    files: filesList

    cpp.includePaths: [ '.', '..', '../..', 'cpp', '../library', '../../library', '../../../library', '../../../../library', 'header', 'src' ]
    cpp.cxxLanguageVersion: "c++17"
    cpp.defines:
    {
        if (qbs.buildVariant.contains("debug"))
            /*return */base.concat(["_DEBUG_"]);
        else if (qbs.buildVariant.contains("release"))
            /*return */base.concat(["_RELEASE_"]);
        return base.concat(["_LIB_STATIC_"]);
    }
}
