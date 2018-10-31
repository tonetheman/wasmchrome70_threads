#include <cstdio>
#include <emscripten.h>

// this is inlined into the final
// js bundle i think
// this is declaring JS in c code
// if you look at cpptojs.js you will find this code in it
EM_JS(void,msg,(const char * str), {
    var tony=1;
    console.log(tony+UTF8ToString(str));

    // this routine is defined in another place
    // the page this code is running
    definedInJS(UTF8ToString(str));
});

int main() {
    printf("main started\n");

    msg("calls out to js from cpp!");

    printf("main stopped\n");
    return 0;
}