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
