

all : minray.c
	emcc -O2 -s minray.c -o minray.js


