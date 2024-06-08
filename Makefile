# Target to run the executable
start: main-compile
	./bin/main

# Target to compile main.c
main-compile: main.c
	gcc ./src/main.c -o ./bin/main

# Target to create main.c
main.c: 
	@if [ ! -f ./src/main.c ]; then echo "int main() { return 0; }" > main.c; fi
# Phony targets to avoid conflict with file names
.PHONY: start main-compile ./src/main.c

