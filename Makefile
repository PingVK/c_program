CC=gcc
objects=obj/main.o obj/add.o obj/sub.o obj/mul.o obj/div.o
target=bin/main

$(target):$(objects)
	$(CC) -fprofile-arcs -ftest-coverage -o $(target) $(objects)
obj/main.o:src/main.c
	$(CC) -fprofile-arcs -ftest-coverage -o $@ -c $< -I  include
obj/add.o:src/add.c
	$(CC) -fprofile-arcs -ftest-coverage -o $@ -c $<
obj/sub.o:src/sub.c
	$(CC) -fprofile-arcs -ftest-coverage -o $@ -c $<
obj/mul.o:src/mul.c
	$(CC) -fprofile-arcs -ftest-coverage -o $@ -c $<
obj/div.o:src/div.c
	$(CC) -fprofile-arcs -ftest-coverage -o $@ -c $<
clean:
	rm -rf $(objects)
