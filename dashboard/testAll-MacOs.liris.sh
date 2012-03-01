#!/bin/bash


## Ctest MacOs.liris.gcc
cd ~/Sources/DGtalScripts/dashboard/ 

ctest -j 10 -S DGtal_debug_all.liris.macosX.defaultGcc.cmake  
ctest -j 10 -S DGtal_release_all.liris.macosX.defaultGcc.cmake 
ctest -j 10 -S DGtal_debug.liris.macosX.defaultGcc.64.cmake      
ctest -j 10 -S DGtal_release.liris.macosX.defaultGcc.cmake 