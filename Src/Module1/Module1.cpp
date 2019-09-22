#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>
#include <PublicModule2.h>

#include <PrivateSub10.h>
#include <PrivateSub11.h>

#include <Module1.h>


namespace Module1
{
	void Init() {
		printf("%s", __func__);
		Sub10::Init();
		Sub11::Init();
	}

	void Run() {
		printf("%s", __func__);
		Sub10::Run();
		Sub11::Run();
	}

	void Terminate() {
		printf("%s", __func__);
		Sub10::Terminate();
		Sub11::Terminate();
	}
}
