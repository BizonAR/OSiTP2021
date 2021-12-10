all: hello

hello: main.obj factorial.obj hello.obj
	cl main.obj factorial.obj hello.obj /Fe: hello-2

main.obj: main.cpp
	cl /c main.cpp

factorial.obj: factorial.cpp
	cl /c factorial.cpp

hello.obj: hello.cpp
	cl /c hello.cpp

clean:
	rm -r *.obj hello-2
