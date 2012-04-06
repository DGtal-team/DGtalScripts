# mtola
set(CTEST_SITE "liris.vmware.Win7")
set(CTEST_CMAKE_GENERATOR "NMake Makefiles")
set(CTEST_BUILD_NAME "Debug-VS2010-64bits")
set(CTEST_BUILD_CONFIGURATION Debug)

SET(CTEST_GIT_COMMAND "C:/Program Files (x86)/Git/bin/git.exe")

find_program(CTEST_COVERAGE_COMMAND NAMES gcov)
find_program(CTEST_MEMORYCHECK_COMMAND NAMES valgrind)

SET(dashboard_do_coverage false)
SET(dashboard_do_memcheck false)
set(dashboard_git_url "git://github.com/DGtal-team/DGtal.git")
set(dashboard_git_branch master)
set(dashboard_root_name "Dashboard/MyTests/DGtal/${CTEST_BUILD_NAME}")

SET(dashboard_cache "

// Shared lib option
BUILD_SHARED_LIBS:BOOL=OFF

// Boost root library directory
BOOST_ROOT:PATH=C:/dev64/libs/boost_1_48_0

// Cairo
CAIRO_INCLUDE_DIRS:PATH=C:/dev64/libs/cairo/include
CAIRO_LIBRAIRIES:FILEPATH=C:/dev64/libs/cairo/lib/cairo.lib

// QGLViewer
QGLVIEWER_INCLUDE_DIR:PATH=C:/dev64/libs/libQGLViewer-2.3.11
QGLVIEWER_LIBRARY_DEBUG:FILEPATH=C:/dev64/libs/libQGLViewer-2.3.11/QGLViewer/debug/QGLViewerd2.lib
QGLVIEWER_LIBRARY_RELEASE:FILEPATH=C:/dev64/libs/libQGLViewer-2.3.11/QGLViewer/release/QGLViewer2.lib

// Gmp-Mpir
GMP_INCLUDE_DIR:PATH=C:/dev64/libs/gmp-mpir/x64/Debug
GMP_LIBRARIES:FILEPATH=C:/dev64/libs/gmp-mpir/x64/Debug/mpir.lib
GMPXX_LIBRARIES:FILEPATH=C:/dev64/libs/gmp-mpir/x64/Debug/mpir.lib

BUILD_TESTING:BOOL=ON
WITH_ALL:BOOL=OFF
// With CairoGraphics.
WITH_CAIRO:BOOL=ON
// With COIN3D & SOQT for 3D visualization (Qt required).
WITH_COIN3D-SOQT:BOOL=OFF
// With Gnu Multiprecision Library (GMP).
WITH_GMP:BOOL=ON
// With Insight Toolkit ITK.
WITH_ITK:BOOL=OFF
// With GraphicsMagick++.
WITH_MAGICK:BOOL=OFF
// With LibQGLViewer for 3D visualization (Qt required).
WITH_QGLVIEWER:BOOL=ON"
)

include(${CTEST_SCRIPT_DIRECTORY}/cmake_common.cmake)


