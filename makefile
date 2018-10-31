

all : minray.js raytracer.js

minray.js : minray.c
	emcc -O2 -s minray.c -o minray.js

raytracer.js : raytracer.cpp
	emcc -O2 -s raytracer.cpp -o raytracer.js



