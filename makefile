main: main.o
     ld -o HelloWorld HelloWorld.o \
	-lSystem \
	-syslibroot `xcrun -sdk macosx --show-sdk-path` \
	-e _start \
	-arch arm64

main.o: main.s
     as -o main.o main.s