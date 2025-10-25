### uname-windows
> A uname utility which prints "Windows" for Windows.

I use this on my Windows system when I want to use `make` as provided by [MinGW 64](https://github.com/StephanTLavavej/mingw-distro)
but customize the build and clean actions for Windows.

For example:

```Makefile
rm=rm
exe=

uname := $(shell uname)

# https://github.com/stpettersens/uname-windows
ifeq ($(uname),Windows)
	rm=del
	exe=.exe
endif

make:
	tcc helloworld.c -o helloworld$(exe)

clean:
	$(rm) helloworld$(exe)
```
