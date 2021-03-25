import qbs

Project {
    name: "list of projects"

    references: [
        "app_swan/test.qbs",
    ]

    SubProject { filePath: "_currency/currency.qbs" }
    SubProject { filePath: "_eshi/eshi.qbs" }
    SubProject { filePath: "_pocketMunnin/pocket_munnin.qbs" }
    SubProject { filePath: "_tsmok/tsmok.qbs" }
//    SubProject { filePath: "_warehouseTsd/warehouse_tsd.qbs" }
}
