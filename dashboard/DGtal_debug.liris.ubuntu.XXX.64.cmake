#  dcoeurjo
set(CTEST_SITE "liris.ubuntu.64")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_NAME "DGtal-debug.ubuntu.XXX.64")
set(CTEST_BUILD_CONFIGURATION Debug)
SET(CTEST_BUILD_FLAGS -j10)


SET(dashboard_do_coverage false)
SET(dashboard_do_memcheck false)
set(dashboard_git_url "git://github.com/DGtal-team/DGtal.git")
set(dashboard_git_branch master)
set(dashboard_root_name   "dashboard/MyTests/DGtal/${CTEST_BUILD_NAME}")

SET(dashboard_cache "


//CXX compiler.
CMAKE_CXX_COMPILER:FILEPATH=/usr/bin/XXX

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



