#!/bin/bash


## Ctest liris.gcc
cd ~/Sources/DGtalScripts/dashboard/ 

ctest -j 10 -S DGtal_debug_all.liris.ubuntu.gcc.64.cmake  
ctest -j 10 -S DGtal_release_all.liris.ubuntu.gcc.64.cmake 
ctest -j 10 -S DGtal_debug.liris.ubuntu.gcc.64.cmake      
ctest -j 10 -S DGtal_release.liris.ubuntu.gcc.64.cmake 
