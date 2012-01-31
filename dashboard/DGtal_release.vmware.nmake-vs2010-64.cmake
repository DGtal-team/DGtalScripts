# mtola
set(CTEST_SITE "liris.vmware.nmake")
set(CTEST_CMAKE_GENERATOR "NMake Makefiles")
set(CTEST_BUILD_NAME "DGtal-release-VS2010-64bits.liris.vmware-Seven64bits.nmake")
set(CTEST_BUILD_CONFIGURATION Release)

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
BOOST_ROOT:FILEPATH=C:/dev64/libs/boost_1_48_0

BUILD_TESTING:BOOL=ON
WITH_ALL:BOOL=OFF
// With CairoGraphics.
WITH_CAIRO:BOOL=OFF
// With COIN3D & SOQT for 3D visualization (Qt required).
WITH_COIN3D-SOQT:BOOL=OFF
// With Gnu Multiprecision Library (GMP).
WITH_GMP:BOOL=OFF
// With Insight Toolkit ITK.
WITH_ITK:BOOL=OFF
// With GraphicsMagick++.
WITH_MAGICK:BOOL=OFF
// With LibQGLViewer for 3D visualization (Qt required).
WITH_QGLVIEWER:BOOL=OFF"
)

include(${CTEST_SCRIPT_DIRECTORY}/cmake_common.cmake)


