# Это комментарий, который говорит, что переменная CC указывает компилятор, используемый для сборки
CC=cl
#Это еще один комментарий. Он поясняет, что в переменной CFLAGS лежат флаги, которые передаются компилятору
CFLAGS=/c /Wall

all: hello

hello: main.obj factorial.obj hello.obj
	$(CC) main.obj factorial.obj hello.obj /Fe: hello-3

main.obj: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.obj: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

hello.obj: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

clean:
	rm -r *.obj hello-3
