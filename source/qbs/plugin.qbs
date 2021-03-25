import qbs
import qbs.File
import qbs.FileInfo
import qbs.TextFile

DynamicLibrary {
    property string moduleName: ""
    property string moduleVersion: "_" + qbsVersionProbe.version + "." + qbsVersionProbe.versionBuild
    name: moduleName
    destinationDirectory: "bin" + (qbs.targetOS.contains("linux") ? "/local" : "") + "/plugins"
    targetName: moduleName// + moduleVersion
//    bundle.isBundle: false

    Depends { name: "cpp" }
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick"] }
    Depends { name: "lib_baseAF" }

    readonly property var filesList: [ "*.cpp", "**/*.cpp", "*.h", "**/*.h", "**.qrc" ]

    files: filesList

    cpp.includePaths: [ '..', '../..', '../library', '../../library', '../../../library', 'header' ]
    cpp.cxxLanguageVersion: "c++14"
    cpp.compilerIncludePaths: [ '**' ]
    cpp.defines: ["_MODULE_", qbs.buildVariant.contains("debug") ? "_DEBUG_" : "_RELEASE_"];

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
