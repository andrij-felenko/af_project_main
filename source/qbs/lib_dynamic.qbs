import qbs
import qbs.File
import qbs.FileInfo
import qbs.TextFile

DynamicLibrary {
    property string libraryName: ""
    name: libraryName
    destinationDirectory: "bin" + "/libraries"
    targetName: /*"m_" + */libraryName + "_" + qbsVersionProbe.version + "." + qbsVersionProbe.versionBuild
//    bundle.isBundle: false

    Depends { name: "cpp" }
    Depends { name: "Qt.core" }

    readonly property var filesList: [ "**/*.cpp", "**/*.h", "*.qrc", "**/*.qml", "*.cpp", "*.h",]

    files: filesList

    cpp.includePaths: [ '..', '../..' ]
    cpp.cxxLanguageVersion: "c++17"
    cpp.defines:
    {
        if (qbs.buildVariant.contains("debug"))
            base.concat(["_DEBUG_"]);
        else if (qbs.buildVariant.contains("release"))
            base.concat(["_RELEASE_"]);
        return base.concat(["_LIB_DYNAMIC_"]);
    }

    Properties {
        condition: qbs.targetOS.contains("macos")
        cpp.frameworks: ["IOKit", "CoreFoundation"]

        cpp.cxxFlags: base.concat(["-Werror=return-type"])
        cpp.driverFlags: base.concat(project.profiling ? ["-pg"] : []).concat(project.sanitize ? ["-fsanitize=address"] : [])
        cpp.minimumOsxVersion: "10.7"
    }

    Probe {
        id: qbsVersionProbe
        condition: qbs.buildVariant == "release"
        property var lastModified: File.lastModified(versionFilePath)
        property string versionFilePath: FileInfo.joinPaths(path, '..',
                                                            qbs.targetOS.contains("linux") ? "linux_build" : "",
                                                            qbs.targetOS + "_" + qbs.buildVariant + "_version.ini")
        property string versionBuild: "0"
        property string version: "1.0"
        configure: {
            var tf = new TextFile(versionFilePath, TextFile.ReadWrite);
            try {
                versionBuild = tf.readAll().trim();
//                found = !!version;
//                if (versionBuild.length === 0 || versionBuild === "NaN")
//                    versionBuild = "0"
            } finally {
                tf.close();
            }
        }
    }
}
