import qbs

StaticLibrary {
    property string prefix: ""
    property string resourceName: ""
    name: resourceName
    targetName: "rc" + prefix + "_" + /*"m_" + */ resourceName
    destinationDirectory: "bin/libraries"

    Depends { name: "cpp" }
    Depends { name: "Qt.core" }

    readonly property var filesList: [ "**/*.cpp", "**/*.h", "*.qrc", "gui/*.qml", "*.cpp", "*.h",]

    files: filesList

    cpp.includePaths: [ '..', '../..', 'cpp', '../library', '../../library', '../../../library', 'header' ]
    cpp.cxxLanguageVersion: "c++17"
    cpp.defines:
    {
        if (qbs.buildVariant.contains("debug"))
            base.concat(["_DEBUG_"]);
        else if (qbs.buildVariant.contains("release"))
            base.concat(["_RELEASE_"]);
        return base.concat(["_LIB_STATIC_"]);
    }
}
