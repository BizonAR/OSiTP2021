CC=cl
CFLAGS=/c /Wall
LDFLAGS=
SOURCES=main.cpp hello.cpp factorial.cpp
OBJECTS=$(SOURCES:.cpp=.obj)
EXECUTABLE=hello-4

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) /Fe: $@

.cpp.obj:
	$(CC) $(CFLAGS) $< /Fe: $@
