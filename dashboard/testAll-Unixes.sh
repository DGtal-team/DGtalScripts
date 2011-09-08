#!/bin/bash


## Ctest liris.gcc

ctest -S DGtal_debug_all.liris.ubuntu.gcc.64.cmake  &
ctest -S DGtal_release_all.liris.ubuntu.gcc.64.cmake &
ctest -S DGtal_debug.liris.ubuntu.gcc.64.cmake      &
ctest -S DGtal_release.liris.ubuntu.gcc.64.cmake &
