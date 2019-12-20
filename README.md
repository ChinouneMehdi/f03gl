F03GL -- modules for using the OpenGL graphics library from Fortran

  Copyright 2009 Anthony Stone and Aleksandar Donev

To use this library you need a Fortran 2003 compiler.

```
git clone https://github.com/ChinouneMehdi/f03gl
cd f03gl
mkdir build
cd build
cmake ..
make
make test
```
You will need to quit from each test before the next one will run. The first
three tests are rather boring, but in the last three you can bring up a menu
with a right mouse click and change some of the properties of the display.
From the f90 code you can see how to do similar things in your own code. These
examples are slightly-modified versions of the examples provided with Bill
Mitchell's f90gl package http://math.nist.gov/f90gl .