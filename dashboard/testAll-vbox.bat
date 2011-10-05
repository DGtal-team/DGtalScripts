@rem CTest on MS vbox
@rem Use Visual Studio 2008
call "C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
"c:\Program Files\CMake 2.8\bin\ctest.exe" -S Z:/Sources/DGtalScripts/dashboard/DGtal_debug.vbox.nmake.cmake -V
"c:\Program Files\CMake 2.8\bin\ctest.exe" -S Z:/Sources/DGtalScripts/dashboard/DGtal_release.vbox.nmake.cmake -V
