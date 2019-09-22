#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>
#include <PublicModule2.h>

#include <Sub10.h>


namespace Module1::Sub10
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
