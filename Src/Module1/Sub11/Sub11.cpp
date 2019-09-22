#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>
#include <PublicModule2.h>

#include <Sub11.h>


namespace Module1::Sub11
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
