import qbs

CppApplication {
    name: "Mockepon-Unittests"
    consoleApplication: true
    targetName: "Mockepon-Unittest"

    Export {
        Depends { name: "cpp" }
        cpp.includePaths: product.sourceDirectory
        cpp.defines: ["MYSHAREDLIB_LIBRARY"]
    }

    Group {
        name: "Unittests Sources"
        files: "**/*.?pp"
        //        qbs.install: true
        //        qbs.installDir: "bin"
    }
}
