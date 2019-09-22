#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>
#include <PublicModule2.h>

#include <Sub01.h>


namespace Module0::Sub01
{
	void Init() {
		printf("%s", __func__);
	}

	void Run() {
		printf("%s", __func__);
	}

	void Terminate() {
		printf("%s", __func__);
	}
}
