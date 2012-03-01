#!/bin/bash


## Ctest MacOs.liris.gcc
cd ~/Sources/DGtalScripts/dashboard/ 

ctest -S DGtal_debug_all.liris.macosX.defaultGcc.cmake  
ctest -S DGtal_release_all.liris.macosX.defaultGcc.cmake 
ctest -S DGtal_debug.liris.macosX.defaultGcc.64.cmake      
ctest -S DGtal_release.liris.macosX.defaultGcc.cmake 