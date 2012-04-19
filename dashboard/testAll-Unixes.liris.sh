#!/bin/bash


## Ctest liris.gcc
cd ~/Sources/DGtalScripts/dashboard/ 

ctest -j 10 -S DGtal_debug_all.liris.ubuntu.gcc.64.cmake  
ctest -j 10 -S DGtal_release_all.liris.ubuntu.gcc.64.cmake 
ctest -j 10 -S DGtal_debug.liris.ubuntu.gcc.64.cmake      
ctest -j 10 -S DGtal_release.liris.ubuntu.gcc.64.cmake 


ctest -j 10 -S DGtal_debug_all.liris.ubuntu.clang++.64.cmake  
ctest -j 10 -S DGtal_release_all.liris.ubuntu.clang++.64.cmake 
ctest -j 10 -S DGtal_debug.liris.ubuntu.clang++.64.cmake      
ctest -j 10 -S DGtal_release.liris.ubuntu.clang++.64.cmake 


ctest -j 10 -S DGtal_debug_all.liris.ubuntu.g++-4.4.64.cmake  
ctest -j 10 -S DGtal_release_all.liris.ubuntu.g++-4.4.64.cmake 
ctest -j 10 -S DGtal_debug.liris.ubuntu.g++-4.4.64.cmake      
ctest -j 10 -S DGtal_release.liris.ubuntu.g++-4.4.64.cmake 


ctest -j 10 -S DGtal_debug_all.liris.ubuntu.g++-4.6.64.cmake  
ctest -j 10 -S DGtal_release_all.liris.ubuntu.g++-4.6.64.cmake 
ctest -j 10 -S DGtal_debug.liris.ubuntu.g++-4.6.64.cmake      
ctest -j 10 -S DGtal_release.liris.ubuntu.g++-4.6.64.cmake

ctest -j 10 -S DGtal_debug_all.liris.ubuntu.clang.64.cmake  
ctest -j 10 -S DGtal_release_all.liris.ubuntu.clang.64.cmake 

