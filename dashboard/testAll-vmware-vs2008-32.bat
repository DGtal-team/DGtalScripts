@rem CTest on VMWare (Seven 64 bits)
@rem Use Visual Studio 2008 Express
@rem Results: http://liris.cnrs.fr/dgtal/CDash/index.php?project=DGtal
call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
"C:\dev32\utils\cmake-2.8.7-win32-x86\bin\ctest.exe" -S C:\dev32\dgtal\DGtalScripts\dashboard\DGtal_release.vmware.nmake-vs2008-32.cmake -V
"C:\dev32\utils\cmake-2.8.7-win32-x86\bin\ctest.exe" -S C:\dev32\dgtal\DGtalScripts\dashboard\DGtal_debug.vmware.nmake-vs2008-32.cmake -V
