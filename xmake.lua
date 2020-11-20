add_rules("mode.release", "mode.debug")

add_repositories("localrepo c:/dev/xmake-repo")

includes("src/gui")

add_requires("SDL")

target("cap32")
    set_kind("binary")
    add_defines("WIN32")
    add_includedirs("./src", "c:/dev/msys64/mingw64/include")
    add_packages("SDL")
    add_deps("gui")
    add_includedirs("./src/gui/includes/")
    add_files("main.cpp", "src/*.cpp")
    set_rundir("$(projectdir)")
