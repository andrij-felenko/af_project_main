import qbs
import "project.qbs" as ProjectQbs

ProjectQbs {
    prefix: "util"

    Depends { name: "Qt.core" }
}
