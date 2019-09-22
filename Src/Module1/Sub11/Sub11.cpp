#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>

#include <Sub11.h>


namespace Module1::Sub11 {

void Init() {
	printf("%s\n", __PRETTY_FUNCTION__);
}

void Run() {
	printf("%s\n", __PRETTY_FUNCTION__);
}

void Terminate() {
	printf("%s\n", __PRETTY_FUNCTION__);
}

}
