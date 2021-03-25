import qbs
import "project.qbs" as ProjectQbs

ProjectQbs {
    prefix: "app"

    Depends { name: "Qt"; submodules: "core" }
}
