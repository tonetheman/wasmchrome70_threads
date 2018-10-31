

all : minray.js raytracer.js smallpt.js

minray.js : minray.c
	emcc -O2 -s minray.c -o minray.js

raytracer.js : raytracer.cpp
	emcc -O2 -s raytracer.cpp -o raytracer.js

smallpt.js : smallpt.cpp
	emcc -O2 -s ALLOW_MEMORY_GROWTH=1 -s smallpt.cpp -o smallpt.js



