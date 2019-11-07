import qbs

Project {
    name: "Andrij Felenko projects"

    SubProject { filePath: "baseAF/baseAF.qbs" }
    SubProject { filePath: "projects/projects.qbs" }
    SubProject { filePath: "related/related.qbs" }
    SubProject { filePath: "resources/resources.qbs" }
    SubProject { filePath: "utilities/utilities.qbs" }
}
