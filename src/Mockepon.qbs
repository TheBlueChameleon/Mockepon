import qbs

CppApplication {
    name: "Mockepon"
    consoleApplication: true

    Export {
        Depends { name: "cpp" }
        cpp.includePaths: product.sourceDirectory
        cpp.defines: ["MYSHAREDLIB_LIBRARY"]
    }

//    Group {     // Properties for the produced executable
//        fileTagsFilter: "application"
//    }

    Group {
        name: "Principal Source Files"
        files: "**/*.?pp"
        excludeFiles: "unittests/**/*"
        //        qbs.install: true
        //        qbs.installDir: "bin"
    }
}
