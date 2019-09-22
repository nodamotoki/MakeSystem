#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>

#include <PrivateSub10.h>
#include <PrivateSub11.h>

#include <Module1.h>


namespace Module1
{
	void Init() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Sub10::Init();
		Sub11::Init();
	}

	void Run() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Sub10::Run();
		Sub11::Run();
		printf("\nHello Module1::Run world\n\n");
	}

	void Terminate() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Sub10::Terminate();
		Sub11::Terminate();
	}
}
