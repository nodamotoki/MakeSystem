#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>

#include <PrivateSub00.h>
#include <PrivateSub01.h>

#include <Module0.h>


namespace Module0
{
	void Init() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Sub00::Init();
		Sub01::Init();
	}

	void Run() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Sub00::Run();
		Sub01::Run();
	}

	void Terminate() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Sub00::Terminate();
		Sub01::Terminate();
	}
}
