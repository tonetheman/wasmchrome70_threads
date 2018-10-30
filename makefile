

all : minray.js
	emcc -O2 -s minray.c -o minray.js


