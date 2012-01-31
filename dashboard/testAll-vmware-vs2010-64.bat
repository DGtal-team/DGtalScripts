@rem CTest on VMWare (Seven 64 bits)
@rem Use Visual Studio 2010 Express
@rem Results: http://liris.cnrs.fr/dgtal/CDash/index.php?project=DGtal
call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /Release /x64
"C:\dev64\utils\cmake-2.8.7-win32-x86\bin\ctest.exe" -S C:\dev64\dgtal\DGtalScripts\dashboard\DGtal_release.vmware.nmake-vs2010-64.cmake -V
call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /Debug /x64
"C:\dev64\utils\cmake-2.8.7-win32-x86\bin\ctest.exe" -S C:\dev64\dgtal\DGtalScripts\dashboard\DGtal_debug.vmware.nmake-vs2010-64.cmake -V
