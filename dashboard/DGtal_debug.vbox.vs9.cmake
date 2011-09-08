#  dcoeurjo
set(CTEST_SITE "liris.vbox.vs9")
set(CTEST_CMAKE_GENERATOR "Visual Studio 9 2008")
set(CTEST_BUILD_NAME "DGtal-debug.liris.vbox.vs9")
set(CTEST_BUILD_CONFIGURATION Debug)
SET(CTEST_BUILD_FLAGS -j10)

SET(CTEST_GIT_COMMAND "C:/cygwin/bin/git.exe")


find_program(CTEST_COVERAGE_COMMAND NAMES gcov)
find_program(CTEST_MEMORYCHECK_COMMAND NAMES valgrind)


SET(dashboard_do_coverage false)
SET(dashboard_do_memcheck false)
set(dashboard_git_url "git://github.com/DGtal-team/DGtal.git")
set(dashboard_git_branch master)
set(dashboard_root_name   "Dashboard/MyTests/DGtal/${CTEST_BUILD_NAME}")

SET(dashboard_cache "
//Path to a file.
Boost_INCLUDE_DIR:PATH=C:/Program Files/boost/boost_1_47

//Boost library directory
Boost_LIBRARY_DIRS:FILEPATH=C:/Program Files/boost/boost_1_47/lib

//Boost diagnostic define
Boost_LIB_DIAGNOSTIC_DEFINITIONS:STRING=-DBOOST_LIB_DIAGNOSTIC

//The Boost PROGRAM_OPTIONS library
Boost_PROGRAM_OPTIONS_LIBRARY:FILEPATH=optimized;C:/Program Files/boost/boost_1_47/lib/libboost_program_options-vc90-mt-1_47.lib;debug;C:/Program Files/boost/boost_1_47/lib/libboost_program_options-vc90-mt-gd-1_47.lib

//Path to a library.
Boost_PROGRAM_OPTIONS_LIBRARY_DEBUG:FILEPATH=C:/Program Files/boost/boost_1_47/lib/libboost_program_options-vc90-mt-gd-1_47.lib

//Path to a library.
Boost_PROGRAM_OPTIONS_LIBRARY_RELEASE:FILEPATH=C:/Program Files/boost/boost_1_47/lib/libboost_program_options-vc90-mt-1_47.lib

BUILD_TESTING:BOOL=ON
WITH_ALL:BOOL=OFF
//With CairoGraphics.
WITH_CAIRO:BOOL=OFF
//With COIN3D & SOQT for 3D visualization (Qt required).
WITH_COIN3D-SOQT:BOOL=OFF
//With Gnu Multiprecision Library (GMP).
WITH_GMP:BOOL=OFF
//With Insight Toolkit ITK.
WITH_ITK:BOOL=OFF
//With GraphicsMagick++.
WITH_MAGICK:BOOL=OFF
//With LibQGLViewer for 3D visualization (Qt required).
WITH_QGLVIEWER:BOOL=OFF"
)

include(${CTEST_SCRIPT_DIRECTORY}/cmake_common.cmake)


