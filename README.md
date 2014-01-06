This repository contains scripts to help DGtal developers.

dashboard
=========
   
   Cmake/Ctest scripts to test the build on various systems. If you want to test an existing 
   configuration, just go to the folder and run:
   
       ctest -S DGtal_debug.liris.ubuntu.gcc.64.cmake

   In this example, ctest will checkout the last version of DGtal/master branch and 
   test the build with gcc 64bits in debug mode (with minimal options). Last but not 
   least, ctest will send a report to: http://my.cdash.org/index.php?project=DGtal

   (note that this command can be inserted in a "crontab").

    We encourage you to create new scripts on your system to test and report a wider class 
    of compiler/systems.
 

dev
===

   Scripts and models to create a DGtal class, a DGtal template class, a documentation,....
   You need to specify to environment variables (e.g. in your .bashrc or .profile):
     - ${DGtal}: path to your clone of the DGtal source repository
     - ${DGtalScripts}: path to your clone of the DGtalScripts repository

   Then, you can add ${DGtalScripts$}/dev/scripts to your $PATH variable.

    
   
