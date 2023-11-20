all:
	gcc -Wall -g -o elfloader elf_loader.c main.c wheelc/list.c -ldl -lpthread
	gcc -shared -fPIC -lpthread -o hello.so hello.c


clean:
	rm -rf *.o wheelc/*.o elfloader
	rm -rf hello.o hello.so

run:
	./elfloader ./hello.so main1

test:
	gcc -Wall -g -o elfloader elf_loader.c main.c wheelc/list.c -ldl -lpthread
	gcc -shared -fPIC -lpthread -o hello.so hello.c
	./elfloader ./hello.so main1
