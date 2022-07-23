#!/bin/bash

set -e

# Check for & make directories
time test -d _build || mkdir _build
time test -d _install || mkdir _install

# Move to build folder
time cd _build

# Run CMake Configurations
time cmake ../ -DCMAKE_INSTALL_PREFIX=../_install -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DWITH_WARNINGS=1 -DTOOLS=0 -DSCRIPTS=static -DMODULES=static

# Compile the Project
time make -j 6
