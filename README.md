# Emprevious3
Previous 2.9 - Emscripten

## Configuring and compiling with emscripten

	mkdir -p build/files
	# Copy your tos.img to build/files/
	cd build
	emcmake cmake ..
	cmake --build . -j$(getconf _NPROCESSORS_ONLN)

The resulting Previous.html can't be used directly, you must provide it via a webserver to your browser.
A simple way is to use "python3 -m http.server" as a minimalist webserver for testing it locally.

## Example

It's built in embuild/src/

Rebuild it yourself with:

    rm -rf CMake*
    emcmake cmake ..
    cmake --build . -j$(getconf _NPROCESSORS_ONLN)

You can serve this directory with Python's HTTP Server like so:

    python3 -m http.server -d embuild/src/

## Notes

This only builds on ARM64 currently. Add the X86_64 arch back in CMakeLists.txt if you want to build there.

## Bugs

It currently throws OOM errors loading the WASM. Not sure if enabling dynamic growth and setting an initial allocation is the fix. 
