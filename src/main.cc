// Copyright [2015] <Chafic Najjar>

#include "src/pong.h"
#undef main
int main(int argc, char* argv[]) {
    Pong pong(argc, argv);
    pong.execute();
}
