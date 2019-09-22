#include <iostream>
#include <cstdio>
using namespace std;
#include <PublicMain.h>
#include <PublicModule0.h>
#include <PublicModule1.h>

#include <Main.h>


namespace Core
{
	void Init() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Module0::Init();
		Module1::Init();
	}

	void Run() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Module0::Run();
		Module1::Run();
	}

	void Terminate() {
		printf("%s\n", __PRETTY_FUNCTION__);
		Module0::Terminate();
		Module1::Terminate();
	}
}


int main(int argc, char* argv[])
{
	printf("%s\n", __PRETTY_FUNCTION__);
	Core::Init();
	Core::Run();
	Core::Terminate();
	printf("\n[main] Hello world \n\n");

	return 0;
}

