import qbs
import "template_module.qbs" as ModuleTemplate

ModuleTemplate {
    name: "preload"
//    destinationDirectory: "bin" + "/modules/" + moduleName
    targetName: moduleName + "_preload"
}
