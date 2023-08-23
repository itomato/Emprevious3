rm -rf CMake*
emcmake cmake ..
cmake --build . -j$(getconf _NPROCESSORS_ONLN)
